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
        <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link href="css/layout.css" rel="stylesheet" type="text/css" media="all">

    </head>


    <body>

        <div class="emp-body">
            <div class="emp">
            <div class="container">
                <div class="jumbotron">
                    
                    <div class="btn-group" class="left">
                        <button type="button" id="addme" class="btn btn-primary">Add</button>
                        <button type="button" id="searchme" class="btn btn-primary">Search</button>
                        <button type="button" id="updateme" class="btn btn-primary">Update</button>
                        <button type="button" id="deleteme" class="btn btn-primary">Delete</button>
                        <button type="button" id="viewall" class="btn btn-primary">View All</button>
                    </div>
                    <div style="text-align: right" class="right">
                        <a href="index.jsp" class="btn btn-primary" role="button">Home</a>
                    </div>
                    

                    <div id="adddiv" >
                        <div class="modal-content">
                            <form role="form" class="form-horizontal"  id="manage-add-form" onsubmit="return ValidateManageAddForm()" method="post" action="Employee">
                                <div id="me" class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h4 style="text-align:center;color:#fff;">Add Customer</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="contact-name" class="col-sm-2 control-label">ID</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="Manageaddid" id="Manageaddid" placeholder="1">
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





                    <div id="searchdiv" >
                        <div class="modal-content">

                            <div id="me" class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 style="text-align:center;color:#fff;">Search Employee details</h4>
                            </div>
                            <div class="modal-body" style="text-align:left">
                                <div class="container">
                                    <div class="jumbotron">
                                        <div class="container text-center">
                                            <div class="panel panel-success">

                                                <div class="panel-heading">
                                                    <form action="display.jsp" id="search-form" onsubmit="return ValidateSearchForm()">
                                                        <label>Employee ID:</label>
                                                        <input type="text" name="searchID">
                                                        <input class="btb btn-primary" type="submit" value="Search">
                                                    </form>
                                                </div>
                                            </div>

                                            <%
                                                try {
                                                    if (request.getParameter("searchID") != null) {
                                                        EmployeeModel model = EmployeeDAO.getEmployee(request.getParameter("searchID")).get(0);
                                                        out.print("<br><br><br><br>");
                                                        out.print("<label>ID:</label>" + model.getId() + "<br><br>");
                                                        out.print("<label>Name:</label>" + model.getName() + "<br><br>");
                                                        out.print("<label>Address:</label>" + model.getAddress() + "<br><br>");
                                                        out.print("<label>Email:</label>" + model.getEmail() + "<br><br>");
                                                        out.print("<label>Age:</label>" + model.getAge() + "<br><br>");
                                                        out.print("<label>Phone:</label>" + model.getPhone() + "<br><br>");
                                                        out.print("<label>Section:</label>" + model.getSection() + "<br><br>");
                                                        out.print("<label>Job Title:</label>" + model.getJob() + "<br><br>");
                                                        out.print("<label>Skills:</label>" + model.getSkills() + "<br><br>");
                                                        out.print("<label>Description:</label>" + model.getDesc() + "<br><br>");
                                                    }

                                                } catch (Exception ex) {
                                                    out.println("Employee does not exist <br><br>");
                                                    // out.print(ex.toString());
                                                    // request.setAttribute("eRes", ex.toString());
                                                }
                                            %>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       

                    </div>




                    <div id="updatediv" >


                        <div class="modal-content">

                            <form role="form" class="form-horizontal" id="manage-update-form" onsubmit="return ValidateManageUpdateForm()" method="post" action="Employee">
                                <div id="me" class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h4 style="text-align:center;color:#fff;">Update Employee</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="contact-name" class="col-sm-2 control-label">ID</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="Manageupdateid" id="Manageupdateid" >
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
                                    <input class="btn btn-primary" type="submit"  id="send-button" value="Update">
                                    <button class="btn btn-danger" type="reset">Reset</button>
                                </div>															
                            </form>

                        </div>
                    </div>



                    <div id="deletediv" >


                        <div class="modal-content">

                            <form role="form" class="form-horizontal" id="contact-form" method="post" action="Employee">
                                <div id="me" class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h4 style="text-align:center;color:#fff;">Delete Employee</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="contact-name" class="col-sm-2 control-label">ID</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="ManageDeleteID" id="id" placeholder="1">
                                        </div>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                                    <input class="btn btn-primary"  type="submit"  id="send-button" value="Delete">
                                    <button class="btn btn-danger" type="reset">Reset</button>
                                </div>															
                            </form>

                        </div>
                    </div>



                    <div id="viewalldiv" >                        
                            <div id=empall-det>                                
                                <h4 style="text-align:center;color:#fff;">All Employee Details</h4>
                            </div>
                            <table class="table table-bordered">
                                <thead class="thead-inverse">
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
                            	
                        
                    </div>  
                                    <div style="text-align: right;padding-top: 20px;">
                                     <a href="index.jsp" class="btn btn-primary" role="button">Back</a>
                                     </div>
                </div>
            </div>
        </div>
        </div>
    
    
    






    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
                                        $(document).ready(function () {
                                            $("#addme").click(function () {
                                                if ($('#adddiv').is(":hidden")) {

                                                    $('#adddiv').slideDown('slow');
                                                    $('#searchdiv').slideUp('slow');
                                                    $('#deletediv').slideUp('slow');
                                                    $('#viewalldiv').slideUp('slow');
                                                    $('#updatediv').slideUp('slow');
                                                }

                                            });
                                            $("#searchme").click(function () {
                                                if ($('#searchdiv').is(":hidden")) {

                                                    $('#searchdiv').slideDown('slow');
                                                    $('#adddiv').slideUp('slow');
                                                    $('#deletediv').slideUp('slow');
                                                    $('#viewalldiv').slideUp('slow');
                                                    $('#updatediv').slideUp('slow');

                                                }

                                            });
                                            $("#deleteme").click(function () {
                                                if ($('#deletediv').is(":hidden")) {

                                                    $('#deletediv').slideDown('slow');
                                                    $('#searchdiv').slideUp('slow');
                                                    $('#adddiv').slideUp('slow');
                                                    $('#viewalldiv').slideUp('slow');
                                                    $('#updatediv').slideUp('slow');

                                                }

                                            });
                                            $("#updateme").click(function () {
                                                if ($('#updatediv').is(":hidden")) {

                                                    $('#updatediv').slideDown('slow');
                                                    $('#searchdiv').slideUp('slow');
                                                    $('#adddiv').slideUp('slow');
                                                    $('#viewalldiv').slideUp('slow');
                                                    $('#deletediv').slideUp('slow');

                                                }

                                            });
                                            $("#viewall").click(function () {
                                                if ($('#viewalldiv').is(":hidden")) {

                                                    $('#viewalldiv').slideDown('slow');
                                                    $('#updatediv').slideUp('slow');
                                                    $('#searchdiv').slideUp('slow');
                                                    $('#adddiv').slideUp('slow');
                                                    $('#deletediv').slideUp('slow');

                                                }

                                            });

                                        });

    </script>


</body>
</html>	
