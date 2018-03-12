using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BanHangDienTu.Entity;
using BanHangDienTu.Entity.EF;
using BanHangDienTu.Entity.Dao;
using BanHangDienTu.Helper;

namespace BanHangDienTu.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillData();
            }
        }
        
        private void FillData()
        {
            listUser.DataSource = UserDao.Instance.GetListUser();
            listUser.DataBind();
        }

        protected void listUser_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            this.pager.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            FillData();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void listUser_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("UpdateItem"))
            {
                txtAddress.Enabled = false;
                txtName.Enabled = false;
                txtPhone.Enabled = false;
                txtRole.Enabled = false;
                txtUsername.Enabled = false;
                txt_GT.Enabled = false;
                btnAdd.Visible = false;
                checkbox1.Enabled = false;
                string userID = e.CommandArgument.ToString();
                var user = UserDao.Instance.GetUser(int.Parse(userID));
                if (user != null)
                {
                    txtUsername.Text = user.FullName;
                    txtAddress.Text = user.Address;
                    txtPhone.Text = user.Address;
                    if (user.Sex.HasValue)
                    {
                        txt_GT.Text = user.Sex.Value == true ? "Nam" : "Nữ";
                    }
                    userAvata.Src = user.Avatar;
                    if (user.IsLock.HasValue)
                    {
                        checkbox1.Checked = user.IsLock.Value;
                    }
                    txtRole.Text = user.Role.Name;

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "update", "$('#update').modal('show');", true);
                    updateModal.Update();
                }
            }
            else if(e.CommandName.Equals("DeleteItem"))
            {
                
            }
        }
    }
}