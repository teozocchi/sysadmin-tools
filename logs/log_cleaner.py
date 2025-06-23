#!/usr/bin/env python3
# logs/log_cleaner.py

import os
import sys
import time


def clean_logs(log_dir, days_old):
    now = time.time()
    cutoff = now - (days_old * 86400)

    for filename in os.listdir(log_dir):
        filepath = os.path.join(log_dir, filename)
        if os.path.isfile(filepath):
            if os.path.getmtime(filepath) < cutoff:
                print(f"Deleting: {filepath}")
                os.remove(filepath)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 log_cleaner.py /path/to/logs DAYS")
        sys.exit(1)

    log_dir = sys.argv[1]
    days = int(sys.argv[2])

    clean_logs(log_dir, days)
