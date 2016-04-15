/// XML Excel Template
Class Excel.Test Extends Excel.Document {

ClassMethod Test() {
	#dim excel as Excel.Document
	set excel=..%New()
	set excel.Indent=0	//Indentation XML file

	set styleIdDefault="Default"
	set excel.Style(styleIdDefault).Alignment.Vertical="Bottom"
	set excel.Style(styleIdDefault).Font.FontName="Arial"
	set excel.Style(styleIdDefault).Font.Family="Swiss"
	set excel.Style(styleIdDefault).Font.Color="#000000"

	set styleId(1)="m120530688"
	set excel.Style(styleId(1)).Alignment.Horizontal="Center"
	set excel.Style(styleId(1)).Alignment.Vertical="Top"
	set excel.Style(styleId(1)).BorderBottom.LineStyle="Continuous"
	set excel.Style(styleId(1)).BorderBottom.Weight=1
	set excel.Style(styleId(1)).BorderLeft.LineStyle="Continuous"
	set excel.Style(styleId(1)).BorderLeft.Weight=1
	set excel.Style(styleId(1)).BorderRight.LineStyle="Continuous"
	set excel.Style(styleId(1)).BorderRight.Weight=1
	set excel.Style(styleId(1)).BorderTop.LineStyle="Continuous"
	set excel.Style(styleId(1)).BorderTop.Weight=1
	set excel.Style(styleId(1)).Font.FontName="Arial"
	set excel.Style(styleId(1)).Font.Family="Swiss"
	set excel.Style(styleId(1)).Font.Color="#000000"
	set excel.Style(styleId(1)).Font.Bold=1
	set excel.Style(styleId(1)).Interior.Color="#D9D9D9"
	set excel.Style(styleId(1)).Interior.Pattern="Solid"
	
	set styleId(2)="s62"
	set excel.Style(styleId(2)).Alignment.Horizontal="Left"
	set excel.Style(styleId(2)).Alignment.Vertical="Top"

	set styleId(3)="s64"
	set excel.Style(styleId(3)).Alignment.Horizontal="Left"
	set excel.Style(styleId(3)).Alignment.Vertical="Top"
	set excel.Style(styleId(3)).BorderBottom.LineStyle="Continuous"
	set excel.Style(styleId(3)).BorderBottom.Weight=1
	set excel.Style(styleId(3)).BorderLeft.LineStyle="Continuous"
	set excel.Style(styleId(3)).BorderLeft.Weight=1
	set excel.Style(styleId(3)).BorderRight.LineStyle="Continuous"
	set excel.Style(styleId(3)).BorderRight.Weight=1
	set excel.Style(styleId(3)).BorderTop.LineStyle="Continuous"
	set excel.Style(styleId(3)).BorderTop.Weight=1

	set styleId(4)="s65"
	set excel.Style(styleId(4)).Alignment.Horizontal="Left"
	set excel.Style(styleId(4)).Alignment.Vertical="Top"
	set excel.Style(styleId(4)).BorderBottom.LineStyle="Continuous"
	set excel.Style(styleId(4)).BorderBottom.Weight=1
	set excel.Style(styleId(4)).BorderLeft.LineStyle="Continuous"
	set excel.Style(styleId(4)).BorderLeft.Weight=1
	set excel.Style(styleId(4)).BorderRight.LineStyle="Continuous"
	set excel.Style(styleId(4)).BorderRight.Weight=1
	set excel.Style(styleId(4)).BorderTop.LineStyle="Continuous"
	set excel.Style(styleId(4)).BorderTop.Weight=1
	set excel.Style(styleId(4)).Format="Short Date"

	set styleId(5)="s66"
	set excel.Style(styleId(5)).Alignment.Horizontal="Left"
	set excel.Style(styleId(5)).Alignment.Vertical="Top"
	set excel.Style(styleId(5)).Format="Short Date"

	set styleId(6)="s67"
	set excel.Style(styleId(6)).Alignment.Horizontal="Left"
	set excel.Style(styleId(6)).Alignment.Vertical="Top"
	set excel.Style(styleId(6)).Font.FontName="Arial"
	set excel.Style(styleId(6)).Font.Family="Swiss"
	set excel.Style(styleId(6)).Font.Color="#000000"
	set excel.Style(styleId(6)).Font.Bold=1

	set styleId(7)="s82"
	set excel.Style(styleId(7)).Alignment.Horizontal="Center"
	set excel.Style(styleId(7)).Alignment.Vertical="Top"
	set excel.Style(styleId(7)).BorderBottom.LineStyle="Continuous"
	set excel.Style(styleId(7)).BorderLeft.LineStyle="Continuous"
	set excel.Style(styleId(7)).BorderRight.LineStyle="Continuous"
	set excel.Style(styleId(7)).BorderTop.LineStyle="Continuous"
	set excel.Style(styleId(7)).BorderBottom.Weight=1
	set excel.Style(styleId(7)).BorderLeft.Weight=1
	set excel.Style(styleId(7)).BorderRight.Weight=1
	set excel.Style(styleId(7)).BorderTop.Weight=1
	set excel.Style(styleId(7)).Format="Short Date"
	set excel.Style(styleId(7)).Font.FontName="Arial"
	set excel.Style(styleId(7)).Font.Family="Swiss"
	set excel.Style(styleId(7)).Font.Color="#000000"
	set excel.Style(styleId(7)).Font.Bold=1
	set excel.Style(styleId(7)).Interior.Color="#D9D9D9"
	set excel.Style(styleId(7)).Interior.Pattern="Solid"




	set ws1="timesheet_week_12_2016-03-06_20"
	set excel.WorkSheet("Data").Column(1).Width=300
	set excel.WorkSheet("Data").Column(2).Width=60
	set excel.WorkSheet("Data").Column(2).AutoFitWidth=0
	set excel.WorkSheet("Data").Column(4).Width=200
	do excel.WorkSheet("Data").Cell(1,2).SetData("Hello 979","String",styleId(1))
	do excel.WorkSheet("Data").Cell(10,3).SetData("Blah blah 2342","String")
	do excel.WorkSheet("Data").Cell(2,1).SetData(10.1,"Number",styleId(1),,2)
	do excel.WorkSheet("Data").Cell(3,2).SetData(10000/3,"Number",styleId(1))
	do excel.WorkSheet("Data").Cell(3,3).SetData($horolog,"DateTime",styleId(2),2,2)

	do excel.WorkSheet("These2").Cell(1,3).SetData("Second page","String")
	#;do excel.WorkSheet("Data").Cell(1,2).KillData()
	set excel.WorkSheet("Data").Row(1).Height=100
	set excel.WorkSheet("These2").Row(1).AutoFitHeight=1
	do excel.SaveToFile("c:\timesheets\excel_test_1.xls")
}

}

