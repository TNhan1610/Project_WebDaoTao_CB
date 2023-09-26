<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlSinhVien.aspx.cs" Inherits="WebDaoTao.qlSinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h2>THÔNG TIN SINH VIÊN</h2>
 <hr />
 <div class="form-horizontal">
 <div class="form-group">
 <label class="control-label col-md-2">Mã sinh viên</label>
 <div class="col-md-2">
 <asp:TextBox ID="txtMaSV" runat="server" CssClass="form-control"></asp:TextBox>
 </div>
 </div>
 <div class="form-group">
 <label class="control-label col-md-2">Họ sinh viên</label>
 <div class="col-md-2">
 <asp:TextBox ID="txtHoSv" runat="server" CssClass="form-control"></asp:TextBox>
 </div>
 <label class="control-label col-md-2">Tên sinh viên</label>
 <div class="col-md-2">
 <asp:TextBox ID="txtTenSV" runat="server" CssClass="form-control"></asp:TextBox>
 </div>
 </div>
 <div class="form-group">
 <label class="control-label col-md-2">Giới tính</label>
 <div class="col-md-4">
 <asp:RadioButton ID="rdNam" runat="server" Text="Nam" CssClass="radio-inline" Checked="true"
GroupName="GT" />
 <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" CssClass="radio-inline" GroupName="GT" />
 </div>
 </div>
 <div class="form-group">
 <label class="control-label col-md-2">Ngày sinh</label>
 <div class="col-md-4">
 <asp:TextBox ID="txtNgaysinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
 </div>
 <label class="control-label col-md-2">Nơi sinh</label>
 <div class="col-md-4">
 <asp:TextBox ID="txtNoiSinh" runat="server" CssClass="form-control"></asp:TextBox>
 </div>
 </div>
 <div class="form-group">
 <label class="control-label col-md-2">Địa chỉ</label>
 <div class="col-md-4">
 <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
 </div>
 </div>
 <div class="form-group">
 <label class="control-label col-md-2">Chọn khoa</label>
 <div class="col-md-4">
 <asp:DropDownList ID="ddlMaKhoa" runat="server" CssClass="form-control"></asp:DropDownList>
 </div>
 </div>
 <div class="form-group">
 <label class="control-label col-md-2"></label>
 <div class="col-md-4">
 <asp:Button ID="btThem" runat="server" Text="Thêm Mới" CssClass="btn btn-success" OnClick="btThem_Click" />
 </div>
 </div>
 </div>
 <div>
<asp:GridView ID="gvSinhvien" DataKeyNames="Masv" OnPageIndexChanging="gvSinhvien_PageIndexChanging"
AllowPaging="true" PageSize="10" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
 <Columns>
 <asp:BoundField DataField="masv" HeaderText="Mã SV" />
 <asp:BoundField DataField="hosv" HeaderText="Họ SV" />
 <asp:BoundField DataField="tensv" HeaderText="Tên SV" />
 <asp:CheckBoxField DataField="gioitinh" HeaderText="Giới tính" />
 <asp:BoundField DataField="ngaysinh" HeaderText="ngày sinh" DataFormatString="{0:dd/MM/yyyy}" />
 <asp:BoundField DataField="noisinh" HeaderText="Nơi sinh" />
 <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" />
     <asp:TemplateField HeaderText="Mã khoa">
         <ItemTemplate>
             <asp:Label ID="lbMakh" runat="server" Text='<%# Eval("Makh") %>'></asp:Label>
         </ItemTemplate>
         <EditItemTemplate>
             <asp:DropDownList ID="ddlKhoa" runat="server"></asp:DropDownList>
         </EditItemTemplate>
     </asp:TemplateField>

     <asp:TemplateField HeaderText="Chọn tác vụ">
 <ItemTemplate>
 <asp:Button ID="btEdit" CommandName="Edit" runat="server" Text="Sửa" CssClass="btn btnsuccess" />
 <asp:Button ID="btDelete" CommandName="Delete" runat="server" OnClientClick="return 
confirm('Bạn có chắc muốn xóa môn học?')" Text="Xóa" CssClass="btn btn-danger" />
 </ItemTemplate>
 <EditItemTemplate>
 <asp:Button ID="btUpdate" CommandName="Update" runat="server" Text="Ghi" CssClass="btn btnprimary" />
 <asp:Button ID="btCancel" CommandName="Cancel" runat="server" Text="Không" CssClass="btn 
btn-warning" />
 </EditItemTemplate>
 </asp:TemplateField>
 </Columns>
 </asp:GridView>
 </div>

</asp:Content>
