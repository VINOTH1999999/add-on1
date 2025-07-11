import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DisplayStudents {
    public static void main(String[] args) {
        try (Connection conn = DBConnection.getConnection()) {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM students");

            System.out.println("ID\tName\t\tDepartment\tMarks");
            System.out.println("---------------------------------------------");

            while (rs.next()) {
                System.out.printf("%d\t%-10s\t%-10s\t%.2f\n",
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("department"),
                    rs.getFloat("marks"));
            }
        } catch (Exception e) {
            System.out.println(" Error: " + e.getMessage());
        }
    }
}
output:
ID	Name		Department	Marks
---------------------------------------------
101	Abhinav   	IT        	89.50