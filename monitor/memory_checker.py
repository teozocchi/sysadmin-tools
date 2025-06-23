#!/usr/bin/env python3
# monitor/memory_checker.py

import psutil

mem = psutil.virtual_memory()

used = mem.used // (1024 ** 2)
total = mem.total // (1024 ** 2)
percent = mem.percent

print(f"Memory Usage: {used} MB / {total} MB ({percent}%)")

