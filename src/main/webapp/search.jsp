<%@page import="java.util.ArrayList"%>
<%@page import="com.Accio.SearchResult"%>



<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body background="home1.jpg">
    <a href="index.jsp"><img src="logo3.png"  width="100" height="60"></a>
    <form action ="Search">
    <input type="text" name="keyword"></input>
    <button type="submit">Search</button>
    </form>

    </form>
        <form action ="History">
        <button type="submit">History</button>
    </form>
    <div class= "resultTable">
    <table border  =  2>
        <tr>
            <th>Name</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<SearchResult> result=(ArrayList<SearchResult>) request.getAttribute("result");
             for(SearchResult results:result){
        %>
         <tr>
              <td><% out.println(results.getTitle());%></td>
              <td><a href="<% out.println(results.getLink());%>"><% out.println(results.getLink());%></a></td>
         </tr>
         <%
            }
         %>
    </table>
    </div>

</body>
</html>