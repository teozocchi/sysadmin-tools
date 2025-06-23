# 🛠️ sysadmin-tools

Small but sharp tools for sysadmins and power users.  
Bash and Python scripts to monitor, clean, back up, and notify — no bloat, just scripts that work.

---

## 📂 Structure

| Folder      | Purpose                            |
|-------------|-------------------------------------|
| `monitor/`  | CPU + RAM usage scripts             |
| `backup/`   | Timestamped folder backup tool      |
| `logs/`     | Log cleaner by age (in days)        |
| `utils/`    | Shell-based notification helper     |

---

## 🚀 Examples

```bash
bash monitor/cpu_usage.sh
python3 monitor/memory_checker.py
bash backup/autobackup.sh
python3 logs/log_cleaner.py /var/log 7
bash utils/notify.sh "Done" "Backup complete" "dialog-information"
