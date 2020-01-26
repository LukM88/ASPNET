using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class _Default : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            using (var entity = new kadryEntities())
            {
                var user = entity.AppUsers.Where(x => x.login == Login1.UserName && x.password ==Login1.Password).FirstOrDefault();
               
                if (user!=null)
                {
                    if (user.Role == "a" || user.Role == "m")
                    {
                        Response.Redirect("AdMiN.aspx");
                    }
                    else
                    {
                        Response.Redirect("guest.aspx");
                    }
                    
                    
                }
                else
                {
                    
                }
            }
        }
    }
}