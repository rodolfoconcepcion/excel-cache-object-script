Class Excel.WorksheetOptions Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

Property PageSetup As Excel.PageSetup;

Property xmlns As %String(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "urn:schemas-microsoft-com:office:excel" ];

Method %OnNew() As %Status
{
	set ..PageSetup=##class(Excel.PageSetup).%New()
	quit 1
}

}
