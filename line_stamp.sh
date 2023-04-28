#!/bin/bash
#トークンを記述
token="PBFSw63rBEPVwfhIwSUUBTIJ2hGTT4z29hbj0kAGKro"
#メッセージを送信
curl -X POST -H "Authorization: Bearer ${token}" -F "message = ムーンスペシャル!" -F "stickerPackageId = 446" -F "stickerId = 1989" https://notify-api.line.me/api/notify

