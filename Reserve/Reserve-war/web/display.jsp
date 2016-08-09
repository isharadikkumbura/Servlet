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

        <link href="css/css-edited.css" rel="stylesheet">
        <!-- Bootstrap -->
        <script src= "/js/jscript.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>



    <body>

        <div class="body">
            <div class="modal-content">

                <div id="me" class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 style="text-align:center">Search Employee details</h4>
                </div>
                <div class="modal-body" style="text-align:left">
                    <div class="container">
                        <div class="jumbotron">
                            <div class="container text-center">
                                <div class="panel panel-success">

                                    <div class="panel-heading">
                                        <form action="display.jsp" id="searchme-form" onsubmit="return ValidateSearchForm2()">
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
            <div class="modal-footer">

                <a href="fullform.jsp" class="btn btn-primary" role="button">Back</a>
                <a href="index.jsp" class="btn btn-primary" role="button">Home</a>
            </div>															

        </div>	



        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript">

        </script>
    </body>
</html>	
