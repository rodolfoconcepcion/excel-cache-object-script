Class Excel.OfficeDocumentSettings Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

Property xmlns As %String(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "urn:schemas-microsoft-com:office:office" ];

Property AllowPNG As %String;

Method %OnNew() As %Status
{
	#;set ..AllowPNG=$char(0)	// NULL value to create this xml output: <AllowPNG/>
	quit $system.Status.OK()
}

}
