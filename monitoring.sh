#!/bin/bash

# CPU使用率の閾値
CPU_THRESHOLD=1

# メモリ使用量の閾値 (単位: バイト)
MEM_THRESHOLD=250000

# ディスク使用量の閾値 (単位: バイト)
DISK_THRESHOLD=250000000

APITOKEN="Vj3O6jqyTpY1GQRvnYSdVzyAtspqDmcQvXHfcEkxVnM"

while true; do
	# CPU使用率の取得
	CPU_USAGE=$(top -b -n 1 | grep "%Cpu" | awk '{print $2}')

	# メモリ使用量の取得
	MEM_USAGE=$(free | grep Mem | awk '{print $3'})

	# ディスク使用量の取得				
	DISK_USAGE=$(df / | awk '{print $5}')
	

	# アラートのチェック
	if [ "$CPU_USAGE "-gt" $CPU_THRESHOLD" ];then
		echo "CPU使用率が高いためアラートを発生させます。"
		curl -X POST -H "Authorization: Bearer ${APITOKEN}" -F "message = CPU使用量${CPU_USAGE}" https://notify-api.line.me/api/notify
		# ここでアラートの送信処理を記述する
	fi

	if [ "$MEM_USAGE "-gt" $MEM_THRESHOLD" ];then
		echo "メモリ使用量が高いためアラートを発生させます。"
		curl -X POST -H "Authorization: Bearer ${APITOKEN}" -F "message = メモリ使用量${MEM_USAGE}" https://notify-api.line.me/api/notify

		# ここでアラートの送信処理を記述する
	fi

	if [ "$DISK_USAGE "-gt" $DISK_THRESHOLD" ];then
		echo "ディスク使用量が低いためアラートを発生させます。"
		curl -X POST -H "Authorization: Bearer ${APITOKEN}" -F "message = ディスク使用量${DISK_USAGE}" https://notify-api.line.me/api/notify

		# ここでアラートの送信処理を記述する
	fi

	# 監視のインターバル (秒)
	echo " "
	sleep 1
done
