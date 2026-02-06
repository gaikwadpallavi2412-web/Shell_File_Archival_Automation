# 📦 File Archival Automation - Shell Script

## 📌 Project Description
This Bash shell script automatically finds large and old files in a given directory, compresses them, and moves them to an archive folder.

The script helps in disk space management by archiving unused or large files.

---

## 🚀 Features
- Checks if source directory exists
- Creates archive folder automatically (if not present)
- Finds files larger than specified size
- Finds files older than specified days
- Compresses files using gzip
- Moves compressed files to archive folder
- Supports cron automation for scheduled execution
- Logs archival activity with timestamp

---

## 🛠 Technologies Used
- Bash Shell Scripting
- Linux / Unix Commands
- find command
- gzip compression
- cron scheduler

---

## 📂 Project Structure
```
archive_old_and_large_file.sh
archive/
README.md
```

---

## ▶️ How to Run

### Step 1: Give execute permission
```bash
chmod +x archive_old_and_large_file.sh
```

### Step 2: Run the script
```bash
./archive_old_and_large_file.sh
```

---

## ⚙️ Configuration

### Directory Path
Inside script:
```bash
DIR=/path/to/your/directory
```

Update this path according to your system.

---

## 📏 File Selection Criteria

### Large Files
```
-size +2M
```
Finds files greater than 2 MB  
(You can change to +5M, +10M etc.)

---

### Old Files
```
-mtime +30
```
Finds files older than 30 days  
(Currently commented in script but can be enabled)

---

## 📋 Sample Output
```
[Mon Jan 15 16:00:01 IST 2026] : archiving file1.txt to archive folder
[Mon Jan 15 16:00:02 IST 2026] : archiving file2.log to archive folder
```

---

## ⏰ Cron Automation

Run script daily at 4 PM:

```bash
0 16 * * * /path/archive_old_and_large_file.sh >> archivelog.log
```

---

## ⚠️ Notes
- Requires gzip package installed
- Make sure user has write permission on directory
- Avoid running multiple archive jobs simultaneously
- Test script manually before scheduling cron job

---

## 📈 Future Enhancements
- Add email notification after archive
- Add configurable size and days as input parameters
- Add logging to dedicated log file
- Add delete option after archive (retention policy)
- Add multi-directory support

---

## 👨‍💻 Author
Pallavi

---

## ⭐ If you like this project
Give it a ⭐ on GitHub
