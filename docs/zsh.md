# zshの設定

```
vim ~/.zpreztorc
```

pmoduleに `syntax-highlighting` と `autosuggestions`を追加
```
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'syntax-highlighting' \
  'autosuggestions' \
  'prompt'
```

themeを`sorin` から `pure` に変更
```
zstyle ':prezto:module:prompt' theme 'pure'
```
