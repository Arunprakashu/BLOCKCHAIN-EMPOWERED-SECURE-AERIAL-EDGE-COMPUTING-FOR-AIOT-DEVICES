<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>
</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <%@include file="dbcon.jsp" %>
    
    <%
        
 String name=(String)session.getAttribute("uname");
 String uname=request.getParameter("name");
  String vmm=request.getParameter("vmmm");

  
 %>
    
</head>
<body>
    <div id="wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#">  <h4>Load Balancing</h4>
</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <!-- <li class="first"> <a href="index.jsp" title="Home Page">Home</a></li>
                        <li><a href="adminlogin.jsp" title="Cloud Admin">CloudSeviceProvider</a></li>
			<li><a href="userlogin.jsp" title="Cloud User">Cloud User</a></li>
                        <li><a href="register.jsp" title="New User">New User</a></li>-->
                    </ul> 
                </div>

            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                <    <li class="text-center user-image-back">
                        <img src="assets/img/find_user.png" class="img-responsive" />
                     
                    </li>


                    <li>
                        <a href="search.jsp"><i class="fa fa-desktop "></i>SEARCH FILE</a>
                    </li>
                   
                    <li>
                        <a href="vfiles.jsp"><i class="fa fa-table "></i>VIEW FILES</a>
                    </li>
                  <li>
                        <a href="user_downloadlist.jsp"><i class="fa fa-table "></i>DOWNLOADED FILES</a>
                    </li>
                    <li>
                        <a href="index.jsp"><i class="fa fa-edit "></i>SIGN OUT</a>
                    </li>
                  
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2></h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        
                      
                                <center>
                    <%
           
        int i=0;
         String n=session.getAttribute("un").toString();
       String qry1="select * from download where username='"+n+"'";
       String path="";
       
       ResultSet rs=stmt.executeQuery(qry1);
       out.println("<table border=1 align=center width='80%'>");
     out.println("<tr style='height:40px;margin-left:40px;'><th>S.NO</th><th>File</th><th>FileType</th></tr>");
       while(rs.next())
            {
            
   out.println("<tr style='height:40px;'><td>"+ ++i +"</td>");
   out.println("<td>"+rs.getString(1)+"</td>");
   out.println("<td>"+rs.getString(2)+"</td>");
 // out.println("<td>"+"<a href=delete.jsp?id="+ rs.getString(1)+">"+" DeleteFile"+"</a></td></tr>");
      //  path="/WEB-INF/Uploads/"+rs.getString(2);
       
     %>
     
     <%
         }
     out.println("</table>");    
            
%>
			
				
				
                
            </center>
                    </div>
                    

                </div>
                <!-- /. ROW  -->
            </div>
        </div>
    </div>
               
    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>
</html>
