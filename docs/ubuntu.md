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
