using BanHangDienTu.Admin.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanHangDienTu.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtUsername.Text = string.Empty;
                txtPassword.Text = string.Empty;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Kiểm tra đăng nhập ở đây

            //var userSession = new UserSession();
            //if (string.IsNullOrEmpty(txtUsername.Text) || string.IsNullOrEmpty(txtPassword.Text))
            //{

            //}
            //else
            //{
            //    userSession.UserName = txtUsername.Text;
            //    userSession.Password = txtPassword.Text;
            //}
            //Session.Add(CommonContants.USE_SESSION,userSession);
            Response.Redirect("Index.aspx");
        }
    }
}