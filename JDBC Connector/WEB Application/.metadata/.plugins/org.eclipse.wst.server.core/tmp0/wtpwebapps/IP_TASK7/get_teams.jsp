<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Get Teams</title>
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
    String formationDate = request.getParameter("formation_date");
    /*
     * If the user hasn't filled out all the time, movie name and duration. This is very simple checking.
     */
    if (formationDate.equals("")) {
        response.sendRedirect("get_teams_form.jsp");
    } 

	// Now perform the query with the data from the form.
	final ResultSet teams = handler.getTeamNames(formationDate);
  	%>
  	<!-- The table for displaying all the teams -->
  		<%out.println("<h4> Teams that are formed after "+ formationDate + "</h4>"); %>
        <table cellspacing="2" cellpadding="2" border="1">
            <tr> <!-- The table headers row -->
              <td align="center">
                <h4>Team Name</h4>
              </td>
            </tr>
            <%
               while(teams.next()) { // For each team record returned...
                   // Extract the attribute values for every row returned
                   final String teamName = teams.getString(1);
                   
                   out.println("<tr>"); // Start printing out the new table row
                   out.println( // Print each attribute value
                        "<td align=\"center\">" + teamName +"</td>");
                   out.println("</tr>");
               }
               %>
          </table>
    </body>
</html>
