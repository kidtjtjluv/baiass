<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_kh" DataSourceID="khachhang" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ma_kh" HeaderText="Ma khach hang" ReadOnly="True" SortExpression="ma_kh" />
                    <asp:BoundField DataField="ho_ten_kh" HeaderText="ho_ten_kh" SortExpression="ho_ten_kh" />
                    <asp:BoundField DataField="sdt" HeaderText="sdt" SortExpression="sdt" />
                    <asp:BoundField DataField="dia_chi" HeaderText="dia_chi" SortExpression="dia_chi" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="khachhang" runat="server" ConnectionString="<%$ ConnectionStrings:nhatConnectionString %>" SelectCommand="SELECT [ma_kh], [ho_ten_kh], [sdt], [dia_chi] FROM [Khach_Hang]" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [ma_kh] = @ma_kh" InsertCommand="INSERT INTO [Khach_Hang] ([ma_kh], [ho_ten_kh], [sdt], [dia_chi]) VALUES (@ma_kh, @ho_ten_kh, @sdt, @dia_chi)" UpdateCommand="UPDATE [Khach_Hang] SET [ho_ten_kh] = @ho_ten_kh, [sdt] = @sdt, [dia_chi] = @dia_chi WHERE [ma_kh] = @ma_kh">
                <DeleteParameters>
                    <asp:Parameter Name="ma_kh" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ma_kh" Type="String" />
                    <asp:Parameter Name="ho_ten_kh" Type="String" />
                    <asp:Parameter Name="sdt" Type="Int32" />
                    <asp:Parameter Name="dia_chi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ho_ten_kh" Type="String" />
                    <asp:Parameter Name="sdt" Type="Int32" />
                    <asp:Parameter Name="dia_chi" Type="String" />
                    <asp:Parameter Name="ma_kh" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_hd" DataSourceID="hoadon" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ma_hd" HeaderText="ma_hd" ReadOnly="True" SortExpression="ma_hd" />
                    <asp:BoundField DataField="ma_kh" HeaderText="ma_kh" SortExpression="ma_kh" />
                    <asp:BoundField DataField="ho_ten_kh" HeaderText="ho_ten_kh" SortExpression="ho_ten_kh" />
                    <asp:BoundField DataField="ngay_mua" HeaderText="ngay_mua" SortExpression="ngay_mua" />
                    <asp:BoundField DataField="tong_tien" HeaderText="tong_tien" SortExpression="tong_tien" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_hd" DataSourceID="chitiethoadon" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ma_hd" HeaderText="ma_hd" ReadOnly="True" SortExpression="ma_hd" />
                    <asp:BoundField DataField="ma_sp" HeaderText="ma_sp" SortExpression="ma_sp" />
                    <asp:BoundField DataField="ten_sp" HeaderText="ten_sp" SortExpression="ten_sp" />
                    <asp:BoundField DataField="so_luong" HeaderText="so_luong" SortExpression="so_luong" />
                    <asp:BoundField DataField="don_gia" HeaderText="don_gia" SortExpression="don_gia" />
                    <asp:BoundField DataField="thanh_tien" HeaderText="thanh_tien" SortExpression="thanh_tien" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="chitiethoadon" runat="server" ConnectionString="<%$ ConnectionStrings:nhatConnectionString %>" DeleteCommand="DELETE FROM [Chi_Tiet_Hoa_Don] WHERE [ma_hd] = @ma_hd" InsertCommand="INSERT INTO [Chi_Tiet_Hoa_Don] ([ma_hd], [ma_sp], [ten_sp], [so_luong], [don_gia], [thanh_tien]) VALUES (@ma_hd, @ma_sp, @ten_sp, @so_luong, @don_gia, @thanh_tien)" SelectCommand="SELECT * FROM [Chi_Tiet_Hoa_Don]" UpdateCommand="UPDATE [Chi_Tiet_Hoa_Don] SET [ma_sp] = @ma_sp, [ten_sp] = @ten_sp, [so_luong] = @so_luong, [don_gia] = @don_gia, [thanh_tien] = @thanh_tien WHERE [ma_hd] = @ma_hd">
                <DeleteParameters>
                    <asp:Parameter Name="ma_hd" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ma_hd" Type="String" />
                    <asp:Parameter Name="ma_sp" Type="String" />
                    <asp:Parameter Name="ten_sp" Type="String" />
                    <asp:Parameter Name="so_luong" Type="Int32" />
                    <asp:Parameter Name="don_gia" Type="Int32" />
                    <asp:Parameter Name="thanh_tien" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ma_sp" Type="String" />
                    <asp:Parameter Name="ten_sp" Type="String" />
                    <asp:Parameter Name="so_luong" Type="Int32" />
                    <asp:Parameter Name="don_gia" Type="Int32" />
                    <asp:Parameter Name="thanh_tien" Type="Int32" />
                    <asp:Parameter Name="ma_hd" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="hoadon" runat="server" ConnectionString="<%$ ConnectionStrings:nhatConnectionString %>" DeleteCommand="DELETE FROM [Hoa_Don] WHERE [ma_hd] = @ma_hd" InsertCommand="INSERT INTO [Hoa_Don] ([ma_hd], [ma_kh], [ho_ten_kh], [ngay_mua], [tong_tien]) VALUES (@ma_hd, @ma_kh, @ho_ten_kh, @ngay_mua, @tong_tien)" SelectCommand="SELECT * FROM [Hoa_Don]" UpdateCommand="UPDATE [Hoa_Don] SET [ma_kh] = @ma_kh, [ho_ten_kh] = @ho_ten_kh, [ngay_mua] = @ngay_mua, [tong_tien] = @tong_tien WHERE [ma_hd] = @ma_hd">
                <DeleteParameters>
                    <asp:Parameter Name="ma_hd" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ma_hd" Type="String" />
                    <asp:Parameter Name="ma_kh" Type="String" />
                    <asp:Parameter Name="ho_ten_kh" Type="String" />
                    <asp:Parameter Name="ngay_mua" Type="DateTime" />
                    <asp:Parameter Name="tong_tien" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ma_kh" Type="String" />
                    <asp:Parameter Name="ho_ten_kh" Type="String" />
                    <asp:Parameter Name="ngay_mua" Type="DateTime" />
                    <asp:Parameter Name="tong_tien" Type="Int32" />
                    <asp:Parameter Name="ma_hd" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" DataKeyNames="ma_lsp" DataSourceID="sanpham" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ma_lsp" HeaderText="ma_lsp" ReadOnly="True" SortExpression="ma_lsp" />
                    <asp:BoundField DataField="ten_lsp" HeaderText="ten_lsp" SortExpression="ten_lsp" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="sanpham" runat="server" ConnectionString="<%$ ConnectionStrings:nhatConnectionString %>" DeleteCommand="DELETE FROM [Loai_SP] WHERE [ma_lsp] = @ma_lsp" InsertCommand="INSERT INTO [Loai_SP] ([ma_lsp], [ten_lsp]) VALUES (@ma_lsp, @ten_lsp)" SelectCommand="SELECT * FROM [Loai_SP]" UpdateCommand="UPDATE [Loai_SP] SET [ten_lsp] = @ten_lsp WHERE [ma_lsp] = @ma_lsp">
                <DeleteParameters>
                    <asp:Parameter Name="ma_lsp" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ma_lsp" Type="String" />
                    <asp:Parameter Name="ten_lsp" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ten_lsp" Type="String" />
                    <asp:Parameter Name="ma_lsp" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_sp" DataSourceID="maloaisp" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ma_sp" HeaderText="ma_sp" ReadOnly="True" SortExpression="ma_sp" />
                    <asp:BoundField DataField="ma_lsp" HeaderText="ma_lsp" SortExpression="ma_lsp" />
                    <asp:BoundField DataField="ten_sp" HeaderText="ten_sp" SortExpression="ten_sp" />
                    <asp:BoundField DataField="gia_sp" HeaderText="gia_sp" SortExpression="gia_sp" />
                    <asp:BoundField DataField="mo_ta_sp" HeaderText="mo_ta_sp" SortExpression="mo_ta_sp" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="maloaisp" runat="server" ConnectionString="<%$ ConnectionStrings:nhatConnectionString %>" DeleteCommand="DELETE FROM [San_Pham] WHERE [ma_sp] = @ma_sp" InsertCommand="INSERT INTO [San_Pham] ([ma_sp], [ma_lsp], [ten_sp], [gia_sp], [mo_ta_sp]) VALUES (@ma_sp, @ma_lsp, @ten_sp, @gia_sp, @mo_ta_sp)" SelectCommand="SELECT * FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [ma_lsp] = @ma_lsp, [ten_sp] = @ten_sp, [gia_sp] = @gia_sp, [mo_ta_sp] = @mo_ta_sp WHERE [ma_sp] = @ma_sp">
                <DeleteParameters>
                    <asp:Parameter Name="ma_sp" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ma_sp" Type="String" />
                    <asp:Parameter Name="ma_lsp" Type="String" />
                    <asp:Parameter Name="ten_sp" Type="String" />
                    <asp:Parameter Name="gia_sp" Type="Int32" />
                    <asp:Parameter Name="mo_ta_sp" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ma_lsp" Type="String" />
                    <asp:Parameter Name="ten_sp" Type="String" />
                    <asp:Parameter Name="gia_sp" Type="Int32" />
                    <asp:Parameter Name="mo_ta_sp" Type="String" />
                    <asp:Parameter Name="ma_sp" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Learn more…</a>
        </li>
        <li class="two">
            <h5>Add NuGet packages and jump-start your coding</h5>
        </li>
        <li>
            <p>
                &nbsp;</p>
        </li>
            NuGet makes it easy to install and update free libraries and tools.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">Learn more…</a>
        <li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>
</asp:Content>
