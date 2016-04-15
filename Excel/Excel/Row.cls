Class Excel.Row Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

Property Cells As array Of Excel.Cell(XMLKEYNAME = "ss:Index", XMLNAME = "Cell", XMLPROJECTION = "XELEMENT");

/// Automatic alignment height of the cell
/// 0,1
Property AutoFitHeight As %Integer(XMLNAME = "ss:AutoFitHeight", XMLPROJECTION = "ATTRIBUTE");

/// cell height
Property Height As %Integer(XMLNAME = "ss:Height", XMLPROJECTION = "ATTRIBUTE");

/// Return the desired cell
Method Cell(num As %Integer) As Excel.Cell
{
	quit:(num="") ""
	do:'..Cells.IsDefined(num) ..Cells.SetAt(##class(Excel.Cell).%New(),num)	
	quit ..Cells.GetAt(num)
}

/// Forced removal of the cell
Method KillCell(num As %Integer, debug As %Boolean = 0)
{
	write:debug "res=",..Cells.IsDefined(num)
	do:..Cells.IsDefined(num) ..Cells.RemoveAt(num)
}

}
