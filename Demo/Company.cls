Class Demo.Company Extends %Persistent [ Language = objectscript ]
{

Property name As %String(MAXLEN = 50);

Property symbol As %String(MAXLEN = 10);

Property description As %String(MAXLEN = 100);

Property url As %String(MAXLEN = 100);

ClassMethod Init() [ Language = objectscript ]
{
	do ..%KillExtent()
	&sql(insert into demo.company(name,symbol,description,url) values ('Intel','INTC','CPUチップのトップメーカー','http://www.intel.co.jp/'))
	&sql(insert into demo.company(name,symbol,description,url) values ('HP','HPQ','大手パソコンとプリンターメーカー','http://welcome.hp.com/country/jp/ja/welcome.html'))
	&sql(insert into demo.company(name,symbol,description,url) values ('Dell','DELL','PCダイレクト販売のパイオニア','http://www.dell.co.jp/'))
	&sql(insert into demo.company(name,symbol,description,url) values ('Microsoft','MSFT','Windowsは圧倒的なシェアを誇る','http://www.microsoft.com/'))
	&sql(insert into demo.company(name,symbol,description,url) values ('IBM','IBM','老舗のITベンダー','http://www.ibm.co.jp/'))
}

Storage Default
{
<Data name="CompanyDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>symbol</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>url</Value>
</Value>
</Data>
<DataLocation>^Demo.CompanyD</DataLocation>
<DefaultData>CompanyDefaultData</DefaultData>
<IdLocation>^Demo.CompanyD</IdLocation>
<IndexLocation>^Demo.CompanyI</IndexLocation>
<StreamLocation>^Demo.CompanyS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
