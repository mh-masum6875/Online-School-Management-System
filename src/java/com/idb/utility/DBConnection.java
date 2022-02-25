/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.idb.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnection {

    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String connectionUrl = "jdbc:mysql://localhost/springschool";
    private static final String username = "root";
    private static final String password = "";
    private static Connection conn = null;

    public static Connection openConnection() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(connectionUrl, username, password);
        } catch (Exception ex) {
        }
        return conn;
    }

    public static void closeConnection() {
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
