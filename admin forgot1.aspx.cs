using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin_forgot1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit2_Click(object sender, EventArgs e)
    {

        if (txtadminname.Text == "admin" && txtkeyword.Text == "admin")
        {
            lblmsg.Text = "";
            lblpwd.Visible = true;
            txtpwd.Visible = true;
            txtpwd.Text = "admin";
        }
        else
        {
            lblmsg.Text = "Incorrect admin name or keyword ";
        }
    }
}
