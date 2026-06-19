Home = os.getenv 'HOME'
Config = os.getenv 'XDG_CONFIG_HOME' or (Home .. '/.config')
ScreenshotsDirectory = Home .. '/Pictures/Screenshots'
MainMod = 'SUPER'

function Round(num, decimalPlaces)
  local mult = 10 ^ (decimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end
