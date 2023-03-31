# 【PowerShell】Move_Files
前日のファイル及びフォルダを、特定のフォルダに移動します。
また、指定した文字列が入ったファイル及びフォルダを収集する事が出来ます。

## 事前に必要となるもの
・なし。

## 事前設定
`$Target_Folder`に、ファイル及びフォルダの収集先となる`フォルダパス`を指定します
また、`$Source | Where-Object {$_.Name -match "^Get"} | Move-Item -Destination $Input` の`"^Get"`の部分に、マッチさせたい文字列を指定します。
※指定しない場合は、前日の日付のみが条件となります。

## 実行結果
スクリプトを実行した同フォルダ内に、"yyyymmdd"方式でフォルダが生成されます。(既に存在する場合は生成されません。)
その配下に、事前設定したファイル及びフォルダが移動されます。
