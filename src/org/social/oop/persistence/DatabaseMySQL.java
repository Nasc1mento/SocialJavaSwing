package org.social.oop.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseMySQL implements IConnectionDB{
	
	final String HOST_NAME = "127.0.0.1";
	final String DATABASE = "oopsocial";
	final String USER_NAME = "oopsocial";
	final String PASSWORD = "oopsocialpw";
	final String PORT_NUMBER = "3306";
 
	
	
	
	@Override
	public Connection getConnection() {
		
		try {
			Connection connection = DriverManager.getConnection("jdbc:mysql://"+HOST_NAME+":"+PORT_NUMBER+"/"+DATABASE,USER_NAME,PASSWORD);
			return connection;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	

}
