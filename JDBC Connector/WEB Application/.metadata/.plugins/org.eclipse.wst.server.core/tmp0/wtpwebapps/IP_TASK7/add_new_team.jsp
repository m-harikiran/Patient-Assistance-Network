<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Query Result</title>
</head>
    <body>
    <!-- Importing DataHandler and other functions  -->
    <%@page import="ip_task7.DataHandler"%>  
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Array"%>
    <%
    // The handler is the one in charge of establishing the connection.
    DataHandler handler = new DataHandler();

    // Get the attribute values passed from the input form.
    String tName = request.getParameter("team_name");
    String tType = request.getParameter("team_type");
    String fDate = request.getParameter("formation_date");

    /*
     * If the user hasn't filled out all the time, movie name and duration. This is very simple checking.
     */
    if (tName.equals("") || tType.equals("") || fDate.equals("")) {
        response.sendRedirect("new_teams_form.jsp");
    } else {
        
        // Now perform the query with the data from the form.
        
        boolean success = handler.addTeam(tName, tType, fDate);
        if (!success) { // Something went wrong
            %>
                <h2>There was a problem inserting the team</h2>
            <%
        } else { // Confirm success to the user
            %>
            <h2>Team :</h2>

            <ul>
                <li>Team Name: <%=tName%></li>
                <li>Team Type: <%=tType%></li>
                <li>Formation Date: <%=fDate%></li>
            </ul>

            <h2>Was successfully inserted.</h2>
            <%
        }
    }
    %>
    </body>
</html>
