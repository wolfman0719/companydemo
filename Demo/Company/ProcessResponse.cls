Class Demo.Company.ProcessResponse Extends Ens.Response [ ClassType = persistent, ProcedureBlock ]
{

Property Description As %String(TRUNCATE = 1);

Property Quote As %Float;

Property URL As %String(TRUNCATE = 1);

Storage Default
{
<Data name="ProcessResponseDefaultData">
<Subscript>"ProcessResponse"</Subscript>
<Value name="1">
<Value>Description</Value>
</Value>
<Value name="2">
<Value>Quote</Value>
</Value>
<Value name="3">
<Value>URL</Value>
</Value>
</Data>
<DefaultData>ProcessResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
