## Companyデモ

- IRISのインターオペラビリティ機能を利用したマッシュアップデモ
- 会社名を入力すると、その会社の基本情報と昨日の株価の終値を表示する

- 基本情報は、データベースから取得
- 株価は、ウェブサービスから取得する

## 前提条件

このツールを動かすためには、Docker for WindowsまたはDocker for MACをインストールする必要があります。


## セットアップ

git cloneまたはここからダウンロードしたcompany.zipを適当なディレクトリーにおいて、zipツールで展開します。

Windowsではコマンドプロンプト、MACではターミナルを起動します。

例えば、Windowsでc:\temp\companydemoに展開したとすると

```
>cd c:\
>cd temp
>cd companydemo
>docker-compose up -d --build

```
を順番に実行してください。

urlに指定するポート番号は、デフォルト52773になっていますが、変更したい場合は、docker-compose.ymlの設定を変更してください。

またメールを送信するためには

iris.scriptの以下の部分を変更する必要があります。

```
set credential = ##class(Ens.Config.Credentials).%New()
set credential.Username = "xxxxx"
set credential.Password = "xxxxxx"
set credential.SystemName = "yahoo email"
set status = credential.%Save()
```

さらに、TestProduction.clsの以下の部分を環境に合わせて変更する必要があります。

```
  <Item Name="Demo.Company.EmailOperation" Category="" ClassName="Demo.Company.EmailOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Credentials">yahoo email</Setting>
    <Setting Target="Adapter" Name="SMTPPort">465</Setting>
    <Setting Target="Adapter" Name="SMTPServer">smtp.mail.yahoo.co.jp</Setting>
    <Setting Target="Adapter" Name="SSLConfig">MYSSL</Setting>
    <Setting Target="Adapter" Name="From">xxxxx@yahoo.co.jp</Setting>
    <Setting Target="Adapter" Name="Recipient">xxxxx@gmail.com</Setting>
    <Setting Target="Adapter" Name="SSLCheckServerIdentity">0</Setting>
  </Item>
```

## アプリケーションの実行方法

IRISの管理ポータルを開きます

ブラウザで以下のurlを指定します。

http://localhost:52773/csp/user/CompanyMain.csp?$NAMESPACE=USER&IRISUsername=_system&IRISPassword=SYS

指定できる会社

- Intel
- Dell
- HP
- Microsoft
- IBM

### 管理ポータル

[localhost:52773/csp/sys/%25CSP.Portal.Home.zen?IRISUsername=_system&IRISPassword=SYS](http://localhost:52773/csp/sys/%25CSP.Portal.Home.zen?IRISUsername=_system&IRISPassword=SYS)

## 環境の削除

新しくデータをを再ロードするまえには、以下を実行してください。

```
>cd c:\
>cd temp
>cd companydemo
>docker-compose stop
>docker-compose rm
yと答える
```
