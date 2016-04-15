Class Excel.Font Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

/// font
/// Arial, MS Sans Serif, etc
Property FontName As %String(XMLNAME = "ss:FontName", XMLPROJECTION = "ATTRIBUTE");

/// Font font family. It is not clear whether this effects on anything
/// Serif,Roman	
Property Family As %String(XMLNAME = "x:Family", XMLPROJECTION = "ATTRIBUTE");

/// Font Color
/// #000000
Property Color As %String(XMLNAME = "ss:Color", XMLPROJECTION = "ATTRIBUTE");

/// What is it - I do not know, maybe the code page
/// 204
Property CharSet As %String(XMLNAME = "x:CharSet", XMLPROJECTION = "ATTRIBUTE");

Property Size As %Integer(XMLNAME = "ss:Size", XMLPROJECTION = "ATTRIBUTE");

/// Boldness
/// 1
Property Bold As %Integer(XMLNAME = "ss:Bold", XMLPROJECTION = "ATTRIBUTE");

/// Italic
/// 1
Property Italic As %Integer(XMLNAME = "ss:Italic", XMLPROJECTION = "ATTRIBUTE");

/// Underline, different types are possible
/// Single, Double
Property Underline As %Integer(VALUELIST = ",Single,Double", XMLNAME = "ss:Underline", XMLPROJECTION = "ATTRIBUTE");

}
