package ip_task7; // Exporting Data Handler as package to use it in JSP

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DataHandler {

    private Connection conn;

    // Azure SQL connection credentials
    private String server = "madi0015.database.windows.net";
    private String database = "cs-dsa-4513-sql-db";
    private String username = "madi0015";
    private String password = "Kiran@1221";

    // Resulting connection string
    final private String url =
            String.format("jdbc:sqlserver://%s:1433;database=%s;user=%s;password=%s;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;",
                    server, database, username, password);
    
    
    // Initialize and save the database connection
    private void getDBConnection() throws SQLException {
        if (conn != null) {
            return;
        }

        this.conn = DriverManager.getConnection(url);
    }

    // Return the result of teams that are formed after a particular date
    public ResultSet getTeamNames(String fdate ) throws SQLException {
        getDBConnection();
        
        final String sqlQuery = "SELECT NAME FROM TEAMS WHERE FORMATION_DATE >  ? ;";
        final PreparedStatement stmt = conn.prepareStatement(sqlQuery);
        
        stmt.setString(1, fdate);
        
        //System.out.printf("statement for team formation %s",stmt);
        
        return stmt.executeQuery();  //returning the results of executed query
    }

    // Inserting Teams into database
    public boolean addTeam(String name, String type, String date) throws SQLException {

        getDBConnection(); // Prepare the database connection

        // Prepare the SQL statement
        final String sqlQuery = "INSERT INTO TEAMS VALUES (?, ?, ?);";
        
        final PreparedStatement stmt = conn.prepareStatement(sqlQuery);

        // Replace the '?' in the above statement with the given attribute values
        stmt.setString(1, name);
        stmt.setString(2, type);
        stmt.setString(3, date);

        // Execute the query, if only one record is updated, then we indicate success by returning true
        return stmt.executeUpdate() == 1;
    }
}
