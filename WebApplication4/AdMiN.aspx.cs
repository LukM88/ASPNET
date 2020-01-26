using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
            switch (this.DropDownList1.Text)
            {
                case "Pracownicy":
                   
                    GridView1.Visible = true;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    GridView7.Visible = false;

                    DetailsView1.Visible = true;
                    DetailsView2.Visible = false;
                    DetailsView3.Visible = false;
                    DetailsView4.Visible = false;
                    DetailsView5.Visible = false;
                    DetailsView6.Visible = false;
                    DetailsView7.Visible = false;
                    break;
                case "Dzialy":
                    GridView1.Visible = false;
                    GridView2.Visible = true;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    GridView7.Visible = false;

                    DetailsView1.Visible = false;
                    DetailsView2.Visible = true;
                    DetailsView3.Visible = false;
                    DetailsView4.Visible = false;
                    DetailsView5.Visible = false;
                    DetailsView6.Visible = false;
                    DetailsView7.Visible = false;
                    break;
                case "Oferty":
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = true;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    GridView7.Visible = false;

                    DetailsView1.Visible = false;
                    DetailsView2.Visible = false;
                    DetailsView3.Visible = true;
                    DetailsView4.Visible = false;
                    DetailsView5.Visible = false;
                    DetailsView6.Visible = false;
                    DetailsView7.Visible = false;
                    break;
                case "Stanowiska":
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = true;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    GridView7.Visible = false;

                    DetailsView1.Visible = false;
                    DetailsView2.Visible = false;
                    DetailsView3.Visible = false;
                    DetailsView4.Visible = true;
                    DetailsView5.Visible = false;
                    DetailsView6.Visible = false;
                    DetailsView7.Visible = false;
                    break;
                case "Rozmowy":
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = true;
                    GridView6.Visible = false;
                    GridView7.Visible = false;

                    DetailsView1.Visible = false;
                    DetailsView2.Visible = false;
                    DetailsView3.Visible = false;
                    DetailsView4.Visible = false;
                    DetailsView5.Visible = true;
                    DetailsView6.Visible = false;
                    DetailsView7.Visible = false;
                    break;
                case "Podania":
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = true;
                    GridView7.Visible = false;
                   

                    DetailsView1.Visible = false;
                    DetailsView2.Visible = false;
                    DetailsView3.Visible = false;
                    DetailsView4.Visible = false;
                    DetailsView5.Visible = false;
                    DetailsView6.Visible = true;
                    DetailsView7.Visible = false;
                    break;
                case "AppUsers":
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    GridView7.Visible = true;

                    DetailsView1.Visible = false;
                    DetailsView2.Visible = false;
                    DetailsView3.Visible = false;
                    DetailsView4.Visible = false;
                    DetailsView5.Visible = false;
                    DetailsView6.Visible = false;
                    DetailsView7.Visible = true;
                    break;
                default:

                    break;
            }
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Panel1.Controls[10]!=null)
            {
                Panel1.Controls.RemoveAt(10);
            }
            Panel1.Controls.AddAt(10,new GridView { DataSourceID= "SqlDataSource1" });
              
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Panel1.Controls[10] != null)
            {
                Panel1.Controls.RemoveAt(10);
            }
            Panel1.Controls.AddAt(10, new GridView { DataSourceID = "SqlDataSource2" });
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Panel1.Controls[10] != null)
            {
                Panel1.Controls.RemoveAt(10);
            }
            Panel1.Controls.AddAt(10, new GridView { DataSourceID = "SqlDataSource3" });
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Panel1.Controls[10] != null)
            {
                Panel1.Controls.RemoveAt(10);
            }
            Panel1.Controls.AddAt(10, new GridView { DataSourceID = "SqlDataSource4" });
        }
    }
}