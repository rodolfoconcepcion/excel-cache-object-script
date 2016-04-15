Class Excel.Column Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

/// Width column
Property Width As %String(XMLNAME = "ss:Width", XMLPROJECTION = "ATTRIBUTE");

/// Autogrowth
Property AutoFitWidth As %String(XMLNAME = "ss:AutoFitWidth", XMLPROJECTION = "ATTRIBUTE");

}
