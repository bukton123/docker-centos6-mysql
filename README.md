# Lab Test Mysql 5.0
 
## How to build image docker
### Example 
```bash
docker build --tag mysql_lab .

docker run --name mysql_test -p 3306:3306 --rm -it mysql_lab:0.1 bash
```

### Use Mysql
```sql
GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY 'test'
```