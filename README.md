# FileHashTool

**FileHashTool** is a simple drag-and-drop utility for Windows that generates cryptographic hash values for files and folders. It computes **MD5**, **SHA1**, **SHA256**, and **SHA512** checksums using built-in PowerShell capabilities.

---

## 🔧 Features

- Supports drag-and-drop of single or multiple files
- Supports folder input (recursively hashes all files inside)
- Computes four common hashes:
  - **MD5**
  - **SHA1**
  - **SHA256**
  - **SHA512**
- Works out of the box with **PowerShell 5.1 or later**
- No installation required
- Optional shortcut customization with your own icon

---

## 📁 What's Included

| File                       | Purpose                              |
|----------------------------|---------------------------------------|
| `Get-Hashes.ps1`           | Main PowerShell script for hashing    |
| `Get-Hashes_Drop_Here.bat` | Batch file launcher for drag-and-drop |

---

## 🚀 How to Use

1. Place both files (`.ps1` and `.bat`) in a folder of your choice.
2. Create a shortcut to `Get-Hashes_Drop_Here.bat`.
3. (Optional) Customize the shortcut icon (see below).
4. Drag files or folders onto the shortcut. A terminal window will open and display the hashes for each file.

---

## ⚙️ Requirements

- Windows 10 or 11
- PowerShell 5.1 or later (pre-installed on most systems)

To check your PowerShell version, run this in a terminal:

$PSVersionTable.PSVersion

🎨 Customize the Shortcut Icon
Right-click the shortcut you created.
Select Properties → click Change Icon...
Browse to any .ico file to give your shortcut a unique look.
You can create your own icons or download them from sites like:
https://iconarchive.com
https://icons8.com

📜 License
This tool is released under the MIT License. You are free to use, modify, and redistribute it.

If you want to add logging, clipboard support, or integration with the 
Windows context menu, feel free to fork the project or open a pull 
request.
