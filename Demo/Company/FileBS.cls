Class Demo.Company.FileBS Extends Ens.BusinessService [ ClassType = "", ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Method OnProcessInput(pInput As %CharacterStream, pOutput As %RegisteredObject) As %Status
{
	Set tRequest = ##class(Demo.Company.ProcessRequest).%New()
	Set tRequest.Name = pInput.ReadLine(256)
	
	Set tSC = ..SendRequestSync("Demo.Company.BP", tRequest, .pOutput)
	
	Set ^EnsDemo.Output("Description")=pOutput.Description
	Set ^EnsDemo.Output("Quote")=pOutput.Quote
	Set ^EnsDemo.Output("URL")=pOutput.URL
	
	Quit tSC
}

}
