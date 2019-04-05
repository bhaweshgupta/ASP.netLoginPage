<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="LoginPage.Manager" MasterPageFile="~/Site1.Master"%>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="manager" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 325px; width: 737px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource1" GridLines="Vertical" 
            Height="78px" Width="127px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="NameId" HeaderText="NameId" 
                    SortExpression="NameId" />
                <asp:BoundField DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DBCS %>" 
            SelectCommand="SELECT [NameId], [Name], [Age] FROM [NameDataTable]"></asp:SqlDataSource>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <series>
                <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Age">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
    </div>

    </asp:Content>