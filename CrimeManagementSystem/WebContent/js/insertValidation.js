function validate1() {
    
    //Username Validation
    var  cust_code= document.forms["myForm"]["username"].value;
	if ((cust_code == "")||(cust_code.length>10)) {
		document.getElementById("username").innerHTML=" !!!"; 
        return false;
    }

    //Password Validation
    var  cust_name= document.forms["myForm"]["password"].value;
	if ((cust_name == "")||(cust_name.length>10)) {
      
        document.getElementById("password").innerHTML=" !!!"; 

        return false;
    }
	

	return true;
} 