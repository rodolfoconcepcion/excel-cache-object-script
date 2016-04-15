/// Class responsible for filling the cell
Class Excel.Interior Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

/// Fill Color
/// #FF0000 
Property Color As %String(XMLNAME = "ss:Color", XMLPROJECTION = "ATTRIBUTE");

/// Fill Pattern
/// Solid,Gray125,Gray75,Gray50,Gray25,HorzStripe,VertStripe,ReverseDiagStripe
/// ThinDiagStripe,DiagCross,ThickDiagCross,ThinHorzCross,ThinDiagCross 
Property Pattern As %String(XMLNAME = "ss:Pattern", XMLPROJECTION = "ATTRIBUTE");

/// Additional color pattern
/// #000000
Property PatternColor As %String(XMLNAME = "ss:PatternColor", XMLPROJECTION = "ATTRIBUTE");

}
