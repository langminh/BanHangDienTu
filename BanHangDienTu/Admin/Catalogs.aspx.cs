using BanHangDienTu.Admin.Controller;
using BanHangDienTu.Admin.Models;
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
        private CatalogController catalog = new CatalogController();
        protected void Page_Load(object sender, EventArgs e)
        {
<<<<<<< HEAD
            
            //if (!IsPostBack)
            //{
                
                list.DataSource = catalog.GetListCatalog();
                list.DataBind();
            //}
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
=======
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
>>>>>>> bbfa43aa866bc22b359c16a14d61a223b53eaf40

            ClientScriptManager cs = Page.ClientScript;
            if (!cs.IsStartupScriptRegistered(csType, csName))
            {
                StringBuilder csText = new StringBuilder();
                csText.Append("<script> $(document).ready(function(){$('#create').modal({ backdrop: 'static', keyboard: false, show: true });});</script>");
                cs.RegisterStartupScript(csType, csName, csText.ToString());
            }
        }
    }
}