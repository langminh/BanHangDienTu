using BanHangDienTu.Admin.Code;
using BanHangDienTu.Admin.Controller;
using BanHangDienTu.Admin.Models;
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
        private LoginController controller;
        protected void Page_Load(object sender, EventArgs e)
        {
            controller = new LoginController();
            if(!IsPostBack)
            {
                txtUsername.Text = string.Empty;
                txtPassword.Text = string.Empty;
            }

            UserSession session = (UserSession) Session[CommonContants.USE_SESSION];
            if(session != null)
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Kiểm tra đăng nhập ở đây

            var userSession = new UserSession();
            if (string.IsNullOrEmpty(txtUsername.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                
            }
            else
            {
                User user = controller.GetUser(txtUsername.Text.Trim(), txtPassword.Text.Trim());

                if(user != null)
                {
                    if(ckbRememberMe.Checked)
                    {
                        userSession.UserName = user.UserName;
                        userSession.Password = user.Password;
                        Session.Add(CommonContants.USE_SESSION, userSession);
                    }
                    Response.Redirect("Index.aspx");
                }  
            }
            
        }
    }
}