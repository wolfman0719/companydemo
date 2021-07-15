/// 
Class Demo.Company.BP Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Demo.Company.ProcessRequest' response='Demo.Company.ProcessResponse' height='2000' width='2000' >
<context>
<property name='Symbol' type='%String' instantiate='0' />
<property name='Description' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='Name' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='URL' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='Quote' type='%Float' instantiate='0' />
</context>
<sequence xend='200' yend='550' >
<call name='CallInfo' target='Demo.Company.InfoOperation' async='0' xpos='200' ypos='250' >
<request type='Demo.Company.InfoRequest' >
<assign property="callrequest.Name" value="request.Name" action="set" />
</request>
<response type='Demo.Company.InfoResponse' >
<assign property="response.Description" value="callresponse.Description" action="set" />
<assign property="response.URL" value="callresponse.URL" action="set" />
<assign property="context.Symbol" value="callresponse.Symbol" action="set" />
<assign property="context.Description" value="callresponse.Description" action="set" />
<assign property="context.Name" value="request.Name" action="set" />
<assign property="context.URL" value="callresponse.URL" action="set" />
</response>
</call>
<call name='CallQuote' target='Demo.Company.QuoteOperation' async='0' xpos='200' ypos='350' >
<request type='Demo.Company.QuoteRequest' >
<assign property="callrequest.Symbol" value="context.Symbol" action="set" />
</request>
<response type='Demo.Company.QuoteResponse' >
<assign property="response.Quote" value="callresponse.Quote" action="set" />
<assign property="context.Quote" value="callresponse.Quote" action="set" />
</response>
</call>
<call name='CallEmail' target='Demo.Company.EmailOperation' async='1' xpos='200' ypos='450' >
<request type='Demo.Company.EmailRequest' >
<assign property="callrequest.Description" value="context.Description" action="set" />
<assign property="callrequest.Name" value="context.Name" action="set" />
<assign property="callrequest.Quote" value="context.Quote" action="set" />
<assign property="callrequest.URL" value="context.URL" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

}
