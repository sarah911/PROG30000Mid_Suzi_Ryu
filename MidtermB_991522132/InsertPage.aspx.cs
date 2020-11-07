using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidtermB_991522132
{
    public partial class InsertPage : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Connectodb()
        {
            string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hami9\source\repos\MidtermB_991522132\MidtermB_991522132\App_Data\ABCTourDB_991522132.mdf;Integrated Security=True";
            conn = new SqlConnection(constring);
            conn.Open();
        }

        void InsertRecord()
        {
            Connectodb();
            string insertCmd = "INSERT INTO Destination VALUES (@Name, @Distance)";
            cmd = new SqlCommand(insertCmd, conn);


            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Distance", float.Parse(txtDistance.Text));

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            InsertRecord();
            Response.Redirect("HomePage.aspx");
        }
    }
}