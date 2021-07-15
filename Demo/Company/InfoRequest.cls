Class Demo.Company.InfoRequest Extends Ens.Request [ ClassType = persistent, ProcedureBlock ]
{

Property Name As %String(TRUNCATE = 1);

Storage Default
{
<Data name="InfoRequestDefaultData">
<Subscript>"InfoRequest"</Subscript>
<Value name="1">
<Value>Name</Value>
</Value>
</Data>
<DefaultData>InfoRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
