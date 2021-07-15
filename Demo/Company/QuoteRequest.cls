/// 
Class Demo.Company.QuoteRequest Extends Ens.Request [ ClassType = persistent, ProcedureBlock ]
{

Property Symbol As %String(TRUNCATE = 1);

Storage Default
{
<Data name="QuoteRequestDefaultData">
<Subscript>"QuoteRequest"</Subscript>
<Value name="1">
<Value>Symbol</Value>
</Value>
</Data>
<DefaultData>QuoteRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
