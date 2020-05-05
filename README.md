# playbook-local

ローカル環境のセットアップ用Playbook。

## Target

- Ubuntu

## Usage

```shell
$ sudo apt -y update && sudo apt -y install git
$ git clone git@github.com:mdan16/playbook-local.git
$ ./playbook-local/install.sh
$ ansible-playbook ubuntu.yml --ask-become-pass
```

