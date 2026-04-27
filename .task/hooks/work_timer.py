from time import sleep
import subprocess

work_time = 1800
notification_frequency = 60
break_message = "You need to take a break."


def main():
    sleep(work_time)
    while True:
        subprocess.run(["notify-send", break_message])
        sleep(notification_frequency)


if __name__ == "__main__":
    main()
