Class Excel.Alignment Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

/// Align horizontally
/// Center,Left,Right
Property Horizontal As %String(VALUELIST = ",Center,Left,Right", XMLNAME = "ss:Horizontal", XMLPROJECTION = "ATTRIBUTE");

/// Vertical Alignment
/// Top,Center,Bottom
Property Vertical As %String(VALUELIST = ",Top,Center,Bottom", XMLNAME = "ss:Vertical", XMLPROJECTION = "ATTRIBUTE");

/// 1- if the translation of the text in a cell
Property WrapText As %String(XMLNAME = "ss:WrapText", XMLPROJECTION = "ATTRIBUTE");

/// text Rotation
/// 90
Property Rotate As %String(XMLNAME = "ss:Rotate", XMLPROJECTION = "ATTRIBUTE");

}
