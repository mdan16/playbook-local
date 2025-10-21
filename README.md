# playbook-local

ローカル環境構築用のPlaybook

## Target

- Ubuntu
- macOS

## Usage

### Ubuntu

```shell
$ sudo apt -y update && sudo apt -y install git
$ git clone https://github.com/mdan16/playbook-local.git
$ cd playbook-local
$ ./install.sh
$ ansible-playbook ubuntu.yml --ask-become-pass
```

### macOS

```shell
$ xcode-select --install
$ git clone https://github.com/mdan16/playbook-local.git
$ cd playbook-local
$ ./install.sh
$ ansible-playbook macos.yml
```

**注意**: macOSでは、Homebrewのインストールが必要です。`install.sh`が自動的にインストールしますが、手動でインストールする場合は以下のコマンドを実行してください。

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

[ドキュメント](docs/README.md)を参考に手動で設定を変更
