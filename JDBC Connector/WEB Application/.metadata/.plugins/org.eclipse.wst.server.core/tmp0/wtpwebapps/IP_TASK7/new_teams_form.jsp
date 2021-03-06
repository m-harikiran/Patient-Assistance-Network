<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Team</title>
    </head>
    <body>
        <h2>Add Teams</h2>
        <h4>Please enter the below details to add/insert new team into database </h4>
        <!--
            Form for collecting user input for the new team record.
            Upon form submission, add_new_team.jsp file will be invoked.
        -->
        <form action="add_new_team.jsp">  
            <!-- The form organized in an HTML table for better clarity. -->
            <table border=1>
                <tr>
                    <th colspan="2">		Add Team	</th>
                </tr>
                <tr>
                    <td> Team Name : </td>
                    <td><div style="text-align: center;">
                    <input type=text name=team_name>
                    </div></td>
                </tr>
                <tr>
                    <td> Team Type : </td>
                    <td><div style="text-align: center;">
                    <input type=text name=team_type>
                    </div></td>
                </tr>
                <tr>
                    <td> Formation Date (MM/DD/YYYY): </td>
                    <td><div style="text-align: center;">
                    <input type=text name=formation_date>
                    </div></td>
                </tr>
                <tr>
                    <td><div style="text-align: center;">
                    <input type=reset value=Clear>
                    </div></td>
                    <td><div style="text-align: center;">
                    <input type=submit value=Insert>
                    </div></td>
                </tr>
            </table>
        </form>
    </body>
</html>
