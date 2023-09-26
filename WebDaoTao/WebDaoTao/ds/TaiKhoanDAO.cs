using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WebDaoTao.ds
{
    public class TaiKhoanDAO
    {
        public TaiKhoan checkLogin(string username, string password)
        {
            TaiKhoan tk = null;
            //1.Mo ket noi CSDL
            SqlConnection conn = new
           SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConString"].ConnectionString);
            conn.Open();
            //2.tao truy van 
            SqlCommand cmd = new SqlCommand("select * from taikhoan where tendangnhap=@u and matkhau=@p", conn);
            cmd.Parameters.AddWithValue("@u", username);
            cmd.Parameters.AddWithValue("@p", password);
            //3.thuc thi ket qua;
            SqlDataReader dr = cmd.ExecuteReader();
            //4.xu ly ket qua tra ve 
            if (dr.Read())
            {
                //tao doi tuong mon hoc
                tk = new TaiKhoan
                {
                    TenDangNhap = dr["tendangnhap"].ToString(),
                    MatKhau = dr["matkhau"].ToString(),
                    VaiTro = dr["vaitro"].ToString()
                };
            }
            return tk;
        }
    }

}
