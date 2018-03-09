package com.nucleus.factory;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

// This class is used to Create Connection.
// Anyone needs a connection to the database
// they calls the method of this class.
public class GetConnectionClass {
	public static Connection con;

	// This method creates Connection.
	public static Connection getConnection() {

		Properties properties = new Properties();

		try {
			FileReader fileReader = new FileReader(
					"D:\\Akansha\\CrimeManagementProject\\dbProperties.properties");
			properties.load(fileReader);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String driverName = properties.getProperty("driver");
		String url = properties.getProperty("url");
		String userName = properties.getProperty("userName");
		String password = properties.getProperty("password");

		try {
			Class.forName(driverName);

			if (con == null) {
				con = DriverManager.getConnection(url, userName, password);
				//System.out.println("Connection Established");
				con.setAutoCommit(false);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	// This method close the connection.
	public static void closeConnection() {
		if (con != null)
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
