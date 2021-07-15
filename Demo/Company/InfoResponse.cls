Class Demo.Company.InfoResponse Extends Ens.Response [ ClassType = persistent, ProcedureBlock ]
{

Property Description As %String(TRUNCATE = 1);

Property Symbol As %String(TRUNCATE = 1);

Property URL As %String(TRUNCATE = 1);

Storage Default
{
<Data name="InfoResponseDefaultData">
<Subscript>"InfoResponse"</Subscript>
<Value name="1">
<Value>Description</Value>
</Value>
<Value name="2">
<Value>Symbol</Value>
</Value>
<Value name="3">
<Value>URL</Value>
</Value>
</Data>
<DefaultData>InfoResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
