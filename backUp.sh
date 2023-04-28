#!/bin/bash

# バックアップ元のディレクトリ
SOURCE_DIR=$1

# バックアップ先のディレクトリ
BACKUP_DIR="/home/projitsu"

# バックアップファイル名に使用する日付
DATE=$2

# バックアップファイル名
BACKUP_FILE="$BACKUP_DIR/backup-$DATE.tar.gz"

# バックアップ実行
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"
count=$(ls -1q ./$SOURCE_DIR/ | wc -l)

# 結果を出力
if [ -f $BACKUP_FILE ]; then
	  echo "バックアップが成功しました。"
  else
	  echo "バックアップが失敗しました。"
fi








