Class Excel.ExcelWorkbook Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

Property xmlns As %String(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "urn:schemas-microsoft-com:office:excel" ];

Property WindowHeight As %Integer;

Property WindowWidth As %Integer;

Property WindowTopX As %Integer;

Property WindowTopY As %Integer;

Property ProtectStructure As %String [ InitialExpression = "False" ];

Property ProtectWindows As %String [ InitialExpression = "False" ];

Property DisplaySmartTags As %String [ InitialExpression = "None" ];

Property RefModeR1C1 As %String(XMLPROJECTION = "ELEMENT");

}
