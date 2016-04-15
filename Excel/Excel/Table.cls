Class Excel.Table Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

Property Columns As array Of Excel.Column(XMLKEYNAME = "ss:Caption", XMLNAME = "Column", XMLPROJECTION = "XELEMENT");

Property Rows As array Of Excel.Row(XMLKEYNAME = "ss:Index", XMLNAME = "Row", XMLPROJECTION = "XELEMENT");

/// Return the necessary line
Method Row(num As %Integer) As Excel.Row
{
	quit:num="" ""
	if '..Rows.IsDefined(num)  {
		set i1=..Rows.Count()+1
		for i=i1:1:num {
			do ..Rows.SetAt(##class(Excel.Row).%New(),i)
		}
	}
	quit ..Rows.GetAt(num)
}

/// Return the column
Method Column(num As %Integer) As Excel.Column
{
	quit:num="" ""
	if '..Columns.IsDefined(num) {
		set i1=..Columns.Count()+1
		for i=i1:1:num {
			do ..Columns.SetAt(##class(Excel.Column).%New(),i)
		}
	}
	quit ..Columns.GetAt(num)
}

/// Return the desired cell
Method Cell(row As %Integer, col As %Integer)
{
	quit ..Row(row).Cell(col)
}

Method Normalize(debug As %Boolean)
{
	for row=1:1:..Rows.Count() {
		for col=1:1:255	{
			continue:'..Row(row).Cells.IsDefined(col) //cells no longer
			set mergeleft=..Row(row).Cell(col).MergeAcross
			set mergedown=..Row(row).Cell(col).MergeDown
			write:debug !,"test row=",row," col=",col," left=",+mergeleft," down=",+mergedown
			for i=0:1:mergeleft {
				for j=0:1:mergedown	{
					write:debug&&((i>0)||(j>0)) !,"kill row=",row+j," col=",col+i," "
					do:(i>0)||(j>0) ..Row(row+j).KillCell(col+i,debug)
				}
			}
		}
	}
}

}
