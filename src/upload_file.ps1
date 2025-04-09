# FTP上传脚本 - 强制覆盖文件
$ftpServer = "ftp://192.168.137.67:2121/Download/hid_cache.txt"
$username = ""
$password = ""
$filePath = "hid_cache.txt"

# 创建凭据对象
$credentials = New-Object System.Net.NetworkCredential($username, $password)

# 创建WebClient对象
$webclient = New-Object System.Net.WebClient
$webclient.Credentials = $credentials

try {
    # 上传文件（会自动覆盖）
    $webclient.UploadFile($ftpServer, "STOR", $filePath)
    Write-Host "文件已成功上传并覆盖" -ForegroundColor Green
}
catch {
    Write-Host "上传失败: $_" -ForegroundColor Red
}
finally {
    $webclient.Dispose()
}

# 在最后添加以下内容
Write-Host "按任意键继续..."
[Console]::ReadKey($true) | Out-Null