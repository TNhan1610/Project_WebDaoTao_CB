using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDaoTao.ds;
namespace WebDaoTao
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        TaiKhoanDAO tkdao = new TaiKhoanDAO(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangNhap_Click(object sender, EventArgs e)
        {
            string tendangnhap = txtTenDangNhap.Text;
            string matkhau = txtMatKhau.Text;
            TaiKhoan tk = tkdao.checkLogin(tendangnhap, matkhau);
            if (tk == null)
            {
                lbThongBao.Text = "Tên đăng nhập hoặc mật khẩu không đúng. Đăng nhập thất bại!";
            }
            else
            {
                lbThongBao.Text = "Đăng nhập thành công";
                //luu lại trang thái đã đăng nhập thành công của người dùng vào Session
                Session["USER"] = tk;
                if (tk.VaiTro == "CANBODAOTAO") //neu nguoi dung co vai tro la CANBODAOTAO
                {
                    //điều hướng người dùng đến trang dành cho đối tượng là Cán bộ đào tạo
                    Response.Redirect("qlKhoa.aspx");
                }
                else if (tk.VaiTro == "SINHVIEN")
                {
                    //điều hướng người dùng đến trang dành cho sinh viên
                    // Response.Redirect(""); 
                }
            }
        }
    }
}