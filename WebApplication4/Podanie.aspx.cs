using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Podanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView6_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Redirect("guest.aspx");
        }
    }
}