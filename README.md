# dosutil.sh

**Author:** Alec Jansen
**Last Updated:** June 4, 2025

---

## Overview

`dosutil.sh` is a simple Bash script designed to give DOS/Windows users a familiar interface for performing basic file operations on Unix-based systems. It maps common DOS-style commands like `copy`, `ren`, and `del` to their Unix equivalents, helping ease the transition for users new to the command line.

---

## Usage

```bash
./dosutil.sh <command> <arg1> <arg2>
```

* `<command>`: The action to perform (e.g., `copy`, `ren`, `del`)
* `<arg1>` and `<arg2>`: Parameters for the selected command (filenames, paths, etc.)

---

## Commands

| Command  | Description                                  | Example                                     |
| -------- | -------------------------------------------- | ------------------------------------------- |
| `author` | Outputs the author of the script             | `./dosutil.sh author`                       |
| `type`   | Displays the contents of a file              | `./dosutil.sh type notes.txt`               |
| `copy`   | Copies a file to a new location              | `./dosutil.sh copy file1.txt file2.txt`     |
| `ren`    | Renames a file                               | `./dosutil.sh ren oldname.txt newname.txt`  |
| `move`   | Moves a file to a new location or renames it | `./dosutil.sh move file.txt /new/location/` |
| `del`    | Deletes a file (with confirmation)           | `./dosutil.sh del temp.txt`                 |
| `help`   | Lists available commands                     | `./dosutil.sh help`                         |

---

## Features

* **Validation**: Before running a command, the script checks if the specified files or directories exist.
* **Safe deletion**: The `del` command uses `rm -i` to confirm deletion.
* **Fallback help**: If an unknown command is entered, the script displays the help menu.

---

## Example

```bash
$ ./dosutil.sh copy report.txt backup_report.txt
Copied 'report.txt' to 'backup_report.txt'.

$ ./dosutil.sh type backup_report.txt
Contents of backup_report.txt:
...
```

---

## License

This script is provided as-is without warranty. You are free to use, modify, and distribute it for personal or educational purposes.

---
