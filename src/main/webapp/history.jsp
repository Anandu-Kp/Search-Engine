<%@page import="java.util.ArrayList"%>
<%@page import="com.Accio.HistoryResult"%>



<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body background="home1.jpg">
    <div class="historylogo">
        <a href="index.jsp"><img src="logo3.png"  width="100" height="60"></a>
    </div>

    <div class="resultTable">
        <table border  =  2>
            <tr>
                <th>Name</th>
                <th>Link</th>
            </tr>
            <%
                ArrayList<HistoryResult> result=(ArrayList<HistoryResult>) request.getAttribute("result");
                for(HistoryResult results:result){
            %>
             <tr>
                  <td><% out.println(results.getName());%></td>
                  <td><a href="<% out.println(results.getLink());%>"><% out.println(results.getLink());%></a></td>
             </tr>
             <%
                }
             %>
        </table>
    <//div>

</body>
</html>