#!/usr/bin/python
import json
import sys
import signal
import subprocess
import os

pid_file_path = os.environ.get("XDG_RUNTIME_DIR", "/tmp") + "/break-reminder.pid"

script_dir = os.path.dirname(os.path.abspath(__file__))
timer_path = os.path.join(script_dir, "work_timer.py")


def get_pid() -> int | None:
    try:
        with open(pid_file_path, "r") as f:
            pid = int(f.read().strip())
        os.kill(pid, 0)
        return pid
    except OSError:
        return None


def write_pid(pid):
    with open(pid_file_path, "w") as f:
        f.write(str(pid))


def start():
    if not get_pid():
        p = subprocess.Popen(
            [sys.executable, timer_path],
            start_new_session=True,
            stdin=subprocess.DEVNULL,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
        try:
            write_pid(p.pid)
            return True
        except OSError:
            print(f"Could not write to {pid_file_path}", file=sys.stderr)
            print("Trying to terminate the timer process", file=sys.stderr)
            p.terminate()
        return False


def stop():
    pid = get_pid()
    if pid:
        try:
            os.kill(pid, signal.SIGTERM)
        except OSError:
            print(f"Failed to kill {pid}", file=sys.stderr)
            return False
        try:
            os.remove(pid_file_path)
        except OSError:
            print(f"Failed to remove {pid_file_path}", file=sys.stderr)
            return False
    return True


def count_active_tasks():
    p = subprocess.run(["task", "+ACTIVE", "rc=", "count"], capture_output=True)
    return int(p.stdout.decode().strip())


def is_started(task):
    return "start" in task


def exit_with_some_errors():
    print("Some errors occured. Hook execution failed.", file=sys.stderr)
    exit(1)


def main():
    old = json.loads(sys.stdin.readline())
    new = json.loads(sys.stdin.readline())

    delta = is_started(new) - is_started(old)

    if count_active_tasks() + delta > 0:
        if not start():
            exit_with_some_errors()
    else:
        if not stop():
            exit_with_some_errors()

    json.dump(new, sys.stdout)
    exit(0)


if __name__ == "__main__":
    main()
