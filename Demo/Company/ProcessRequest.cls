Class Demo.Company.ProcessRequest Extends Ens.Request [ ClassType = persistent, ProcedureBlock ]
{

Property Name As %String(TRUNCATE = 1);

Storage Default
{
<Data name="ProcessRequestDefaultData">
<Subscript>"ProcessRequest"</Subscript>
<Value name="1">
<Value>Name</Value>
</Value>
</Data>
<DefaultData>ProcessRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
