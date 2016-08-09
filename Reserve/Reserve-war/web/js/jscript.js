function empty() {
    var x;
    x = document.getElementById("id").value;
    if (x == "") {
        alert("Enter a Valid Roll Number");
        return false;
    };
}
		  
function validate() {
	 var box = document.getElementById("name");
	 var box1 = document.getElementById("email");
	 var box2 = document.getElementById("message");

	 if (box.value.length < 1) {
		 alert("Please fill necessary fields!!");
		 box.focus();
		 box.style.border = "solid 3px red";
		 return false;
	 
	 }
	 if (box1.value.length < 1) {
		 alert("Please fill necessary fields!!");
		 box.style.border = "solid 3px #1a1aff";
		 box1.focus();
		 box1.style.border = "solid 3px red";
		 return false;
	 }
	 if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(box1.value))){
		alert("You have entered an invalid email address!");
		 box.style.border = "solid 3px #1a1aff";
		box1.focus();
		box1.style.border = "solid 3px red";
		return false;
		
	 }
	 if (box2.value.length < 1) {
		 alert("Please fill necessary fields!!");
		 box2.focus();
		  box.style.border = "solid 3px #1a1aff";
		 box1.style.border = "solid 3px #1a1aff";
		 box2.style.border = "solid 3px red";
		 return false;
	 }else{
		 box1.style.border = "solid 3px #1a1aff";
		 box2.style.border = "solid 3px #1a1aff";
		alert("Your message has successfully been submitted!!!");
                return true;
            }	
 }
 
 function validateUpdateForm() {
    var a = document.forms["update-form"]["updateid"].value;
    if (a === null || a === "" ||isNaN(a)){
        alert("Please enter a valid Id");
       
        return false;
    }
    var b = document.forms["update-form"]["name"].value;
    if (b == null || b == "") {
        alert("Name must be filled");
       
        return false;
    }
    
    var d = document.forms["update-form"]["address"].value;
    if (d == null || d == "") {
        alert("Address must be filled");
       
        return false;
    }
    var c = document.forms["update-form"]["age"].value;
    if (c == null || c == "") {
        alert("Age must be filled");
       
        return false;
    }
    var e = document.forms["update-form"]["phone"].value;
    if (e == null || e == "") {
        alert("Phone must be filled");
       
        return false;
    }
    var f = document.forms["update-form"]["email"].value;
    var atpos = f.indexOf("@");
    var dotpos = f.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }   
}

function validateDeleteForm() {
    var a = document.forms["delete-form"]["id"].value;
    if (a === null || a === "" || isNaN(a)) {
        alert("Please enter a valid Id");
       
        return false;
    }
 } 
 function ValidateSearchForm() {
    var a = document.forms["search-form"]["searchID"].value;
    if (a === null || a === "" || isNaN(a)) {
        alert("Please enter a valid Id");
       
        return false;
    }
 } 
 function ValidateSearchForm2() {
    var a = document.forms["searchme-form"]["searchID"].value;
    if (a === null || a === "" || isNaN(a)) {
        alert("Please enter a valid Id");
       
        return false;
    }
 } 
 
 function validateForm() {
    var a = document.forms["add-form"]["addid"].value;
    if (a === null || a === "" || isNaN(a)) {
        alert("Please enter a valid Id");
       
        return false;
    }
    var b = document.forms["add-form"]["name"].value;
    if (b == null || b == "") {
        alert("Name must be filled");
       
        return false;
    }
    
    var d = document.forms["add-form"]["address"].value;
    if (d == null || d == "") {
        alert("Address must be filled");
       
        return false;
    }
    var c = document.forms["add-form"]["age"].value;
    if (c == null || c == "") {
        alert("Age must be filled");
       
        return false;
    }
    var e = document.forms["add-form"]["phone"].value;
    if (e == null || e == "") {
        alert("Phone must be filled");
       
        return false;
    }
    var f = document.forms["add-form"]["email"].value;
    var atpos = f.indexOf("@");
    var dotpos = f.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}

function ValidateManageAddForm() {
    var a = document.forms["manage-add-form"]["Manageaddid"].value;
    if (a === null || a === "" || isNaN(a)) {
        alert("Please enter a valid Id");
       
        return false;
    }
    var b = document.forms["manage-add-form"]["name"].value;
    if (b == null || b == "") {
        alert("Name must be filled");
       
        return false;
    }
    
    var d = document.forms["manage-add-form"]["address"].value;
    if (d == null || d == "") {
        alert("Address must be filled");
       
        return false;
    }
    var c = document.forms["manage-add-form"]["age"].value;
    if (c == null || c == "") {
        alert("Age must be filled");
       
        return false;
    }
    var e = document.forms["manage-add-form"]["phone"].value;
    if (e == null || e == "") {
        alert("Phone must be filled");
       
        return false;
    }
    var f = document.forms["manage-add-form"]["email"].value;
    var atpos = f.indexOf("@");
    var dotpos = f.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}

function ValidateManageUpdateForm() {
    var a = document.forms["manage-update-form"]["Manageupdateid"].value;
    if (a === null || a === "" || isNaN(a)) {
        alert("Please enter a valid Id");
       
        return false;
    }
    var b = document.forms["manage-update-form"]["name"].value;
    if (b == null || b == "") {
        alert("Name must be filled");
       
        return false;
    }
    var c = document.forms["manage-update-form"]["age"].value;
    if (c == null || c == "") {
        alert("Age must be filled");
       
        return false;
    }
    var d = document.forms["manage-update-form"]["address"].value;
    if (d == null || d == "") {
        alert("Address must be filled");
       
        return false;
    }
    var e = document.forms["manage-update-form"]["phone"].value;
    if (e == null || e == "") {
        alert("Phone must be filled");
       
        return false;
    }
    var f = document.forms["manage-update-form"]["email"].value;
    var atpos = f.indexOf("@");
    var dotpos = f.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}


