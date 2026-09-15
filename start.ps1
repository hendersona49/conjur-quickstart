$env:CONJUR_DATA_KEY = Get-Content -Raw data_key
docker compose up -d
docker ps