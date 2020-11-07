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
    public partial class SearchPage : System.Web.UI.Page
    {
        SqlConnection conn;

        Double searchFloat;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void Connectodb()
        {
            string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hami9\source\repos\MidtermB_991522132\MidtermB_991522132\App_Data\ABCTourDB_991522132.mdf;Integrated Security=True";
            conn = new SqlConnection(constring);
            conn.Open();
        }

        void SearchRecord()
        {
            Connectodb();
            string query = "SELECT * FROM Destination WHERE Distance = Convert(float, '" + txtInputDistance.Text + "')";
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            searchFloat = float.Parse(txtInputDistance.Text);
            SearchRecord();
            String searchDistance = txtInputDistance.Text;
            DisplayLabel.Text = "Searching by Distance : " + searchDistance;
        }

        protected void btnBacktoHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}