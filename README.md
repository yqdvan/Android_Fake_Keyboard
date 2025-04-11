this project emulates a standard HID (Human Interface Device) on Android, allowing your phone to act as a USB keyboard/mouse when connected to a PC/laptop. No extra drivers needed – the computer recognizes it as a real input device instantly!



项目基于android-keyboard-gadget二次开发 https://github.com/pelya/android-keyboard-gadget

# 🌉 项目概述
![HID Device](https://img.shields.io/badge/HID-Device-brightgreen)
![Root Required](https://img.shields.io/badge/Requires-Root-red)

通过Android设备模拟标准HID键盘设备，实时监控Windows端指定文件的内容变化，将文本内容转化为键盘输入信号，实现跨操作系统输入桥接方案。
将安卓手机变成即插即用的USB键盘/鼠标！通过模拟标准HID协议，让手机被识别为USB输入设备。

# ⚡ 核心原理
1. **Android端**：
   - 利用USB Gadget驱动创建虚拟HID设备
   - 通过root权限直接操作USB控制器
   - 后台监控FTP共享文件变化

2. **Windows端**：
   - PowerShell脚本监控/更新文本文件
   - 基于FTP协议实现跨系统文件同步
   - 支持AHK脚本集成扩展功能

# 🛠️ 技术亮点
- **无驱兼容**：符合USB HID 1.1标准协议
- **低延迟**：平均输入延迟 <200ms
- **安全传输**：局域网内封闭式文件通信
- **双向扩展**：预留Android→Windows控制通道


## 📋 功能特性

* **免驱动支持** - 兼容Windows/Linux/macOS

* **即插即用** - 无需电脑端软件

* **输入定制** - 支持按键/鼠标动作/宏命令

* **隐蔽模式** - 显示为标准HID设备

## ⚠️ 系统要求

* **ROOT权限**（必需）

* 预装软件：

  * [Termux](https://github.com/termux)（终端环境）

  * [USB Gadget](https://github.com/tejado/android-usb-gadget)（设备模拟）

  * [FTPShare](https://github.com/ghmxr/ftpshare)（文件传输）

> 所需APK已包含在`/res`目录

## 🚀 使用指南

### 第一步：建立FTP连接

1. 网络配置：

   * 电脑开热点手机连接

   * 或连接同一局域网

2. 手机端操作：

   * 运行FTPShare应用

   * 设置共享目录为`匿名可读写`

   * 启动FTP服务

3. 创建缓存文件：

   * 在`Download`目录新建`hid_cache.txt`

   * 内容示例：`test char!!`

### 第二步：创建虚拟设备

1. 运行USB Gadget应用

2. 点击`+`添加键盘鼠标设备

3. 启用新建的设备开关

4. 连接手机与待欺骗设备（例如一台没有备用键盘的电脑B)，手机如果有提示就选择文件传输

### 第三步：Android部署发送脚本

1. 打开termux软件，获取root权限

2. 阅读并执行本项目./lib/readme教程，测试通过基本字符发送功能

3. 复制本项目./src/run_su.sh到/data/data/com.termux/files/home/.shortcuts/run_su.sh

4. 复制本项目./src/norify_cache.sh到/data/data/com.termux/files/home下

5. 新建目录/data/local/tmp/hid-gadget-test复制本项目./lib/hid-gadget-test文件到/data/local/tmp/hid-gadget-test

6. 复制本项目./src/every_char.sh到/data/local/tmp/hid-gadget-test

7. 执行home下的norify_cache.sh

### 第四步：电脑端控制

1. 编辑本项目./src/upload_file.ps1,替换ftpServer为自己手机ftpshare上提示的ip与端口号

2. 双击运行upload_file.ps1就可以实现把电脑A的项目下./src/hid_cache.txt发送并覆盖到手机的Download目录，手机的notify脚本会监控hid_cache.txt并模拟键盘事件发送其内容给电脑B

3. (可选)通过autohotkey软件绑定快捷ctrl+f12键调用upload脚本(upload_ftp.ahk)。



## 💡 应用场景

| 场景分类       | 说明                | 典型用例                |
| ---------- | ----------------- | ------------------- |
| **受限设备输入** | 为无传统输入方式的设备提供输入能力 | 工业控制面板、ATM机、Kiosk终端 |
| **远程控制**   | 通过触摸屏控制其他设备       | 远程服务器管理、演示设备控制      |
| **自动化测试**  | 模拟人工输入进行自动化测试     | App兼容性测试、BIOS输入测试   |
| **应急替代**   | 物理键盘损坏时的临时替代方案    | 紧急系统维护、会议演示备用       |

## ⚠️ 注意事项

### 连接准备

* 🔌 USB连接：确保使用质量可靠的数据线，建议连接至主机后置USB接口

* 🌐 网络配置：电脑和手机需处于同一子网（如 192.168.1.x）

### 服务要求

* 📶 FTP服务：保持FTPShare在后台运行（Android需关闭电池优化）

* 🔑 权限管理：

  * Termux需要永久root授权（建议通过Magisk授予）

  * 首次运行需执行 `su -c chmod -R 777 /data/local/tmp/hid-gadget-test`

### 使用建议

* 🔄 操作顺序：严格遵循1-4步骤流程

* 📁 文件监控：`hid_cache.txt` 需保持UTF-8编码

* ⏱️ 延迟：首次输入可能有2-3秒延迟属正常现象

