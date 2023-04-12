# 構築手順

```bash
git clone git@github.com:kenkentarou/transaction_lock.git
cd transaction_lock
docker-compose up -d
docker exec -it mysql_transaction bash
mysql -u root -p < test_data.sql # パスワードはsecret
mysql -u root -p # パスワードはsecret
show databases;

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| test               |
+--------------------+
```
