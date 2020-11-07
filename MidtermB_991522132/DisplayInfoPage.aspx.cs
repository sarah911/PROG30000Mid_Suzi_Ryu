using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidtermB_991522132
{
    public partial class DisplayInfoPage : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            RenderResult();
        }
        void Connectodb()
        {
            string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hami9\source\repos\Practice_midterm\Practice_midterm\App_Data\ABCTourDB_991522132.mdf;Integrated Security=True";
            conn = new SqlConnection(constring);
            conn.Open();
        }

        void RenderResult()
        {
            //
            Connectodb();
            string query = "SELECT d.Name, v.Guest, v.Cost FROM Visit v INNER JOIN Destination d ON d.Name = v.Destination WHERE v.cost <= 300 AND d.Distance >= 450";
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}