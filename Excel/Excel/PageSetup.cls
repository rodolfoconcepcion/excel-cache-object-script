Class Excel.PageSetup Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

Property Layout As Excel.Layout;

Property PageMargins As Excel.PageMargins;

Method %OnNew() As %Status
{
	set ..Layout=##class(Excel.Layout).%New()
	set ..PageMargins=##class(Excel.PageMargins).%New()
	quit 1
}

}
