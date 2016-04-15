Class Excel.Style Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

/// Style name, arbitrarily <br>
/// But definitely has a style Default <br>
Property Name As %String(XMLNAME = "ss:Name", XMLPROJECTION = "ATTRIBUTE");

/// The object that holds the alignment properties
Property Alignment As Excel.Alignment;

/// array boundaries
Property Borders As array Of Excel.Border(XMLKEYNAME = "ss:Position");

/// Fonts 
Property Font As Excel.Font;

Property Interior As Excel.Interior;

/// Data format for the job. actually stored NumberFormat <br>
/// dd/mm/yyyy<br>
/// #,##0.00<br>
/// Short Date<br>
Property Format As %String(XMLPROJECTION = "NONE") [ Calculated ];

Property Protection As %String;

Method FormatGet() As %String
{
	quit ..NumberFormat.Format
}

Method FormatSet(value As %String) As %Status
{
	set:..NumberFormat="" ..NumberFormat=##class(Excel.NumberFormat).%New()
	set ..NumberFormat.Format=value
	quit $system.Status.OK()
}

/// The format of the numeric data storage
Property NumberFormat As Excel.NumberFormat;

/// The left boundary
Property BorderLeft As Excel.Border(XMLPROJECTION = "NONE") [ Calculated ];

/// right border
Property BorderRight As Excel.Border(XMLPROJECTION = "NONE") [ Calculated ];

/// Upper limit
Property BorderTop As Excel.Border(XMLPROJECTION = "NONE") [ Calculated ];

/// Bottom line
Property BorderBottom As Excel.Border(XMLPROJECTION = "NONE") [ Calculated ];

/// Appeal to the border, if necessary, its creation
Method Border(key) As Excel.Border [ Private ]
{
	do:'..Borders.IsDefined(key) ..Borders.SetAt(##class(Excel.Border).%New(),key)
	quit ..Borders.GetAt(key)
}

Method BorderLeftGet()
{
	quit ..Border("Left")
}

Method BorderRightGet()
{
	quit ..Border("Right")
}

Method BorderBottomGet()
{
	quit ..Border("Bottom")
}

Method BorderTopGet()
{
	quit ..Border("Top")
}

Method %OnNew() As %Status
{
	set ..Alignment=##class(Excel.Alignment).%New()
	set ..Font=##class(Excel.Font).%New()
	set ..Interior=##class(Excel.Interior).%New()
	set ..Protection=$char(0)
	quit $system.Status.OK()
}

}
