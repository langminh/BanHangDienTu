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
    public partial class AddCatalog : System.Web.UI.Page
    {
        private CatalogController catalog = new CatalogController();
        protected void Page_Load(object sender, EventArgs e)
        {
            
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

        }
    }
}