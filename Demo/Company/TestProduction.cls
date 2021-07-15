Class Demo.Company.TestProduction Extends Ens.Production [ ClassType = "", ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="Demo.Company.TestProduction" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Demo.Company.InfoOperation" Category="" ClassName="Demo.Company.InfoOperation" PoolSize="1" Enabled="true" Foreground="false" DisableErrorTraps="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
    <Setting Target="Host" Name="RetryInterval">5</Setting>
    <Setting Target="Host" Name="FailureTimeout">15</Setting>
    <Setting Target="Adapter" Name="DSN">jdbc:IRIS://localhost:1972/USER</Setting>
    <Setting Target="Adapter" Name="StayConnected">-1</Setting>
    <Setting Target="Adapter" Name="ConnectTimeout">5</Setting>
    <Setting Target="Adapter" Name="JDBCClasspath">/usr/irissys/dev/java/lib/JDK11/intersystems-jdbc-3.2.0.jar</Setting>
    <Setting Target="Adapter" Name="JGService">JavaGatewayService</Setting>
    <Setting Target="Adapter" Name="Credentials">system</Setting>
    <Setting Target="Adapter" Name="JDBCDriver">com.intersystems.jdbc.IRISDriver</Setting>
  </Item>
  <Item Name="Demo.Company.QuoteOperation" Category="" ClassName="Demo.Company.QuoteOperation" PoolSize="1" Enabled="true" Foreground="false" DisableErrorTraps="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
    <Setting Target="Host" Name="RetryInterval">5</Setting>
    <Setting Target="Host" Name="FailureTimeout">15</Setting>
    <Setting Target="Adapter" Name="HTTPServer">www.alphavantage.co</Setting>
    <Setting Target="Adapter" Name="SSLConfig">MYSSL</Setting>
    <Setting Target="Adapter" Name="URL">https://www.alphavantage.co/query</Setting>
  </Item>
  <Item Name="Demo.Company.BP" Category="" ClassName="Demo.Company.BP" PoolSize="1" Enabled="true" Foreground="false" DisableErrorTraps="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
  </Item>
  <Item Name="Demo.Company.BS" Category="" ClassName="Demo.Company.BS" PoolSize="1" Enabled="true" Foreground="false" DisableErrorTraps="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="InactivityTimeout">0</Setting>
  </Item>
  <Item Name="JavaGatewayService" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="ClassPath"></Setting>
  </Item>
  <Item Name="Demo.Company.EmailOperation" Category="" ClassName="Demo.Company.EmailOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Credentials">yahoo email</Setting>
    <Setting Target="Adapter" Name="SMTPPort">465</Setting>
    <Setting Target="Adapter" Name="SMTPServer">ybbsmtp.mail.yahoo.co.jp</Setting>
    <Setting Target="Adapter" Name="SSLConfig">MYSSL</Setting>
    <Setting Target="Adapter" Name="From">satohiroshi1958@yahoo.co.jp</Setting>
    <Setting Target="Adapter" Name="Recipient">satohiroshi2006@gmail.com</Setting>
    <Setting Target="Adapter" Name="SSLCheckServerIdentity">0</Setting>
  </Item>
</Production>
}

}
