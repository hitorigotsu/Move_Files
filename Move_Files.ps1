#ファイル及びフォルダの収集先
$Target_Folder = "C:\test"
#スクリプト実行日の日付
$Now_Time = (Get-Date).Date
#スクリプト実行の1日前
$Before_Time =(Get-Date).AddDays(-1).Date
#保管先
$Input = Get-Date -Format "yyyyMMdd"

if(Test-Path $Input){

    #保管先のフォルダが存在する場合は処理しない

} else {

    New-item $Input -ItemType Directory

}


#前日までのファイル一覧を取得
$Source = Get-ChildItem $Target_Folder | Where-Object {$_.LastWriteTime.Date -lt $Now_Time -and $_.LastWriteTime.Date -ge $Before_Time}
#特定の文字列を含むファイルの移動
$Source | Where-Object {$_.Name -match "^Get"} | Move-Item -Destination $Input
