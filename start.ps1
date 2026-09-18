$env:CONJUR_DATA_KEY = (Get-Content -Raw .\data_key).Trim()

docker compose up -d

Start-Sleep -Seconds 10

docker compose exec client conjur init oss -u https://proxy -a myConjurAccount --self-signed --force

docker ps
