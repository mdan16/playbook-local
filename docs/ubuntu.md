# Ubuntuのシステム設定

## CapsLockをCtrlに変更

```
$ sudo vim /etc/default/keyboard
$ # XKBOPTIONS="ctrl:nocaps" を追記
```

## ディレクトリ表記を英語に変更

```
$ LANG=C xdg-user-dirs-gtk-update
$ # `Don't ask me this again` にチェックを入れて `Update Names` を押下
```

## 入力設定

1. `設定 > 地域と言語 > 日本語（Mozc）の設定` を開く
2. `キー設定の選択 > 編集` を開く
3. 入力キーが `Zenkaku/Hankaku` になっている箇所を `Ctrl Space` に変更（`IMEを有効化`、`IMEを無効化` が複数ヶ所）
4. 再ログイン後に変更が反映

## ディスプレイ設定

Ubuntu 20.04ではGUIからディスプレイの回転設定を行うと失敗したのでCUIから設定する。

1. `xrandr` でディスプレイ主力端子の名前を確認する。下の例では`DP-0.8`と`DP-0.1`にディスプレイが接続されている。
```
$ xrandr
Screen 0: minimum 8 x 8, current 3640 x 1920, maximum 32767 x 32767
DP-0.8 connected primary 2560x1440+0+0 (normal left inverted right x axis y axis) 553mm x 311mm
   2560x1440     59.95*+
   2048x1280     59.96  
   2048x1080     60.00    24.00  
   1920x1200     59.88  
   1920x1080     60.00    59.94    50.00    23.98  
   1600x1200     60.00  
   1600x900      60.00  
   1280x1024     75.02    60.02  
   1280x720      59.94    50.00  
   1152x864      75.00  
   1024x768      75.03    60.00  
   800x600       75.00    60.32  
   720x576       50.00  
   720x480       59.94  
   640x480       75.00    59.94    59.93  
DP-0.1 connected 1080x1920+2560+0 left (normal left inverted right x axis y axis) 477mm x 268mm
   1920x1080     60.00*+
   1600x900      60.00  
   1280x1024     75.02    60.02  
   1152x864      75.00  
   1024x768      75.03    60.00  
   800x600       75.00    60.32  
   640x480       75.00    59.94  
HDMI-0 disconnected (normal left inverted right x axis y axis)
DP-0 disconnected (normal left inverted right x axis y axis)
DP-1 disconnected (normal left inverted right x axis y axis)
DP-2 disconnected (normal left inverted right x axis y axis)
DP-3 disconnected (normal left inverted right x axis y axis)
DP-4 disconnected (normal left inverted right x axis y axis)
DP-5 disconnected (normal left inverted right x axis y axis)
```
2. 縦向きディスプレイ用に出力を回転させる。
```
$ xrandr --output "DP-0.1" --rotate left
```
3. どこか設定を永続化できる場所に上記コマンドを記述する。
