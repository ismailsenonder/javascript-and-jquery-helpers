using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jquery_thingies.Functions
{
    public partial class GetQueryStringValues : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_ServerClick(object sender, EventArgs e)
        {

            Response.Redirect(Request.Url.GetLeftPart(UriPartial.Path) + "?key=12345&name=ismail");
        }

        protected void Button1_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.GetLeftPart(UriPartial.Path) + "?key=12345444&site=github&word=search&query=select");
        }

        protected void Button2_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.GetLeftPart(UriPartial.Path) + "?name=robin&name2=mariapuder&love=");
        }
    }
}