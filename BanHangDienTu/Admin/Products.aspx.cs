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
                
                SetDataToDropDown();
                int catalogID = int.Parse(cbxCatalog.SelectedValue.ToString());
                FillData(catalogID);
            }

        }

        private void SetDataToDropDown()
        {
            cbxCatalog.DataSource = CatalogDao.Instance.GetListCatalog();
            cbxCatalog.DataBind();
            cbxCatalog.SelectedIndex = 0;
        }

        /// <summary>
        /// Fill data từ csdl vào list view
        /// </summary>
        private void FillData(int catalogID)
        {
            products.DataSource = ProductDao.Instance.GetListProductByCatalog(catalogID);
            products.DataBind();
        }

        protected void cbxCatalog_SelectedIndexChanged(object sender, EventArgs e)
        {
            int catalogID = int.Parse(cbxCatalog.SelectedValue.ToString());
            try
            {
                products.DataSource = ProductDao.Instance.GetListProductByCatalog(catalogID);
                products.DataBind();
                products.PagePropertiesChanging += Products_PagePropertiesChanging;
            }
            catch
            {

            }
        }

        private void Products_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            int catalogID = int.Parse(cbxCatalog.SelectedValue.ToString());
            this.pager.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            products.DataSource = ProductDao.Instance.GetListProductByCatalog(catalogID);
            products.DataBind();
        }

        protected void products_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateItem")
            {
                string productID = e.CommandArgument.ToString();
                Product product = ProductDao.Instance.GetProduct(int.Parse(productID));
                txtProduct_ID.Text = product.ProductID + "";
                txtName_Update.Text = product.Name;
                txtDescribe_Update.Text = product.Describe;
                txtContent_Update.Text = product.Content;
                txtSale_Update.Text = product.Sale + "";
                txtPrice_Update.Text = product.Price + "";
                txtAmount_Update.Text = product.Amount + "";
                txtContent_Update.Text = product.Content;
                productImage.Src = "../Image/" + product.Image;


                ScriptManager.RegisterStartupScript(this, this.GetType(), "update", "$('#update').modal('show');", true);

                

                updateModal.Update();
                catalogList.DataSource = CatalogDao.Instance.GetListCatalog();
                catalogList.DataBind();
                catalogList.SelectedValue = catalogList.Items.FindByText(product.Catalog.Name).Value;

            }
            else if (e.CommandName == "DeleteItem")
            {
                string catalogID = e.CommandArgument.ToString();
                txtCatalogID_Delete.Value = CatalogDao.Instance.GetCatalog(int.Parse(catalogID)).CatalogID + "";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "myModal", "$('#modalDelete').modal('show');", true);
                deleteModal.Update();
            }
        }


        protected void products_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            this.pager.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            int catalogID = int.Parse(cbxCatalog.SelectedValue.ToString());
            FillData(catalogID);
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "update", "$('#update').modal('show');", true);
            updateModal.Update();
            catalogList.DataSource = CatalogDao.Instance.GetListCatalog();
            catalogList.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Product product = new Product();
            
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }
    }
}