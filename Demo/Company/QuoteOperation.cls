Class Demo.Company.QuoteOperation Extends EnsLib.REST.Operation [ ClassType = "", ProcedureBlock ]
{

Parameter INVOCATION = "Queue";

Method getQuote(pRequest As Demo.Company.QuoteRequest, Output pResponse As Demo.Company.QuoteResponse) As %Status
{
	Set tURL=..Adapter.URL_"?function=TIME_SERIES_INTRADAY&symbol="_pRequest.Symbol_"&interval=60min&apikey=17SI5AK6M3DKTZLX"
      
    // Execute the call
    Set tSC =..Adapter.GetURL(tURL,.tHttpResponse)
    set tProxy = {}.%FromJSON(tHttpResponse.Data)
    set tm = tProxy."Time Series (60min)"
    set iter = tm.%GetIterator()
    set next = iter.%GetNext(.key, .value)
	Set pResponse = ##class(Demo.Company.QuoteResponse).%New()
	Set symbol = pRequest.Symbol
	Set quote = value."4. close"
	Set pResponse.Quote = quote

	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Demo.Company.QuoteRequest"> 
		<Method>getQuote</Method>
	</MapItem>
</MapItems>
}

}
