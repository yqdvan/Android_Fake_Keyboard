#!/data/data/com.termux/files/usr/bin/bash

# 文件配置
WATCH_FILE="/storage/emulated/0/Download/aaa.txt"
TARGET_SCRIPT="$HOME/fuc.sh"  # 使用绝对路径更可靠

# 确保inotifywait可用
if ! command -v inotifywait &>/dev/null; then
    echo "正在安装inotify-tools..."
    pkg install inotify-tools -y && {
        echo "安装成功，继续执行监控..."
    } || {
        echo "安装失败，请检查网络或存储权限"
        exit 1
    }
fi

echo "启动低资源消耗文件监控..."
echo "监控文件: $WATCH_FILE"
echo "触发脚本: $TARGET_SCRIPT"

# 使用--monitor模式持续监控，但限制事件类型
inotifywait -m -e close_write,modify,move_self --format '%e' "$WATCH_FILE" |
while read -r events; do
    # 避免重复触发
    if [[ "$events" == *"CLOSE_WRITE"* || "$events" == *"MODIFY"* ]]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') 文件被修改，执行脚本..."
        # 添加延迟避免文件未完全写入
        sleep 0.5
        bash "$TARGET_SCRIPT" &
    fi
done