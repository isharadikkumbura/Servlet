<%@page import="dao.EmployeeDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.EmployeeModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>YouReserve</title>



        <script src= "js/jscript.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link href="css/layout.css" rel="stylesheet" type="text/css" media="all">



    </head>



    <body>
        <div class="body-main">
        <div id="aboutdiv" class="about">
             Automobile Service Reservation System which allows the vehicle owners to do their reservations efficiently. This is  a complete system for Automobile Service reservation which also consists of many other services like allowing the vehicle owners to find the nearest Automobile service Centers etc.

        </div>
        <div class="modal fade" id="add" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form role="form" class="form-horizontal"  id="add-form" onsubmit="return validateForm()" method="post" action="Employee">
                        <div id="me" class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#fff;">×</button>
                            <h4 style="text-align:center;color:#fff;">Add Employee</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="contact-name" class="col-sm-2 control-label">ID</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="addid" id="addid" placeholder="1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="name" id="name" placeholder="Navin Rajapaksha">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-message" class="col-sm-2 control-label">Address</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="address" id="address" rows="4" placeholder="No 1/65, Galle road, Colombo 6"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">E-mail</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="email" id="email" placeholder="name@gmail.com">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Phone number</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="phone" id="phone" placeholder="0771234567">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Age</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="age" id="age" placeholder="30">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Job Title</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="job" id="job" placeholder="Lathe Maxhine operator">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Section</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="section" id="section" placeholder="Lathe Machine Section">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-message" class="col-sm-2 control-label">Skills</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="skills" id="skills" rows="4" placeholder="Engine repairing,Electric welding etc"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-message" class="col-sm-2 control-label">Descreption</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="desc" id="desc" rows="4" placeholder="Type Other details"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                            <input class="btn btn-primary"  type="submit"  id="send-button" value="Add">
                            <button class="btn btn-danger" type="reset">Clear</button>
                        </div>															
                    </form>
                </div>
            </div>
        </div>	

        <div class="modal fade" id="delete" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form role="form" class="form-horizontal" id="delete-form" onsubmit="return validateDeleteForm()" method="post" action="Employee">
                        <div id="me" class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#fff;">×</button>
                            <h4 style="text-align:center;color:#fff;">Delete Employee</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="contact-name" class="col-sm-2 control-label">ID</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="eDeleteID" id="id" placeholder="1">
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                            <input class="btn btn-primary" type="submit"  id="send-button" value="Delete">
                            <button class="btn btn-danger" type="reset">Reset</button>
                        </div>															
                    </form>
                </div>
            </div>
        </div>	
            

        <div class="modal fade" id="update" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form role="form" class="form-horizontal" onsubmit="return validateUpdateForm()" id="update-form" method="post" action="Employee">
                        <div id="me" class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 style="text-align:center;color:#fff;">Update Employee</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="contact-name" class="col-sm-2 control-label">ID</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="updateid" id="updateid" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="name" id="name" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-message" class="col-sm-2 control-label">Address</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="address" id="address" rows="4" ></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">E-mail</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="email" id="email" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Phone number</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="phone" id="phone" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Age</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="age" id="age" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Job Title</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="job" id="job" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">Section</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="section" id="section" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-message" class="col-sm-2 control-label">Skills</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="skills" id="skills" rows="4" ></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-message" class="col-sm-2 control-label">Descreption</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="desc" id="desc" rows="4" ></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                            <input class="btn btn-primary"  type="submit"  id="send-button" value="Update">
                            <button class="btn btn-danger" type="reset">Reset</button>
                        </div>															
                    </form>
                </div>
            </div>
        </div>	



        <div class="modal fade" id="contact" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form role="form" class="form-horizontal" id="contact-form" method="post" onsubmit="return validate();" >
                        <div id="me" class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#fff;">×</button>
                            <h4 style="text-align:center;color:#fff;"> Contact me </h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="contact-name" class="col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="name" id="name" placeholder="Full name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-email" class="col-sm-2 control-label">E-mail</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="email" id="email" placeholder="name@gmail.com">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contact-message" class="col-sm-2 control-label">Message</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="message" id="message" rows="4" placeholder="Type your message here"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                            <input class="btn btn-primary" type="submit"  id="send-button" value="Add">
                            <button class="btn btn-danger" type="reset">Reset</button>
                        </div>															
                    </form>
                </div>
            </div>
        </div>			


        <div class="modal fade" id="viewall" role="dialog">
            <div class="modal-dialog modal-lg" >
                <div class="modal-content">
                    <div id="me" class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#fff;">×</button>
                        <h4 style="text-align:center;color:#fff;">All Employee Details</h4>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Email</th>
                                <th>Age</th>
                                <th>Phone</th>
                                <th>Job Title</th>
                                <th>Skills</th>
                                <th>Section</th>
                                <th>Description</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<EmployeeModel> list = EmployeeDAO.getAllEmployee();
                                for (EmployeeModel model : list) {
                                    out.print("<tr>");
                                    out.print("<td>" + model.getId() + "</td>");
                                    out.print("<td>" + model.getName() + "</td>");
                                    out.print("<td>" + model.getAddress() + "</td>");
                                    out.print("<td>" + model.getEmail() + "</td>");
                                    out.print("<td>" + model.getAge() + "</td>");
                                    out.print("<td>" + model.getPhone() + "</td>");
                                    out.print("<td>" + model.getJob() + "</td>");
                                    out.print("<td>" + model.getSection() + "</td>");
                                    out.print("<td>" + model.getSkills() + "</td>");
                                    out.print("<td>" + model.getDesc() + "</td>");
                                    out.print("</tr>");
                                }
                            %>

                        </tbody>
                    </table>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Back</button>

                    </div>			
                </div>
            </div>
        </div>	





        <nav class="navbar navbar-inverse navbar-fixed-top"> <!-- to add nav bar-->
            <div class="container">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" ><!-- navigation button-->
                    <span class="sr-only">Toggle Navigation</span> <!-- navigation icon-->
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">YouReserve</a> <!--brand name-->
                <div class="navbar-collapse collapse"><!-- for the menue items like home etc-->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Employees<b class="caret"></b></a>
                            <ul class="dropdown-menu" >

                                <li><a href="#add" data-toggle="modal" data-target="#add">Add</a></li>
                                <li><a href="display.jsp">Search</a></li>
                                <li><a href="#update" data-toggle="modal" data-target="#update">Update</a></li>
                                <li><a href="#delete" data-toggle="modal" data-target="#delete">Delete</a></li>
                                <li><a href="#viewall" data-toggle="modal" data-target="#viewall">View all</a></li>                                                          
                                <li role="presentation" class="divider"></li>
                                <li><a href="fullform.jsp">Manage Employees</a></li>

                            </ul>
                        </li>
                        <li><a href="#" id="about">About</a></li>

                        <li><a href="#contact" data-toggle="modal" data-target="#contact">Contact Us</a>
                            <!-- You need to set data-target as target id of your modal and data-toggle = "modal" to the button on which you want to activate the modal -->

                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="body">

            <!-- carousel -->

            <div id="infohere" class="empinfo">



            </div>
            <div id="mycarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
                <ol class="carousel-indicators">
                    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#mycarousel" data-slide-to="1"></li>
                    <li data-target="#mycarousel" data-slide-to="2"></li>
                    <li data-target="#mycarousel" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="mainimg" src="img/i1.jpg ">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Sell services</h1>
                                <p>Want to let your customers reserve your services online? </p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img class="mainimg" src="img/i2.jpg">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Repair and service</h1>
                                <p>Want to get your vehicle repaired or serviced?</p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up here</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img class="mainimg" src="img/i3.jpg">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Buy spare parts</h1>
                                <p>Find best prices and check spare parts availability</p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img class="mainimg" src="img/i4.jpg">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Gallery</h1>
                                <p>What's new?</p>
                                <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#mycarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#mycarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>

            </div>

            <!-- carousel -->

            <div class="container">
                <div class="jumbotron ">



                    <p> Welcome...!<br/>  </p> 
                    <button tupe="button" class="btn btn-success"><span class="glyphicon glyphicon-user" style="font-size:20px"> Save</span></button>
                    <button tupe="button" class="btn btn-success"><span class="glyphicon glyphicon-ok" style="font-size:20px"> Order</span></button>

                    <!-- 
                    inside row colums should be added 
                    
                    <div class="row">
                            <div class="col-sm-3">
                            <h1>col</h1>
                            </div>
                            <div class="col-sm-3">
                            <h1>col</h1>
                            </div>
                            <div class="col-sm-3">
                            <h1>col</h1>
                            </div>
                            <div class="col-sm-3">
                            <h1>col</h1>
                            </div>
                    </div>
                    
                    
                    <div class="row">
                            <h1>Hello</h1>
                    </div>
                    -->
                </div>
                <div class="page-header">
                    <h1>Buttons</h1>
                    <a class="btb btn-primary" id="about">click</a>
                    <div id="textal"><h1>Hello</h1></div>
                </div>
                <div id="aboutdiv" class="about">
                    The jQuery team is constantly working to improve the code. 
                    Each commit to the Github repo generates a work-in-progress 
                    version of the code that we update on the jQuery CDN. 
                    These versions are sometimes unstable and not suitable for 
                    production sites. We recommend they be used to determine whether
                    a bug has already been fixed when reporting bugs against 
                    released versions, or to see if new bugs have been introduced.
                    There are two versions, one for the compat branch (supports IE 8)
                    and one for the master branch (not for use with old IE).
                </div>


                <script type="text/javascript">

                    $(document).ready(function () {
                        $("#msgid").html("This is Hello World by JQuery");
                    });


                </script>

                This is Hello World by HTML

                <div id="msgid">
                </div>


            </div>
        </div>
        <div class="footerclass">



            <!-- footer-->
            <div class="navbar navbar-inverse navbar-static-bottom">
                <div class="container">
                    <div class="navbar-text pull-left">
                        <p> copyright @ishara</p>
                    </div>
                    <div class="navbar-text pull-right">
                        <a href="#"> <i class="fa fa-facebook fa-2x" aria-hidden="true"></i></a>
                        <a href="#"> <i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a>
                        <a href="#"> <i class="fa fa-linkedin fa-2x" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div> 
    </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        


        <script type="text/javascript">
                    $(document).ready(function () {
                        $("#about").click(function () {
                            if ($('#aboutdiv').is(":hidden")) {

                                $('#aboutdiv').slideDown('slow');

                            }
                            else {
                                $('#aboutdiv').slideUp('slow');
                            }
                        });

                        $("#add-form").validate({
//specify the validation rules
                            rules: {
                                name: "required",
                                
                                email: {
                                    required: true,
                                    email: true //email is required AND must be in the form of a valid email address
                                },
                                
                            },
//specify validation error messages
                            messages: {
                                
                                name: "Last Name field cannot be blank!",
                                
                                email: "Please enter a valid email address"
                            },
                            submitHandler: function (form) {
                                form.submit();
                            }

                        });
                    });



        </script>
        
    </body>
</html>	
