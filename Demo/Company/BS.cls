Class Demo.Company.BS Extends Ens.BusinessService [ ClassType = "", ProcedureBlock ]
{

Method OnProcessInput(pInput As %CSP.Request, pOutput As Demo.Company.ProcessResponse) As %Status
{
  Set tRequest = ##class(Demo.Company.ProcessRequest).%New()
  Set tRequest.Name = pInput.Get("companyname",1)
	
  Set tSC = ..SendRequestSync("Demo.Company.BP", tRequest, .pOutput)
  Quit tSC
}

}
