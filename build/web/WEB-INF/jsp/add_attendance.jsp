
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="taglib_includes.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">        
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">

        <style>
            * {box-sizing: border-box;}
            ul {list-style-type: none;}
            body {font-family: Verdana, sans-serif;}

            .month {
                padding: 25px 25px;
                width: 100%;
                background: #1087dd;
                text-align: center;
            }

            .month ul {
                margin: 0;
                padding: 0;
            }

            .month ul li {
                color: white;
                font-size: 15px;
                text-transform: uppercase;
                letter-spacing: 3px;
            }

            .month .prev {
                float: left;
                padding-top: 10px;
            }

            .month .next {
                float: right;
                padding-top: 10px;
            }

            .weekdays {
                margin: 0;
                padding: 10px 0;
                background-color: #ddd;
            }

            .weekdays li {
                display: inline-block;
                width: 13.6%;
                color: #666;
                text-align: center;
            }

            .days {
                padding: 10px 0;
                background: #eee;
                margin: 0;
            }

            .days li {
                list-style-type: none;
                display: inline-block;
                width: 13.6%;
                text-align: center;
                margin-bottom: 5px;
                font-size:12px;
                color: #777;
            }

            .days li .active {
                padding: 5px;
                background: #1087dd;
                color: white !important
            }

            /* Add media queries for smaller screens */
            @media screen and (max-width:720px) {
                .weekdays li, .days li {width: 13.1%;}
            }

            @media screen and (max-width: 420px) {
                .weekdays li, .days li {width: 12.5%;}
                .days li .active {padding: 2px;}
            }

            @media screen and (max-width: 290px) {
                .weekdays li, .days li {width: 12.2%;}
            }
        </style>

    </head>
    <body>
        <div class="container">
            <!--nav bar-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.htm">Navbar</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.htm">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                    </ul>

                    <spring:url value="/logout" var="url_logout"/>

                    <form class="form-inline">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 mr-sm-2" type="submit">Search</button>
                        <a href="${url_logout}" >Logout</a>
                    </form>
                </div>
            </nav>
            <!--jambutan-->
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 class="display-4">Teacher Dashboard</h1>
                   
                </div>
            </div>
            <!--body-->
            <div class="row">
                <div class="col-2 col-md-2">

                    <div class="list-group">
                        <a href="teacherHome.htm" class="list-group-item list-group-item-action ">Teacher Home</a>
                        <a href="noticeBoard.htm" class="list-group-item list-group-item-action">Notice</a>                                       
                        <a href="attendance.htm" class="list-group-item list-group-item-action active">Attendance</a>
                        <a href="result.htm" class="list-group-item list-group-item-action">Result</a>
                        <a href="studentsInfo.htm" class="list-group-item list-group-item-action">Students Information</a>

                    </div>
                    <!--calender--><br/>
                    <div class="month">      
                        <ul>
                            <li class="prev">&#10094;</li>
                            <li class="next">&#10095;</li>
                            <li>
                                February<br>
                                <span style="font-size:12px">2022</span>
                            </li>
                        </ul>
                    </div>

                    <ul class="weekdays">
                        <li>Mo</li>
                        <li>Tu</li>
                        <li>We</li>
                        <li>Th</li>
                        <li>Fr</li>
                        <li>Sa</li>
                        <li>Su</li>
                    </ul>

                    <ul class="days">  
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                        <li>6</li>
                        <li>7</li>
                        <li>8</li>
                        <li>9</li>
                        <li><span class="active">10</span></li>
                        <li>11</li>
                        <li>12</li>
                        <li>13</li>
                        <li>14</li>
                        <li>15</li>
                        <li>16</li>
                        <li>17</li>
                        <li>18</li>
                        <li>19</li>
                        <li>20</li>
                        <li>21</li>
                        <li>22</li>
                        <li>23</li>
                        <li>24</li>
                        <li>25</li>
                        <li>26</li>
                        <li>27</li>
                        <li>28</li>
                        <li>29</li>
                        <li>30</li>
                        <li>31</li>
                    </ul>

                </div>
                <div class="col-7 col-md-7">
                    <div class="row">
                        <div class="col-4">
                            <div class="card text-center">
                                <div class="card-header">
                                    Total Student
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title">200</h1>
                                </div>
                                <div class="card-footer text-muted">

                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card text-center">
                                <div class="card-header">
                                    Total Teachers
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title">25</h1>
                                </div>
                                <div class="card-footer text-muted">

                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card text-center">
                                <div class="card-header">
                                    Total Employee
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title">5</h1>
                                </div>
                                <div class="card-footer text-muted">

                                </div>
                            </div>
                        </div>
                    </div><br/>
                    <!--main body-->
                    <div class="row">
                        <div class="col-12">
                            <br><br/>

                            <form class="form-group" action="" method="">

                                <label>Class</label>
                                <select class="form-control" name="c_id" required="required">
                                    <option value="">Chose Class</option>
                                    <c:forEach var="cls" items="${classes}">
                                        <option value="${cls.c_id}">${cls.c_name}</option>  
                                    </c:forEach>
                                </select>
                                <br/>
                                <label>Session</label>
                                <select class="form-control" name="sess_id" required="required">
                                    <option value="">Chose Session</option>
                                    <c:forEach var="session" items="${sessions}">
                                        <option value="${session.sess_id}">${session.sess_year}</option>  
                                    </c:forEach>
                                </select>
                                <br/>
                                <input type="submit" />
                            </form>

                            <hr/> <br/>
                            <div class="row">
                                <div class="col-offsate-2 col-4 hidden">
                                    <label hidden> Class = ${cId}</label>
                                </div>
                                <div class="col-offsate-2 col-4">
                                    <label hidden> Section = ${sessId}</label>
                                </div>
                            </div>
                            <br/><br/>
                            <div class="row">
                                <div class="col-2">
                                    #id
                                </div>
                                <div class="col-5">
                                    Student Name
                                </div>
                                <div class="col-2">
                                    Roll No
                                </div>

                                <div class="3">
                                </div>
                            </div>
                            <c:forEach var="std" items="${stdList}">
                                <div class="row">
                                    <div class="col-2">
                                        <input type="text" name="s_id" value="${std.s_id}"  disabled="true" /> 
                                    </div>
                                    <div class="col-5">
                                        <input type="text" value="${std.s_name}" disabled="true"/>
                                    </div>
                                    <div class="col-2">
                                        <input type="text" value="${std.roll_no}" disabled="true"/>
                                    </div>
                                    <div class="col-3">
                                        <!--modal-->
                                        <div class="container">
                                            <!-- Button to Open the Modal -->
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                                P/A
                                            </button>
                                            <!-- The Modal -->
                                            <div class="modal" id="myModal">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">

                                                        <!-- Modal Header -->
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        </div>

                                                        <!-- Modal body -->
                                                        <div class="modal-body">
                                                            <form class="form-group" action="" method="post">
                                                                <h4 class="modal-title">Date </h4>
                                                                <input class="form-control"  type="text" name="sa_date"  id="datepicker" required="required"/> 
                                                                <h4 class="modal-title">S_Id </h4> 
                                                                <input class="form-control" type="text" name="s_id" value="${std.s_id}" /> <br/><br/>
                                                                <h4 class="modal-title">status</h4> 
                                                                <input type="radio" name="status" value="P"/>Present
                                                                <input type="radio" name="status" value="A"/>Absent
                                                                <br/><br/>
                                                                <input class="btn btn-primary" type="submit">
                                                            </form>
                                                        </div>

                                                        <!-- Modal footer -->
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>                                                     
                            <br/><br/><br/>
                        </div>
                    </div>
                </div>
                <div class="col-3 col-md-3">
                    <!--clock-->
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-4">
                            <canvas  id="canvas" width="220" height="220"
                                     style="background-color:#1087dd;">
                            </canvas>
                        </div>
                    </div>
                    <br/>
                    <!--notice board-->
                    <button type="button" class="btn btn-secondary btn-lg btn-block">Notice Board</button>
                    <div class="list-group">
                        <c:forEach var="notices" items="${nts}">
                            <a class="list-group-item list-group-item-action ">
                                <div>
                                    <h4>&Rrightarrow; ${notices.n_title}</h4>
                                    <small>Publish Date: ${notices.publish_date}</small>
                                </div>
                            </a>
                        </c:forEach> 
                        <a class="list-group-item list-group-item-action " href="noticeBoard.htm">
                            <div>
                                <small style="padding-left: 40%">See More..</small>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var canvas = document.getElementById("canvas");
            var ctx = canvas.getContext("2d");
            var radius = canvas.height / 2;
            ctx.translate(radius, radius);
            radius = radius * 0.90
            setInterval(drawClock, 1000);

            function drawClock() {
                drawFace(ctx, radius);
                drawNumbers(ctx, radius);
                drawTime(ctx, radius);
            }

            function drawFace(ctx, radius) {
                var grad;
                ctx.beginPath();
                ctx.arc(0, 0, radius, 0, 2 * Math.PI);
                ctx.fillStyle = 'white';
                ctx.fill();
                grad = ctx.createRadialGradient(0, 0, radius * 0.95, 0, 0, radius * 1.05);
                grad.addColorStop(0, '#333');
                grad.addColorStop(0.5, 'white');
                grad.addColorStop(1, '#333');
                ctx.strokeStyle = grad;
                ctx.lineWidth = radius * 0.1;
                ctx.stroke();
                ctx.beginPath();
                ctx.arc(0, 0, radius * 0.1, 0, 2 * Math.PI);
                ctx.fillStyle = '#333';
                ctx.fill();
            }

            function drawNumbers(ctx, radius) {
                var ang;
                var num;
                ctx.font = radius * 0.15 + "px arial";
                ctx.textBaseline = "middle";
                ctx.textAlign = "center";
                for (num = 1; num < 13; num++) {
                    ang = num * Math.PI / 6;
                    ctx.rotate(ang);
                    ctx.translate(0, -radius * 0.85);
                    ctx.rotate(-ang);
                    ctx.fillText(num.toString(), 0, 0);
                    ctx.rotate(ang);
                    ctx.translate(0, radius * 0.85);
                    ctx.rotate(-ang);
                }
            }

            function drawTime(ctx, radius) {
                var now = new Date();
                var hour = now.getHours();
                var minute = now.getMinutes();
                var second = now.getSeconds();
                //hour
                hour = hour % 12;
                hour = (hour * Math.PI / 6) +
                        (minute * Math.PI / (6 * 60)) +
                        (second * Math.PI / (360 * 60));
                drawHand(ctx, hour, radius * 0.5, radius * 0.07);
                //minute
                minute = (minute * Math.PI / 30) + (second * Math.PI / (30 * 60));
                drawHand(ctx, minute, radius * 0.8, radius * 0.07);
                // second
                second = (second * Math.PI / 30);
                drawHand(ctx, second, radius * 0.9, radius * 0.02);
            }

            function drawHand(ctx, pos, length, width) {
                ctx.beginPath();
                ctx.lineWidth = width;
                ctx.lineCap = "round";
                ctx.moveTo(0, 0);
                ctx.rotate(pos);
                ctx.lineTo(0, -length);
                ctx.stroke();
                ctx.rotate(-pos);
            }

            $('#myModal').on('shown.bs.modal', function () {
                $('#myInput').trigger('focus')
            })
        </script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
    </body>
</html>