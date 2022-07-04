
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="px-4 px-lg-0">
                    <div class="pb-5">
                                              
                                <div class="modal-content">
                                    <form  action="cus" method="post">
                                        <div class="modal-header">						
                                            <h4 class="modal-title" style="text-align: center">Customer information</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <input name="name" type="hidden" value="${p.name}" class="form-control" placeholder="Your name..." required>        
                                        <input name="qty" type="hidden" value="${p.amount}" class="form-control" placeholder="Your name..." required>        
                                        <input name="price" type="hidden" value="${p.price}" class="form-control" placeholder="Your name..." required>        
                                        <div class="form-group">
                                            <label >Name:</label>
                                            <input name="namecus" type="text" class="form-control" placeholder="Your name..." required>                              
                                        </div>
                                        <div class="form-group">
                                            <label >Phone:</label>
                                            <input name="phone" type="number" class="form-control" placeholder="Your phone..." required>
                                        </div>
                                        <div class="form-group">
                                            <label >Email:</label>
                                            <input name="email" type="email" class="form-control" id="email" placeholder="you@example.com" required>
                                        </div>
                                        <div class="form-group">
                                            <label >Address:</label>
                                            <textarea name="address" class="form-control" id="adress" placeholder="1234 Main Street" required style="height:70px;"></textarea>

                                        </div>
                                        <div class="form-group">
                                            <label>Note:</label>                                    
                                            <textarea name="note" class="form-control" placeholder="Note Here..." style="height:100px;"> </textarea>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" value="Cancel" style="width:230px;height:50px;font-weight:150px;background-color: gray" class="btn btn-default" data-dismiss="modal" >
                                        <input type="submit" value="BUY" style="width:230px;height:50px;font-weight:150px" class="btn btn-success" >
                                    </div>
                                </form>
                            </div>
                        
                    </div>
                </div>
            </div>
         

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>
</html>
