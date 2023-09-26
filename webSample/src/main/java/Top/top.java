package Top;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class top
 */
// テストコメント
@WebServlet("/top")
public class top extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public top() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MySQLConnect();
		getServletConfig().getServletContext().getRequestDispatcher("/Top.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public void MySQLConnect() throws NullPointerException{
		
		// TODO 自動生成されたコンストラクター・スタブ
		Connection conn = null;
		Statement stmt = null;
        ResultSet rset = null;

        //接続文字列
        String url = "jdbc:mysql://localhost/test";
        String user = "root";
        String password = "root";

        try{
            conn = DriverManager.getConnection(
            		url,user,password);
            //自動コミットOFF
            conn.setAutoCommit(false);

            //SELECT文の実行
            stmt = conn.createStatement();
            String sql = "SELECT * FROM EMPLOYEE";
            if(true) {// 検索条件に指定があるが指定あり
            	//sql += "where name = '大谷'";
            }
            rset = stmt.executeQuery(sql);

            //SELECT結果の受け取り
            while(rset.next()){
                System.out.println(rset.getString("ID")); 
                System.out.println(rset.getString("NAME"));
                System.out.println(rset.getString("AGE"));
            }

            //INSERT文の実行
            //sql = "INSERT INTO jdbc_test VALUES (1, 'AAA')";
            //stmt.executeUpdate(sql);
            //conn.commit();
        }catch (Exception e){

        }
        finally {
            try {
                if(rset != null)rset.close();
                if(stmt != null)stmt.close();
                if(conn != null)conn.close();
            }
            catch (SQLException e){
                e.printStackTrace();
            }
        }
	}

}
