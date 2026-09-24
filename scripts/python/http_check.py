#!/usr/bin/env python3
"""Check HTTP status of URLs."""
import sys
import requests

def check_url(url: str, timeout: int = 5) -> None:
    try:
        r = requests.get(url, timeout=timeout)
        print(f"{url} -> {r.status_code}")
    except requests.RequestException as e:
        print(f"{url} -> ERROR: {e}")

def main():
    urls = sys.argv[1:] or ["https://google.com", "https://github.com"]
    for url in urls:
        check_url(url)

if __name__ == "__main__":
    main()
