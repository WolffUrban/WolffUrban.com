//UDM v3.1.1
	
	
var siSTR='';
if (ie) { siSTR+='<script language=javascript src="' + baseHREF + 'menu_ie.js"></script>'; }
if (ns4) { siSTR+='<script language=javascript src="' + baseHREF + 'menu_ns4.js"></script>'; }
//djochange
if (ns6||mz7||konqi||op6) { siSTR+='<script language=javascript src="' + baseHREF + 'menu_ns6.js"></script>'; }
//end djochange
if (op5) { siSTR+='<script language=javascript src="' + baseHREF + 'menu_op5.js"></script>'; }


document.write(siSTR);	
	


