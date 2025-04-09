#!/bin/sh

# 指定要读取的文件
file="/storage/emulated/0/Download/hid_cache.txt"

# 逐字符读取文件内容
# while IFS= read -r -n1 char; do
#     # 将当前字符赋值给变量 cur_char
#     cur_char="$char"
    
#     # 执行 echo 命令
#     echo "$cur_char " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard
# done < "$file"


# 逐字符读取文件内容
while IFS= read -r -n1 char; do
    # 将当前字符赋值给变量 cur_char
    cur_char="$char"

    # 判断当前字符
    if [ "$cur_char" = "
" ]; then
        # 如果是换行符（read -n1 会将换行符读为空字符）
        echo "enter " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard


    elif [ "$cur_char" = " " ]; then
        # 如果是 空格
        echo "space " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "	" ]; then
        # 如果是 制表符
        echo "space space " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "*" ]; then
        # 如果是 *
        echo "left-shift 8 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "#" ]; then
        # 如果是 #
        echo "left-shift 3 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "$" ]; then
        # 如果是 $
        echo "left-shift 4 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "(" ]; then
        # 如果是 #
        echo "left-shift 9 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = ")" ]; then
        # 如果是 $
        echo "left-shift 0 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard


  #12567
    elif [ "$cur_char" = "!" ]; then
        # 如果是 !
        echo "left-shift 1 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "@" ]; then
        # 如果是 @
        echo "left-shift 2 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "%" ]; then
        # 如果是 %
        echo "left-shift 5 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "^" ]; then
        # 如果是 ^
        echo "left-shift 6 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "&" ]; then
        # 如果是 &
        echo "left-shift 7 " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard




    elif [ "$cur_char" = "_" ]; then
        # 如果是 下划线
        echo "left-shift minus " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "-" ]; then
        # 如果是 下划线
        echo "minus " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "/" ]; then
        # 如果是 /
        echo "slash " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "?" ]; then
        # 如果是 ?
        echo "left-shift slash " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard


    elif [ "$cur_char" = "[" ]; then
        # 如果是 [
        echo "lbracket " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "]" ]; then
        # 如果是 ]
        echo "rbracket " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "{" ]; then
        # 如果是 {
        echo "left-shift lbracket " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "}" ]; then
        # 如果是 }
        echo "left-shift rbracket " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = ";" ]; then
        # 如果是 ;
        echo "semicolon " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = ":" ]; then
        # 如果是 :
        echo "left-shift semicolon " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "," ]; then
        # 如果是 ,
        echo "comma " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "<" ]; then
        # 如果是 <
        echo "left-shift comma " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "." ]; then
        # 如果是 . 
        echo "period " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = ">" ]; then
        # 如果是 >
        echo "left-shift period " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "=" ]; then
        # 如果是 = 
        echo "equal " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = ">" ]; then
        # 如果是 +
        echo "left-shift equal " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "'" ]; then
        # 如果是 '
        echo "quote " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "\"" ]; then
        # 如果是 "
        echo "left-shift quote " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard


    elif [ "$cur_char" = "\\" ]; then
        # 如果是 \
        echo "backslash " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard

    elif [ "$cur_char" = "|" ]; then
        # 如果是 "
        echo "left-shift backslash " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard


    else
        # 判断是否是大写字母
        if echo "$cur_char" | grep -q '[A-Z]'; then
            # 如果是大写字母，转换为小写字母
            lower_char=$(echo "$cur_char" | tr '[:upper:]' '[:lower:]')
            # echo "$lower_char is upper test end"
            echo "left-shift $lower_char " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard
        else

        # 其他字符正常打印
        echo "$cur_char " | /data/local/tmp/hid-gadget-test/hid-gadget-test /dev/hidg0 keyboard
        fi
    fi
done < "$file"