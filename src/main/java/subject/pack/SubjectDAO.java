package subject.pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/*
This DAO class provides CRUD database operations for the table weddings in the database.
*/
public class SubjectDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/sims?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "admin";

	private static final String INSERT_SUBJECTS_SQL = "INSERT INTO subjects" + "  (name, teacherid, courseid, term, content, uid) VALUES " + " (?, ?, ?, ?, ?, ?);";
	private static final String SELECT_SUBJECT_BY_ID = "select id,name, teacherid, courseid, term, content from subjects where uid =?";
	private static final String SELECT_SUBJECT_BY_IDD = "select id,name, teacherid, courseid, term, content from subjects where id =?";
	private static final String SELECT_ALL_SUBJECTS = "select id,name, teacherid, courseid, term, content from subjects where uid =?";
	private static final String DELETE_SUBJECTS_SQL = "delete from subjects where id = ?;";
	private static final String UPDATE_SUBJECTS_SQL = "update subjects set name = ?,teacherid= ?, courseid =?,term= ?,content= ? where id = ?;";

	public SubjectDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertSubject(Subject subject) throws SQLException {
		System.out.println(INSERT_SUBJECTS_SQL);
		
		try (Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SUBJECTS_SQL)) {
			preparedStatement.setString(1, subject.getName());
			preparedStatement.setString(2, subject.getTeacherid());
			preparedStatement.setString(3, subject.getCourseid());
			preparedStatement.setInt(4, subject.getTerm());
			preparedStatement.setString(5, subject.getContent());
			preparedStatement.setInt(6, subject.getUid());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Subject selectSubject(int id) {
		Subject subject = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SUBJECT_BY_IDD);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int idd = rs.getInt(1);
				String name = rs.getString(2);
				String teacherid = rs.getString(3);
				String courseid = rs.getString(4);
				int term = rs.getInt(5);
				String content = rs.getString(6);
				System.out.println("result");
				subject = new Subject(idd, name, teacherid, courseid,term,content);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return subject;
	}

	public List<Subject> selectAllSubjects(int uid) {
		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Subject> subjects = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SUBJECTS);)
			{
			preparedStatement.setInt(1, uid);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String teacherid = rs.getString("teacherid");
				String courseid = rs.getString("courseid");
				int term = rs.getInt("term");
				String content = rs.getString("content");
				subjects.add(new Subject(id, name, teacherid, courseid,term,content));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return subjects;
	}

	public boolean deleteSubject(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
			PreparedStatement statement = connection.prepareStatement(DELETE_SUBJECTS_SQL);) {
				statement.setInt(1, id);
				rowDeleted = statement.executeUpdate() > 0;
			}
			return rowDeleted;
	}

	public boolean updateSubject(Subject subject) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
			PreparedStatement statement = connection.prepareStatement(UPDATE_SUBJECTS_SQL);) {
			statement.setString(1, subject.getName());
			statement.setString(2, subject.getTeacherid());
			statement.setString(3, subject.getCourseid());
			statement.setInt(4, subject.getTerm());
			statement.setString(5, subject.getContent());
			statement.setInt(6, subject.getId());
			
			System.out.println(statement);
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}