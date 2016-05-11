Backup and restore mysql databases

The safest and quickest way to create a backup of a mysql database is from the terminal by using the mysqldump command. 
Mysqldump enables us to create a dump of the database in form of sql commands.

```
mysqldump -u root -p our_db > /backup/backup_our_db.sql
```
This creates a backup of the database in /backup/backup_our_db.sql

To restore the backup, use the command:
```
mysql -u root -p our_db < /backup/backup_our_db.sql
```