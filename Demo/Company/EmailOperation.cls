Class Demo.Company.EmailOperation Extends Ens.BusinessOperation [ ClassType = "", ProcedureBlock ]
{

Parameter ADAPTER = "EnsLib.EMail.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method sendMail(pRequest As Demo.Company.EmailRequest, Output pResponse As Ens.Response) As %Status
{
	Set msg = ##class(%Net.MailMessage).%New()
	Set msg.Subject = pRequest.Name_"に関する情報"
	Set msg.Charset = "iso-2022-jp"
	Do msg.TextData.Write("会社名: "_pRequest.Name_$c(13,10))
	Do msg.TextData.Write("詳細: "_pRequest.Description_$c(13,10))
	Do msg.TextData.Write("株価: $"_pRequest.Quote_$c(13,10))
	Do msg.TextData.Write("URL: "_pRequest.URL_$c(13,10))
	Set tSC = ..Adapter.SendMail(msg,.failedrcp)
	Quit tSC
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Demo.Company.EmailRequest"> 
		<Method>sendMail</Method>
	</MapItem>
</MapItems>
}

}
