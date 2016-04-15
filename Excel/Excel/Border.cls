Class Excel.Border Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

/// line Style
/// Continuous,DashDot,DashDotDot
Property LineStyle As %String(VALUELIST = ",Continuous,DashDot,DashDotDot", XMLNAME = "ss:LineStyle", XMLPROJECTION = "ATTRIBUTE");

/// Color line
/// #808080,#FF0000
Property Color As %String(XMLNAME = "ss:Color", XMLPROJECTION = "ATTRIBUTE");

/// The thickness of the line
/// 1,2,3
Property Weight As %Integer(XMLNAME = "ss:Weight", XMLPROJECTION = "ATTRIBUTE");

}
