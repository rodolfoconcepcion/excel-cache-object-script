Class Excel.DocumentProperties Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right ]
{

/// $ZTIMEZONE VALUE FOR CENTRAL STD TIME = 6 * 60 = 360
Parameter TIMEZONE = 360;

Property xmlns As %String(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "urn:schemas-microsoft-com:office:office" ];

Property Author As %String [ InitialExpression = "Concepcion, Rodolfo" ];

Property LastAuthor As %String [ InitialExpression = "Concepcion, Rodolfo" ];

/// i.e: 2016-03-14T15:54:01Z
Property Created As %String [ InitialExpression = {$zdatetime($now(..#TIMEZONE),3,7)} ];

/// i.e: 2016-03-14T15:54:01Z
Property LastSaved As %String [ InitialExpression = {$zdatetime($now(..#TIMEZONE),3,7)} ];

Property Version As %String [ InitialExpression = "14.00" ];

}
