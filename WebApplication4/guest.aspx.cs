using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class guest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Panel1.Controls[8] != null)
            {
                Panel1.Controls.RemoveAt(8);
            }
            Panel1.Controls.AddAt(8, new GridView { DataSourceID = "SqlDataSource1" });
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (this.DropDownList1.Text)
            {
                
                case "Dzialy":
                    GridView1.Visible = true;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                   

                    
                    break;
                case "Oferty":
                    GridView1.Visible = false;
                    GridView2.Visible = true;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    

                   
                    break;
                case "Stanowiska":
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = true;
                    GridView4.Visible = false;
                    

                    
                    break;
                case "Rozmowy":
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = true;
                   

                    
                    break;
               
                
                default:
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    break;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Podanie.aspx");
        }
    }
}