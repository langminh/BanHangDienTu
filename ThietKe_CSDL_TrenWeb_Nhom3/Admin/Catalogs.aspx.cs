using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        /// <summary>
        /// Fill data từ csdl vào list view
        /// </summary>
        private void FillData()
        {
        }

        /// <summary>
        /// Sự kiện phân trang dữ liệu cho list view
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void catalogList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
        }


        /// <summary>
        /// Update một danh mục, khi người dùng nhấn nút ok trên modal 
        /// "sửa thông tin danh mục"
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Update_Click(object sender, EventArgs e)
        {
        }

        /// <summary>
        /// Xóa danh mục khỏi csdl, khi người dùng nhấn nút xóa trên modal
        /// "Xóa danh mục"
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Delete_Click(object sender, EventArgs e)
        {
        }


        /// <summary>
        /// Tạo mới danh mục, thêm vào csdl khi người dùng nhấn ok trên modal
        /// "Tạo mới danh mục"
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnCreateOk_Click(object sender, EventArgs e)
        {
        }


        /// <summary>
        /// Tạo sự kiện cho nút "Thêm mới danh mục"
        /// hiển thị modal, nhưng chưa tạo mới
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAdd_Click(object sender, EventArgs e)
        {
        }


        /// <summary>
        /// Lấy thông tin các item có trong listview, để tạo modal boostrap cũng như gán các giá trị ID
        /// phục vụ cho việc update, delete item.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void catalogList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
        }
    }
}