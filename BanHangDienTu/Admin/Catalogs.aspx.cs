using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BanHangDienTu.Entity.Dao;
using BanHangDienTu.Entity.EF;
using System.Text;

namespace BanHangDienTu.Admin
{
    public partial class AddCatalog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillData();
            }
        }

        protected void Update(object sender, EventArgs e)
        {

        }

        private void FillData()
        {
            catalogList.DataSource = CatalogDao.Instance.GetListCatalog();
            catalogList.DataBind();
        }
        protected void catalogList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            this.pager.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            FillData();
        }

        protected void Update_Click(object sender, EventArgs e)
        {


            string csName = "PopupScript";
            Type csType = this.GetType();

            ClientScriptManager cs = Page.ClientScript;
            if (!cs.IsStartupScriptRegistered(csType, csName))
            {
                StringBuilder csText = new StringBuilder();
                csText.Append("<script> $(document).ready(function(){$('#update').modal({ backdrop: 'static', keyboard: false, show: true });});</script>");
                cs.RegisterStartupScript(csType, csName, csText.ToString());
            }
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            string csName = "DeleteScript";
            Type csType = this.GetType();

            ClientScriptManager cs = Page.ClientScript;
            if (!cs.IsStartupScriptRegistered(csType, csName))
            {
                StringBuilder csText = new StringBuilder();
                csText.Append("<script> $(document).ready(function(){$('#delete').modal({ backdrop: 'static', keyboard: false, show: true });});</script>");
                cs.RegisterStartupScript(csType, csName, csText.ToString());
            }
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {

        }

        protected void btnCreateOk_Click(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string csName = "CreateScript";
            Type csType = this.GetType();

            ClientScriptManager cs = Page.ClientScript;
            if (!cs.IsStartupScriptRegistered(csType, csName))
            {
                StringBuilder csText = new StringBuilder();
                csText.Append("<script> $(document).ready(function(){$('#create').modal({ backdrop: 'static', keyboard: false, show: true });});</script>");
                cs.RegisterStartupScript(csType, csName, csText.ToString());
            }
        }

        protected void catalogList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateItem")
            {
                string catalogID = e.CommandArgument.ToString();
                Catalog catalog = CatalogDao.Instance.GetCatalog(int.Parse(catalogID));
                txtCatalogID_Update.Value = catalog.CatalogID + "";
                txtCatalogName_Update.Text = catalog.Name;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "myModal", "$('#modalUpdate').modal('show');", true);
                updateModal.Update();
            }
            else if (e.CommandName == "DeleteItem")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "myModal", "$('#modalDelete').modal('show');", true);
                updateModal.Update();
            }
        }

        protected void catalogList_ItemEditing(object sender, ListViewEditEventArgs e)
        {

        }

        protected void catalogList_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
        }
    }
}