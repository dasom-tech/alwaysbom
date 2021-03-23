<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>새늘봄
                 |자주 묻는 질문</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../../static/bootstrap-5.0.0/css/bootstrap.min.css">
    <script src="../../../static/bootstrap-5.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(function (){
            let category = {}
            category["category"]=$("#FAQ").attr('id');

            $.ajax({
                url : '/gogoFaq',
                type : 'POST',
                dataType : "json",
                data : category,
                success : function(data){
                    console.log(data);
                    let dispHtml = "<li>"
                   $.each(data, function(){
                       dispHtml += "<p>" + this.question + "</p>";
                       dispHtml += "<p>" + this.answer + "</p>";
                       dispHtml += "</li>";
                   });
                    $("#faqList").html(dispHtml);
                }
            });
        });
    </script>
</head>


<body>

    <div>
        <h2>자주 묻는 질문</h2>
        <div>
            <ul class="nav justify-content-around faqBox">
                <c:forEach var="category" items="${category}">
                <li class="nav-item-3" id="${category}">
                    <a class="nav-link" href="#" onclick="goFaqList(${category})">${category}</a>
                </li>
                </c:forEach>
            </ul>
            <div>
                <ul id="faqList">

                </ul>

            </div>
        </div>
    </div>

</body>
<script>

    function goFaqList(faqType) {
        console.log(faqType);
        // let faqBox = $(".faqBox").next();
        let category = {}
        // category["category"]=faqBox.attr('id');
        category["category"]=faqType.attr('id');
        console.log(faqType);
        // console.log(faqBox.attr("id"));
        $.ajax({
            url : '/gogoFaq',
            type : 'POST',
            dataType : "json",
            data : category,
            success : function(data){
                console.log(data);
                let dispHtml = "<li>"
                $.each(data, function(){
                    dispHtml += "<p>" + this.question + "</p>";
                    dispHtml += "<p>" + this.answer + "</p>";
                    dispHtml += "</li>";
                });
                $("#faqList").html(dispHtml);
            }
        });
    }

</script>
</html>

