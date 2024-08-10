# Codex-MechanicRequest

## Overview

The `Codex-MechanicRequest` script is an advanced vehicle repair request system for FiveM servers using the ESX framework. It enables players to request vehicle repairs through a simple in-game command, with mechanics receiving real-time notifications and map markers for each request. This script enhances the roleplay experience by integrating vehicle repair requests seamlessly into the gameplay.

![Codex-MechanicRequest](https://i.imgur.com/Oa7k8hI.png)

## Features

- **Repair Request Command**: Players can request vehicle repairs using the `/114 [message]` command. The message can include details or descriptions of the issue.
  
- **Mechanic Notifications**: Online mechanics receive notifications when a repair request is made, allowing them to respond quickly. Mechanics in valid vehicles will get a map marker indicating the request's location.

- **Distance-Based Notifications**: 
  - **Nearby Notification**: Mechanics receive a notification when they are within a configurable distance of the request location.
  - **Proximity Notification**: Players receive a notification when the mechanic is close to their location, ensuring they know when help is almost there.

- **Dynamic Map Markers**: The script adds a flashing map blip at the request location, which makes it easy for mechanics to find the players who need repairs. The blip icon can be customized to indicate repair services.

- **Mechanic Vehicle Validation**: Mechanics need to be in specific vehicles configured in the script to receive repair requests. This ensures only authorized vehicles are used for service.

- **Configurable Settings**: Customize job names, vehicle models, and distance thresholds through a `config.lua` file, allowing for flexible integration with different server setups.

## Installation

1. **Download**: Obtain the `Codex-MechanicRequest` script from the GitHub repository.

2. **Place in Resources**: Add the script to your `resources` directory.

3. **Update `server.cfg`**: Include the script in your server configuration file to ensure it starts on server boot.

4. **Configure**: Edit `config.lua` to set up job names, vehicle models, and distance thresholds.

5. **Restart Server**: Apply changes by restarting your FiveM server.

## Usage

- **/114 [message]**: Players use this command to request repairs. Mechanics will be notified and marked on the map.

## Troubleshooting

- **Check Dependencies**: Ensure that all required dependencies (e.g., `esx_addonaccount`) are installed and functioning.
- **Verify Configuration**: Confirm job names and vehicle models match those in your ESX database.
- **Review Logs**: Look at server logs for error messages if the script doesn’t behave as expected.

## Support

For support or issues, contact CustomCodex via [Discord](https://discord.gg/AWR2PjPQe8).

---

Enhance your FiveM server’s roleplay experience with the `Codex-MechanicRequest` script, designed to integrate vehicle repair requests effortlessly into your server's ecosystem.
