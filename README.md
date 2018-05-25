# Backup script for Conquest server (1.0)
Creates a backup of your Conquest server folder tree

Official support sites: [Official Github Repo](https://github.com/fstltna/ConquestBackup) - [Official Forum](https://conquest.gameplayer.club/index.php/forum/conquest-backup-scripts)  - [Official Download Area](https://conquest.gameplayer.club/index.php/downloads/category/8-conquest-sysadmin-tools)

---

1. Edit the settings at the top of conquestbackup.pl if needed
2. create a cron job like this:

        1 1 * * * /root/ConquestBackup/conquestbackup.pl

3. This will back up your Conquest Server installation at 1:01am each day, and keep the last 5 backups.

If you need more help visit https://Conquest.GamePlayer.club/
