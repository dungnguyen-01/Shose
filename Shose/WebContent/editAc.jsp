<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
            .st{
                font-size: 20px;               
                width: 200px;
                margin-left: 30px;
                text-align: center;
            }
            .st2{
                font-size: 20px;
                text-align: center;
                width: 200px;


            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="editA" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="modal-body">					
                                    <div class="form-group">
                                        <label>ID</label>
                                        <input value="${a.id}" name="id" type="text" class="form-control" readonly required>
                                    </div>
                                    <div class="form-group">
                                        <label>User</label>
                                        <input value="${a.user}" name="user" type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input value="${a.pass}" name="pass" type="text" class="form-control" required>
                                    </div>
                                    <label style="font-size:20px">Sell:</label>
                                    <select  class="st" name="sell">
                                        <div >                            
                                            <option ${a.isSell==1?"selected":""} value="1"> ON</option>
                                            <option ${a.isSell==0?"selected":""} value="0">OFF</option>
                                        </div >
                                    </select>
                                    <br>
                                    <label style="font-size:20px">Admin:</label>
                                    <select  class="st2" name="admin">
                                        <div >                            
                                            <option ${a.isAdmin==1?"selected":""} value="1"> ON</option>
                                            <option ${a.isAdmin==0?"selected":""} value="0">OFF</option>
                                        </div >
                                    </select>				
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                                 <form action="account" method="post">
                                <input class="btn" style="background-color: #2196F3; color: white;margin-right:500px" type="submit"  value="Back"/>
                            </form>
                            </div>
                           
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>