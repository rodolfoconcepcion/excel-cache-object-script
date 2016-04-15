Class Excel.WorkSheet Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

Property Table As Excel.Table;

Property WorksheetOptions As Excel.WorksheetOptions;

Method Normalize(debug As %Boolean)
{
	do ..Table.Normalize(debug)
}

Method %OnNew() As %Status
{
	set ..Table=##class(Excel.Table).%New()
	set ..WorksheetOptions=##class(Excel.WorksheetOptions).%New()
	quit $system.Status.OK()
}

/// Return the desired cell
Method Cell(row As %Integer, col As %Integer) As Excel.Cell
{
	quit ..Table.Cell(row,col)
}

/// Return the necessary line
Method Row(row As %Integer) As Excel.Row
{
	quit ..Table.Row(row)
}

/// Return the column
Method Column(num As %Integer) As Excel.Column
{
	quit ..Table.Column(num)
}

}
