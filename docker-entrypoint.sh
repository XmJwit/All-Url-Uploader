#!/bin/sh

set -e 

\cp -f sample_config.py config.py
fileName="/app/config.py"

# 非空判断
if [ ! -z "$BOT_TOKEN" ];then
    OldStr="BOT_TOKEN = \"\""
    NewStr="BOT_TOKEN = \"$BOT_TOKEN\""
    sed -i "s/$OldStr/$NewStr/g" $fileName
else
        echo "Please input BOT_TOKEN" 
fi

if [ ! -z "$API_ID" ];then
    OldStr="API_ID = 1234567"
    NewStr="API_ID = $API_ID"
    sed -i "s/$OldStr/$NewStr/g" $fileName
else
        echo "Please input API_ID" 
fi

if [ ! -z "$API_HASH" ];then
    OldStr="API_HASH = \"\""
    NewStr="API_HASH = \"$API_HASH\""
    sed -i "s/$OldStr/$NewStr/g" $fileName
else
        echo "Please input API_HASH" 
fi

if [ ! -z "$LOG_CHANNEL" ];then
    OldStr="LOG_CHANNEL = -1007119867241"
    NewStr="LOG_CHANNEL = $LOG_CHANNEL"
    sed -i "s/$OldStr/$NewStr/g" $fileName
else
        echo "Please input LOG_CHANNEL" 
fi

if [ ! -z "$OWNER_ID" ];then
    OldStr="OWNER_ID = 1288398723"
    NewStr="OWNER_ID = $OWNER_ID"
    sed -i "s/$OldStr/$NewStr/g" $fileName
else
        echo "Please input OWNER_ID" 
fi

if [ ! -z "$BOT_USERNAME" ];then
    OldStr="BOT_USERNAME = \"AdvanceUrlUploaderBot\""
    NewStr="BOT_USERNAME = \"$BOT_USERNAME\""
    sed -i "s/$OldStr/$NewStr/g" $fileName
else
        echo "Please input BOT_USERNAME without @"
fi

if [ ! -z "$AUTH_USERS" ];then
    OldStr="AUTH_USERS = [OWNER_ID]"
    NewStr="AUTH_USERS = $AUTH_USERS"
    sed -i "s/$OldStr/$NewStr/g" $fileName
else
        echo "Please input AUTH_USERS "
fi

# option config 可选配置项
if [ ! -z "$DOWNLOAD_LOCATION" ];then
    OldStr="DOWNLOAD_LOCATION = \"./DOWNLOADS\""
    NewStr="DOWNLOAD_LOCATION = \"$DOWNLOAD_LOCATION\""
    sed -i "s/$OldStr/$NewStr/g" $fileName
fi
if [ ! -z "$ADL_BOT_RQ" ];then
    OldStr="ADL_BOT_RQ = {}"
    NewStr="ADL_BOT_RQ = $ADL_BOT_RQ"
    sed -i "s/$OldStr/$NewStr/g" $fileName
fi
if [ ! -z "$CHUNK_SIZE" ];then
    OldStr="CHUNK_SIZE = 128"
    NewStr="CHUNK_SIZE = $CHUNK_SIZE"
    sed -i "s/$OldStr/$NewStr/g" $fileName
fi
if [ ! -z "$TG_MAX_FILE_SIZE" ];then
    OldStr="TG_MAX_FILE_SIZE = 4194304000"
    NewStr="TG_MAX_FILE_SIZE = $TG_MAX_FILE_SIZE"
    sed -i "s/$OldStr/$NewStr/g" $fileName
fi
if [ ! -z "$HTTP_PROXY" ];then
    OldStr="HTTP_PROXY = \"\""
    NewStr="HTTP_PROXY = \"$HTTP_PROXY\""
    sed -i "s/$OldStr/$NewStr/g" $fileName
fi
if [ ! -z "$PROCESS_MAX_TIMEOUT" ];then
    OldStr="PROCESS_MAX_TIMEOUT = 3700"
    NewStr="PROCESS_MAX_TIMEOUT = $PROCESS_MAX_TIMEOUT"
    sed -i "s/$OldStr/$NewStr/g" $fileName
fi

#exec  " $@ "
