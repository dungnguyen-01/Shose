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
            a.tao.active{
                    background-color: #2196F3;
                    font-weight: bold;
                    color: white;
                }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Account</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            
                            <th></th>
                            <th style="font-size:22px ;color: red">ID</th>
                            <th style="font-size:22px ;color: red">User</th>
                            <th style="font-size:22px ;color: red">Password</th>
                            <th style="font-size:22px ;color: red">Sell</th>
                            <th style="font-size:22px ;color: red">Admin</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listB}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.id}</td>
                                <td>${o.user}</td>
                                <td>${o.pass}</td>                                   
                                <td>
                                    <c:if test="${o.isSell==0}">OFF                                       
                                    </c:if>
                                    <c:if test="${o.isSell==1}">ON                                       
                                    </c:if>
                                    </td>
                                <td>
                                     <c:if test="${o.isAdmin==0}">OFF                                       
                                    </c:if>
                                    <c:if test="${o.isAdmin==1}">ON                                       
                                    </c:if>
                                </td>
                                <td>
                                    <a href="loadA?Aid=${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="#" onclick="showMess(${o.id})" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <c:if test="${tag >1}">
                           <li class="page-item "><a href="account?index=${tag-1}">Previous</a></li>
                        </c:if>
                        
                        <c:forEach begin="1" end="${endP}" var="i">                       
                        <li class="page-item"><a href="account?index=${i}" class=" tao ${tag == i?"active":""} page-link">${i}</a></li>                       
                        
                        </c:forEach>
                        <c:if test="${tag < endP}">
                            <li class="page-item"><a href="account?index=${tag+1}" class="page-link">Next</a></li>
                        </c:if>
                        
                    </ul>
                </div>
            </div>
            <form action="home" method="post">
                <input class="btn btn-primary" type="submit"  value="Back to Home"/>
            </form>
        </div>
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addA" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>User</label>
                                <input name="user" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input name="pass" type="text" class="form-control" required>
                            </div>
                             <label style="font-size:20px">Sell:</label>
                            <select  class="st"name="sell">
                            <div >                            
                                <option value="1">On</option>
                                <option value="0">OFF</option>
                            </div >
                            </select>
                             <br>
                             <label style="font-size:20px">Admin:</label>
                            <select  class="st2" name="admin">
                            <div >                            
                                <option value="1">On</option>
                                <option value="0">OFF</option>
                            </div >
                            </select>
                           </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="editA" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>ID</label>
                                <input value="${a.id}" type="text" class="form-control" readonly required>
                            </div>
                             <div class="form-group">
                                <label>User</label>
                                <input value="${a.user}" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input value="${a.pass}" type="email" class="form-control" required>
                            </div>
                            <label style="font-size:20px">Sell:</label>
                            <select  class="st"name="sell">
                            <div >                            
                                <option value="${a.isSell==1}">On</option>
                                <option value="${a.isSell==0}">OFF</option>
                            </div >
                            </select>
                             <br>
                             <label style="font-size:20px">Admin:</label>
                            <select  class="st2" name="admin">
                            <div >                            
                                 <option value="${a.isSell==1}">On</option>
                                 <option value="${a.isSell==0}">OFF</option>
                            </div >
                            </select>				
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
                            
    </body>
    <script> 
      function  showMess(id){
          var option = confirm("Do you readly delete?");
          if (option===true){
              window.location.href='deleteA?Aid='+id;
          }
              
          }
    </script>
</html>
