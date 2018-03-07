using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanHangDienTu.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EditButton_Click(Object sender, EventArgs e)
        {
            // get datakey
            //string ItemID = ... // get datakey of selected row
                                // Set the value to the datasource
            //SqlDataSource2.SelectParameters["ItemID"].DefaultValue = ItemID;

            // toggle to edit mode on the only row displayed
            ListView2.EditIndex = 0;

            // Now use jQuery to display the modal box AFTER postback.
            // You need to do it after the postback, otherwise you'll
            // never get to this event to get the ItemID
            String csname1 = "PopupScript";
            Type cstype = this.GetType();

            // Get a ClientScriptManager reference from the Page class.
            ClientScriptManager cs = Page.ClientScript;

            // Check to see if the startup script is already registered.
            if (!cs.IsStartupScriptRegistered(cstype, csname1))
            {
                // In my experience, the jQuery file must be included at the top
                // of the page for this to work. Oterwise you get '$ not found' error.
                StringBuilder cstext1 = new StringBuilder();
                cstext1.Append("<script type=text/javascript>$(document).ready(function() { $('#item-detail').modal('show')}); </");
                cstext1.Append("script>");
                cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
            }
        }
    }
}