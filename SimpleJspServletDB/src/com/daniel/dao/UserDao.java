package com.daniel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.daniel.model.User;
import com.daniel.util.DbUtil;

public class UserDao {

	private Connection connection;

	public UserDao() {
		connection = DbUtil.getConnection();
	}

	public void addUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into users(name,gender,depart,score,rank) values (?, ?, ?, ?, ?)");
			// Parameters start with 1
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getGender());
			preparedStatement.setString(3, user.getDepart());
			preparedStatement.setInt(4, user.getScore());
			preparedStatement.setInt(5, user.getRank());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from users where id=?");
			// Parameters start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update users set name=?, gender=?, depart=?, score=?, rank=? " +
							"where id=?");
			// Parameters start with 1
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getGender());
			preparedStatement.setString(3, user.getDepart());
			preparedStatement.setInt(4, user.getScore());
			preparedStatement.setInt(5, user.getRank());
			preparedStatement.setInt(6, user.getId());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from users");
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setGender(rs.getString("gender"));
				user.setDepart(rs.getString("depart"));
				user.setScore(rs.getInt("score"));
				user.setRank(rs.getInt("rank"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	public User getUserById(int userId) {
		User user = new User();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from users where id=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setGender(rs.getString("gender"));
				user.setDepart(rs.getString("depart"));
				user.setScore(rs.getInt("score"));
				user.setRank(rs.getInt("rank"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}
}
