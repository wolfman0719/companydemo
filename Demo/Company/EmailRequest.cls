Class Demo.Company.EmailRequest Extends Ens.Request [ ClassType = persistent, ProcedureBlock ]
{

Property Name As %String(TRUNCATE = 1);

Property Description As %String(TRUNCATE = 1);

Property Quote As %Float;

Property URL As %String(TRUNCATE = 1);

Storage Default
{
<Data name="EmailRequestDefaultData">
<Subscript>"EmailRequest"</Subscript>
<Value name="1">
<Value>Description</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Quote</Value>
</Value>
<Value name="4">
<Value>URL</Value>
</Value>
</Data>
<DefaultData>EmailRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
