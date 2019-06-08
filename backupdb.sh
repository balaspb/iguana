#!/bin/bash
TIME_NOW="$(date + '%d_%m_%y_%H_%M_%S')"
BACKUPFILE="db_backup_$TIME_NOW.gz"
BACKUP_DIR="/opt/db_backup_dir"
PATHOFBACKUPFILE="$BACKUP_DIR/$BACKUPFILE"
LOG_FILE="$BACKUP_DIR/"backup_log_"$(date + '%m_%y')".txt
echo "mysqldumb started at $TIME_NOW" >> "$LOG_FILE"
mysqldumb --user=root --password=root --default-character-set=utf8 mydatabase | gzip > "$PATHOFBACKUPFILE"
echo "mysqldumb finished at $(date + '%d_%m')"
chown myuser "$PATHOFBACKUPFILE"
chown myuser "$LOG_FILE"

echo "file permission changed " >> "$LOG_FILE"
