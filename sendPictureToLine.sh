#!/bin/bash
photo_file="/home/projitsu/motion/01-20230428132836-02.jpg"
token="PBFSw63rBEPVwfhIwSUUBTIJ2hGTT4z29hbj0kAGKro"
#写真を撮影してスタンプも送信
curl -X POST -H "Authorization: Bearer ${token}" -F "message = Jetsonから画像送信" -F "stickerPackageId = 1" -F "stickerId = 119" -F "imageFile=@${photo_file}" https://notify-api.line.me/api/notify
