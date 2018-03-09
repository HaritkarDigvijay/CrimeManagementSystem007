function validate() {
    
    //CustomerCode Validation
    var  cust_code= document.forms["myForm"]["customercode"].value;
	if ((cust_code == "")||(cust_code.length>10)) {
document.getElementById("code").innerHTML="Lenght must be less than 10"; 
        return false;
    }

    //CustomerName Validation
    var  cust_name= document.forms["myForm"]["customername"].value;
	if ((cust_name == "")||(cust_name.length>30)) {
      
        document.getElementById("name").innerHTML="Lenght must be less than 30"; 

        return false;
    }
	
    //CustomerAddress1 Validation
    var  address_1= document.forms["myForm"]["address1"].value;
	if ((address_1 == "")||(address_1.length>100)) {
	     document.getElementById("address1").innerHTML="Lenght must be less than 100";
        return false;
    }
	
	//CustomerAddress2 Validation
    var  address_2= document.forms["myForm"]["address2"].value;
	if ((address_2.length>100)) {
	     document.getElementById("address2").innerHTML="Lenght must be less than 100";
        return false;
    }
	
    
    //CustomerPinCode Validation
    var  pin_code= document.forms["myForm"]["pincode"].value;
	if ((pin_code == "")||(pin_code.length>6)) {
	     document.getElementById("pincode").innerHTML="Lenght must be 6";
        return false;
    }
	

    //EmailId Validation
    var  email_id= document.forms["myForm"]["emailid"].value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if ((email_id == "")||(email_id.length>100)||(!email_id.match(mailformat))) {
		
         document.getElementById("email").innerHTML="Email Id Field is Invalid";
        return false;
    }

	//ContactNumber Validation
	var  contact_no= document.forms["myForm"]["contactnumber"].value;
	if ((contact_no.length>12)) {
	     document.getElementById("contact").innerHTML="Lenght must be 10";
        return false;
    }
	
	//PrimaryContactPerson Validation
	var  primary_contact_person= document.forms["myForm"]["primarycontactperson"].value;
	if ((primary_contact_person=="")||(primary_contact_person.length>15)) {
	     document.getElementById("primary").innerHTML="Lenght must be less than 15";
        return false;
    }
	
	
	//Flag Validation
	var  activeinactive_flag= document.forms["myForm"]["statusflag"].value;
	if ((activeinactive_flag=="")||(activeinactive_flag.length>1)) {
	     document.getElementById("flag").innerHTML="Active/Inactive Field is Invalid";
        return false;
    }
	
	return true;
} 