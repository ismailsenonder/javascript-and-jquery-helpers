using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jquery_thingies.Functions
{
    public partial class SearchOnEnter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_ServerClick(object sender, EventArgs e)
        {
            //your serverside search code
            Response.Redirect("http://www.ismail.site");
        }
    }
}