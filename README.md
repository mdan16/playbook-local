# playbook-local

ローカル環境構築用のPlaybook

## Target

- Ubuntu

## Usage

```shell
$ sudo apt -y update && sudo apt -y install git
$ git clone https://github.com/mdan16/playbook-local.git
$ cd playbook-local
$ ./install.sh
$ ansible-playbook ubuntu.yml --ask-become-pass
```

[ドキュメント](docs/README.md)を参考に手動で設定を変更
