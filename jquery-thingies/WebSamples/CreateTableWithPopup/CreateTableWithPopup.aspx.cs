using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jquery_thingies.WebSamples.CreateTableWithPopup
{
    public partial class CreateTableWithPopup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this is because chrome detects html code as unusual code so we have to disable xss protection
            //this is only for getting the html text from server side.
            //if you do not display it on the page, you do not need to use this.
            Response.AppendHeader("X-XSS-Protection", "0");
        }

        protected void btnGetServerSideContent_Click(object sender, EventArgs e)
        {
            Response.Write(tablecontenthidden.Value.ToString());
        }
    }
}