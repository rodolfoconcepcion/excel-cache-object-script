Class Excel.Document Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, LegacyInstanceContext ]
{

Property xmlns As %String(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "urn:schemas-microsoft-com:office:spreadsheet" ];

Property o As %String(XMLNAME = "xmlns:o", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "urn:schemas-microsoft-com:office:office" ];

Property x As %String(XMLNAME = "xmlns:x", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "urn:schemas-microsoft-com:office:excel" ];

Property ss As %String(XMLNAME = "xmlns:ss", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "urn:schemas-microsoft-com:office:spreadsheet" ];

Property html As %String(XMLNAME = "xmlns:html", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "http://www.w3.org/TR/REC-html40" ];

Property DocumentProperties As Excel.DocumentProperties;

Property OfficeDocumentSettings As Excel.OfficeDocumentSettings;

Property ExcelWorkbook As Excel.ExcelWorkbook;

/// Indent each line
Property Indent As %Boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Work through the method Style
Property Styles As array Of Excel.Style(XMLKEYNAME = "ss:ID");

/// Work through the method WorkSheet
Property Worksheets As array Of Excel.WorkSheet(XMLKEYNAME = "ss:Name", XMLNAME = "Worksheet", XMLPROJECTION = "XELEMENT");

Property Debug As %Boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Get the style you want, if not - create
Method Style(name As %String = "") As Excel.Style
{
	quit:(name="") ""
	do:'..Styles.IsDefined(name) ..Styles.SetAt(##class(Excel.Style).%New(),name)
	quit ..Styles.GetAt(name)
}

/// Get the right list, if not - create
Method WorkSheet(name As %String = "") As Excel.WorkSheet
{
	quit:(name="") ""
	do:'..Worksheets.IsDefined(name) ..Worksheets.SetAt(##class(Excel.WorkSheet).%New(),name)
	quit ..Worksheets.GetAt(name)
}

/// Correction of errors, including the expansion of cross-cells
/// Testing of styles and types of cells (not yet implemented)
Method Normalize()
{
	set key=""
	for {
		set key=..Worksheets.Next(key)
		quit:(key="")
		do ..Worksheets.GetAt(key).Normalize(..Debug)
	}
}

/// Create a dummy document, initialize nested objects
Method %OnNew() As %Status
{
	set ..DocumentProperties=##class(Excel.DocumentProperties).%New()
	set ..OfficeDocumentSettings=##class(Excel.OfficeDocumentSettings).%New()
	set ..ExcelWorkbook=##class(Excel.ExcelWorkbook).%New()
	set ..Style("Default").Name="Normal"
	quit $system.Status.OK()
}

Method SaveToFile(filename As %String)
{
	do ..Normalize()  
	set writer=##class(%XML.Writer).%New()
	#;set writer.Charset="windows-1251"
	do writer.OutputToFile(filename)
	set writer.Indent=..Indent
	do writer.Write("<?mso-application progid=""Excel.Sheet""?>")
	do writer.RootObject(%this,"Workbook")
}

Method SaveToGlobal(location As %String)
{
	kill @location
	do ..Normalize() 
	set stream=##class(%GlobalCharacterStream).%New()
	do stream.%LocationSet(location)
	do stream.Clear()

	set writer=##class(%XML.Writer).%New()
	#;set writer.Charset="windows-1251"
	do writer.OutputToStream(stream)
	do writer.Write("<?mso-application progid=""Excel.Sheet""?>")
	do writer.RootObject(%this,"Workbook")

	do stream.%Save()
}

}
