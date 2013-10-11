//UDM v3.1.1
//**DO NOT EDIT THIS *****
if (!exclude) { //********
//************************


///////////////////////////////////////////////////////////////////////////
//
//  ULTIMATE DROPDOWN VERSION 3.1 by Brothercake
//  http://www.brothercake.com/dropdown/ 
//
//  Link-wrapping routine by Brendan Armstrong
//  http://
//
//  KDE modifications by David Joham
//  http://
//
//  Opera 5 reload/resize routine by Michael Wallner
//  http://www.wallner-software.com/
//
///////////////////////////////////////////////////////////////////////////


// *** POSITIONING AND STYLES *********************************************


var menuALIGN = "center";		// alignment
var absLEFT = 	0;		// absolute left or right position (if not center)
var absTOP = 	100; 		// absolute top position

var staticMENU = false;		// static positioning mode (ie5/6 and ns4 only)

var stretchMENU = true;		// show empty cells
var showBORDERS = true;		// show empty cell borders

var baseHREF = "/resources/";
var zORDER = 	1000;		// base z-order of nav structure (not ns4)

var mCOLOR = 	"#CEC7AD";	// main nav cell color
var rCOLOR = 	"#E7DFBD";	// main nav cell rollover color
var keepLIT =	true;		// keep rollover color when browsing menu
var bSIZE = 	1;		// main nav border size
var bCOLOR = 	"#000000"	// main nav border color
var aLINK = 	"#000000";	// main nav link color
var aHOVER = 	"#000000";		// main nav link hover-color (dual purpose)
var aDEC = 	"none";		// main nav link decoration
var fFONT = 	"verdana,arial,helvetica,sans serif";	// main nav font face		
var fSIZE = 	10;		// main nav font size (pixels)	
var fWEIGHT = 	"bold"		// main nav font weight
var tINDENT = 	7;		// main nav text indent (if text is left or right aligned)
var vPADDING = 	7;		// main nav vertical cell padding
var vtOFFSET = 	0;		// main nav vertical text offset (+/- pixels from middle)

var vOFFSET = 	-5;		// shift the submenus vertically
var hOFFSET = 	4;		// shift the submenus horizontally

var smCOLOR = 	"#E2E0C3";	// submenu cell color
var srCOLOR = 	"#FFF9E1";	// submenu cell rollover color
var sbSIZE = 	1;		// submenu border size
var sbCOLOR = 	"#000000"	// submenu border color
var saLINK = 	"#000000";	// submenu link color
var saHOVER = 	"#29755A";		// submenu link hover-color (dual purpose)
var saDEC = 	"none";		// submenu link decoration
var sfFONT = 	"verdana,arial,helvetica,sans serif";// submenu font face		
var sfSIZE = 	10;		// submenu font size (pixels)	
var sfWEIGHT = 	"normal"	// submenu font weight
var stINDENT = 	5;		// submenu text indent (if text is left or right aligned)
var svPADDING = 2;		// submenu vertical cell padding
var svtOFFSET = 0;		// submenu vertical text offset (+/- pixels from middle)

var shSIZE =	3;		// menu drop shadow size 
var shCOLOR =	"#939393";	// menu drop shadow color
var shOPACITY = 25;		// menu drop shadow opacity (not ie4/ns4/op5)

var keepSubLIT=	true;		// keep submenu rollover color when browsing child menu	
var chvOFFSET = -3;		// shift the child menus vertically 			
var chhOFFSET = -5;		// shift the child menus horizontally 		

var closeTIMER = 330;		// menu closing delay time

var cellCLICK = true;		// links activate on TD click
var aCURSOR = "hand";		// cursor for active links (not ns4 or op5)

var altDISPLAY = "title";	// where to display alt text
var allowRESIZE=true;		// allow resize/reload


//** LINKS ***********************************************************

/*




// add main link item ("url","Link name",width,"text-alignment","_target","alt text",top position,left position,"key trigger")
addMainItem("","Site Administration",130,"center","","",0,0,""); 
	// define submenu properties (width,"align to edge","text-alignment",v offset,h offset)
	defineSubmenuProperties(130,"left","left",0,0);
	// add submenu link items ("url","Link name","_target","alt text")
	addSubmenuItem("/sys/app.cfm","Applicaions","","");
	addSubmenuItem("/sys/company.cfm","Companys","","");
	addSubmenuItem("/sys/users.cfm","Users","","");
// add main link item ("url","Link name",width,"text-alignment","_target","alt text",top position,left position,"key trigger")
addMainItem("","Property Selection",130,"center","","",0,0,""); 
	// define submenu properties (width,"align to edge","text-alignment",v offset,h offset)
	defineSubmenuProperties(130,"left","left",0,0);
	// add submenu link items ("url","Link name","_target","alt text")
	addSubmenuItem("/sys/prop.cfm?","Corporate","","");
	addSubmenuItem("/sys/prop.cfm?","Sandpiper","","");
	addSubmenuItem("/sys/prop.cfm?","Island Grand","","");
	addSubmenuItem("/sys/prop.cfm?","Sirata Beach","","");
// add main link item ("url","Link name",width,"text-alignment","_target","alt text",top position,left position,"key trigger")
addMainItem("/rates.cfm","Rates & Specials",110,"center","","",0,0,""); 
// add main link item ("url","Link name",width,"text-alignment","_target","alt text",top position,left position,"key trigger")
addMainItem("/press.html","Press Releases",110,"center","","",0,0,""); 
// add main link item ("url","Link name",width,"text-alignment","_target","alt text",top position,left position,"key trigger")
addMainItem("/menu.cfm","Menus",60,"center","","",0,0,""); 
// add main link item ("url","Link name",width,"text-alignment","_target","alt text",top position,left position,"key trigger")
addMainItem("/logout.cfm","Log Out",68,"center","","",0,0,""); 
//**DO NOT EDIT THIS *****
*/
}//***********************
//************************

