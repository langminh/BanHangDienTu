using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BanHangDienTu.Entity.EF;
using BanHangDienTu.Entity.Dao;


namespace BanHangDienTu.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillData();
            }

        }


        /// <summary>
        /// Fill data từ csdl vào list view
        /// </summary>
        private void FillData()
        {
            DataList1.DataSource = ProductDao.Instance.GetListProduct();
            DataList1.DataBind();

            cbxCatalog.Items.Add("===All===");
            cbxCatalog.DataSource = CatalogDao.Instance.GetListCatalog();
            cbxCatalog.DataBind();
        }

        protected void cbxCatalog_SelectedIndexChanged(object sender, EventArgs e)
        {
            int catalogID = int.Parse(cbxCatalog.SelectedValue.ToString());
            try
            {
                DataList1.DataSource = ProductDao.Instance.GetListProductByCatalog(catalogID);
                DataList1.DataBind();
            }
            catch
            {

            }
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
        }

        //protected void ListView1_PagePropertiesChanged(object sender, PagePropertiesChangingEventArgs e)
        //{
        //    this.DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        //    FillData();
        //}
    }
}