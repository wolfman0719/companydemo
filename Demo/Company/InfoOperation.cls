Class Demo.Company.InfoOperation Extends Ens.BusinessOperation [ ClassType = "", ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method getInfo(pRequest As Demo.Company.InfoRequest, Output pResponse As Demo.Company.InfoResponse) As %Status
{
	Set pResponse = ##class(Demo.Company.InfoResponse).%New()
	Do ..Adapter.ExecuteQuery(.rs, "SELECT symbol, description, url FROM Demo.Company WHERE name = ?", pRequest.Name)
	While rs.Next() {
		Set pResponse.Symbol = rs.Get("symbol")
		Set pResponse.Description = rs.Get("description")
		Set pResponse.URL = rs.Get("url")
	}
	
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Demo.Company.InfoRequest"> 
		<Method>getInfo</Method>
	</MapItem>
</MapItems>
}

}
