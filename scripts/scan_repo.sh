detect-secrets scan | \
python3 -c "import sys, json; print(json.load(sys.stdin)['results'])"
