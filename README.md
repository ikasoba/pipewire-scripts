# pipewire-scripts

pipewire をゴニョゴニョする場合に便利なスクリプト集

nix 経由でインストールした場合は `pw-scripts-` という接頭詞がコマンドにつきます。

```sh
# 一時的に試す場合
nix shell github:ikasoba/pipewire-scripts
```

## `pw-scripts-start-loopback`

第一引数にデバイス名を指定し、オーディオ出力をオーディオ入力へ変換する仮想デバイスを作成します。
