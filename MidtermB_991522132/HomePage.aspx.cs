﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidtermB_991522132
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertPage.aspx");
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPage.aspx");
        }

        protected void BtnDisplay_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayInfoPage.aspx");
        }
    }
}