<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
        .ima{
            width: 250px;
            height: 200px;
        }
        a.tao.active{
            background-color: #2196F3;
            font-weight: bold;
            color: white;
        }

    </style>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Category</a></li>
                                <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                            </ol>
                        </nav>
                    </div>
                </div>


                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>

                    <div class="col-sm-9">
                        <div id="content" class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="product col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top ima" src="${o.image}">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?Did=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}
                                        </p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${o.price} $</p>
                                            </div>
                                            <div class="col">
                                                <a href="cart?id=${o.id}" class="btn btn-success btn-block">Add to cart</a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 

                        </c:forEach>
                    </div>
                        <!--<button onclick="loadMore()" class="btn btn-primary">Load more</button>-->
<!--                    <div class="clearfix">
                        <ul class="pagination">

                            <c:if test="${tag>1}">
                                <li class="page-item"><a href="home?index=${tag-1}">Previous</a></li>
                                </c:if>

                            <c:forEach begin="1" end="${endP}" var="i">                       
                                <li class="page-item"><a href="home?index=${i}" class="tao ${tag == i?"active":""} page-link">${i}</a></li>
                                </c:forEach>

                            <c:if test="${tag < endP}">
                                <li class="page-item"><a href="home?index=${tag+1}" class=" page-link">Next</a></li>
                                </c:if>
                        </ul>
                    </div>-->
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            function loadMore() {
                var amount = document.getElementsByClassName("product").length;
                $.ajax({
                    url: "/web_shose/load",
                    type: "get", //send it through get method
                    data: {
                        exits: amount
                    },
                    success: function (data) {
                        var row = document.getElementById("content");
                        row.innerHTML += data;
                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
            function searchByName(param) {
                var txtSearch = param.value;
                $.ajax({
                    url: "/web_shose/searchAjax",
                    type: "get", //send it through get method
                    data: {
                        txt: txtSearch
                    },
                    success: function (data) {
                        var row = document.getElementById("content");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
        </script>  
    </body>
</html>

