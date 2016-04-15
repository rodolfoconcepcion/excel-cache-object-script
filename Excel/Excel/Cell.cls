Class Excel.Cell Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

Property StyleId As %String(XMLNAME = "ss:StyleID", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "Default" ];

Property MergeAcross As %String(XMLNAME = "ss:MergeAcross", XMLPROJECTION = "ATTRIBUTE");

Property MergeDown As %String(XMLNAME = "ss:MergeDown", XMLPROJECTION = "ATTRIBUTE");

Property Data As Excel.Data;

/// Record data in the cell
/// Attention! When DateTime record serve $Horolog
Method SetData(value As %String, type As %String = "String", styleid As %String = "Default", expandleft As %Integer = "", expanddown As %Integer = "")
{
	if type="DateTime" {
		//set value=$zdate(value,3)_"T00:00:00.000"
		set value=$zdatetime(value,3,7)		// ie: 2016-03-14T15:54:01Z
	}
	set ..StyleId=styleid
	set ..Data=##class(Excel.Data).%New()
	set ..Data.Type=type
	set ..Data.Value=value
	set ..MergeAcross=expandleft
	set ..MergeDown=expanddown
}

Method KillData()
{
	set ..StyleId="Default"
	set ..Data=""
}

}
