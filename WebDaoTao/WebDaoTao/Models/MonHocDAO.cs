using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WebDaoTao.Models
{
    public class MonHocDAO
    {
        //1. Phương thức đọc tất cả môn học
        public List<MonHoc> docTatCa()
        {
            List<MonHoc> dsMonHoc = new List<MonHoc>();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from monhoc", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                dsMonHoc.Add(new MonHoc { MaMH = dr["mamh"].ToString(), TenMH = dr["tenmh"].ToString(), SoTiet = int.Parse(dr["sotiet"].ToString()) });
            }
            return dsMonHoc;
        }
        //2. Phương thức thêm mới môn học
        public int Them(string mamh, string tenmh, int sotiet)
        {
            return 0;
        }
        //3. Phương thức cập nhật môn học
        public int CapNhat(string mamh, string tenmh, int sotiet)
        {
            return 0;
        }
        //4. Phương thức xóa môn học
        public int Xoa(string mamh)
        {
            return 0;
        }
        //5. Phương thức tìm kiếm
        public MonHoc timTheoMa(string mamh)
        {
            return null;
        }
    }
}