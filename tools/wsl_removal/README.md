# WSL Removal Script

This script completely removes the Windows Subsystem for Linux (WSL) from a Windows machine. It unregisters all installed WSL distributions, disables the necessary Windows features, and deletes any leftover WSL-related files.

## Requirements

- Windows 10 or later
- Administrative privileges

## Instructions

1. **Download the Script:**
   - Save the provided `.bat` script to your computer with the filename `remove_wsl.bat`.

2. **Run the Script:**
   - Right-click on `remove_wsl.bat` and select "Run as administrator." 
   - The script needs to be run with administrative privileges to properly unregister distributions, disable features, and remove files.

3. **What the Script Does:**
   - **Unregisters All Installed WSL Distributions:**
     - The script loops through all installed WSL distributions on your system and unregisters them using `wsl --unregister`.
   - **Disables WSL Features:**
     - The script disables the Windows features required for WSL (`Microsoft-Windows-Subsystem-Linux` and `VirtualMachinePlatform`) using the `dism` command.
   - **Deletes Leftover WSL Files:**
     - It removes any remaining WSL-related files from your user profile directory, specifically in the `AppData\Local\Packages\CanonicalGroupLimited*` and `AppData\Local\lxss` directories.
   
4. **Completion:**
   - After the script finishes, you will see a message confirming that WSL has been completely removed. Press any key to close the command prompt window.

## Important Notes

- **This script is irreversible**: Once you run the script, all WSL distributions and related files will be permanently deleted. If you want to use WSL in the future, you will need to reinstall it.

- **No reboot is required**, but it is recommended to restart your computer after running the script to ensure all changes take effect.

## Troubleshooting

If you encounter any issues while running the script:

1. Ensure you are running the script with administrative privileges.
2. Check that you are using a supported version of Windows (Windows 10 or later).
3. Verify that there are no WSL distributions currently running. You can stop them using `wsl --shutdown` before running the script.

## License

This script is provided "as-is" without any warranty. Use at your own risk.
