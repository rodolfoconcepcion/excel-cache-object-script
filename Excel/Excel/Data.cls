Class Excel.Data Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

/// Cell Type: String,Nubmer,DateTime
Property Type As %String(VALUELIST = ",String,Nubmer,DateTime", XMLNAME = "ss:Type", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "String" ];

Property Value As %String(XMLPROJECTION = "CONTENT");

}
