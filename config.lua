Config = {}

-- ASCII Art for Custom Code
Config.CustomCodeArt = [[
   ___              _                        ___             _             
  / __\ _   _  ___ | |_   ___   _ __ ___    / __\  ___    __| |  ___ __  __
 / /   | | | |/ __|| __| / _ \ | '_ ` _ \  / /    / _ \  / _` | / _ \\ \/ /
/ /___ | |_| |\__ \| |_ | (_) || | | | | |/ /___ | (_) || (_| ||  __/ >  < 
\____/  \__,_||___/ \__| \___/ |_| |_| |_|\____/  \___/  \__,_| \___|/_/\_\
]]

-- Function to Print the Custom Code Art
function printCustomCodeArt()
    print(Config.CustomCodeArt)
end

-- Call the function to display the ASCII art
printCustomCodeArt()

-- Display GitHub Link
print("Visit us at: https://github.com/CustomCodex")
-- Mechanic job name
Config.MechanicJob = 'mechanic'

-- Distance thresholds
Config.DistanceThreshold = 100.0 -- Distance in meters to trigger notification
Config.CloseDistanceThreshold = 50.0 -- Distance in meters to trigger close proximity notification

-- Mechanic vehicles configuration
Config.MechanicVehicles = {
    'anwbvito', -- Replace with actual mechanic vehicle model names
    'mechanic_vehicle2'
}
