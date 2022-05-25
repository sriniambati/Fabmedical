host="fabmedical-629390.documents.azure.com"
username="fabmedical-629390"
password="Yf9qdyqlh02Q6l4OxkZ5T4LtD5Z5rJhp1874ck2F0dmWj1hLXGUqKtQ7mOqIrECfTwrB3VxG0aJAfa2xoBu6yQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done