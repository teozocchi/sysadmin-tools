# 🛠️ sysadmin-tools

A collection of small but powerful scripts for system monitoring, backups, and log management.  
Built for Linux (tested on Arch), written in Bash and Python.

## 📂 Contents

- `monitor/` — scripts to check CPU, memory, and disk usage
- `backup/` — auto-backup scripts with timestamped folders
- `logs/` — tools to clean and rotate logs
- `utils/` — notification helpers (e.g., dunst or libnotify)

## ⚙️ Dependencies

- Bash 5+
- Python 3.10+
- Optional: `psutil`, `notify-send`, `cron`

## 🚀 Usage

```bash
bash monitor/cpu_usage.sh
python3 monitor/memory_checker.py
