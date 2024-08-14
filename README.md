# Windows Tools

This repository is a collection of tools that I’m building to address various issues encountered with the Windows operating system. Each tool is designed to simplify troubleshooting and maintenance tasks, making it easier to keep your system running smoothly.

## Tools Included

### 1. WinFixIt

**WinFixIt** is a Windows utility designed to resolve folder integrity issues in your system. This tool helps clean up and fix problems in Windows directories that may cause errors or unexpected behavior.

#### Features

- **Automated Folder Integrity Fix**: Scans and automatically fixes common issues related to Windows folder integrity.
- **User-Friendly**: Simple and easy to use with a single click.
- **Safe and Secure**: Operates safely without making unauthorized changes to your system.

### 2. WSL Removal Script

This script completely removes the Windows Subsystem for Linux (WSL) from a Windows machine. It unregisters all installed WSL distributions, disables the necessary Windows features, and deletes any leftover WSL-related files.

#### Features

- **Complete Removal**: Unregisters all WSL distributions and disables WSL-related features.
- **Clean-Up**: Deletes residual files associated with WSL, ensuring a thorough removal.
- **No Reboot Required**: Typically does not require a system reboot, though it's recommended.

### 3. Run Tools Script

The `run_tools.bat` script allows you to execute both the `WinFixIt` and `WSL Removal Script` in sequence. This is a convenient way to run both tools with a single command.

#### Usage

1. **Run as Administrator**: To ensure both tools execute properly, run `run_tools.bat` with administrative privileges.
2. **Process**:
   - The script first runs the WSL Removal Script to remove the Windows Subsystem for Linux.
   - Then, it runs the WinFixIt script to resolve any folder integrity issues on your system.

3. **Completion**: Once the script has finished executing, you will see a message confirming that all scripts have been executed.

## Troubleshooting

If you encounter any issues while running these scripts:

1. **Run as Administrator**: Ensure you are running the scripts with administrative privileges.
2. **Check Windows Version**: Verify that you are using a supported version of Windows (Windows 10 or later).
3. **Stop Running WSL Distributions**: For the WSL Removal Script, make sure there are no WSL distributions currently running. You can stop them using `wsl --shutdown` before running the script.

## License

These scripts are provided "as-is" without any warranty. Use at your own risk.
