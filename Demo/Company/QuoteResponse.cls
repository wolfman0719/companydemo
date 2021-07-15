/// 
Class Demo.Company.QuoteResponse Extends Ens.Response [ ClassType = persistent, ProcedureBlock ]
{

Property Quote As %Float;

Storage Default
{
<Data name="QuoteResponseDefaultData">
<Subscript>"QuoteResponse"</Subscript>
<Value name="1">
<Value>Quote</Value>
</Value>
</Data>
<DefaultData>QuoteResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
