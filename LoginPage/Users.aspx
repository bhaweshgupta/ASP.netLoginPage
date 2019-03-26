<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="LoginPage.Users" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="user" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Logout" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>

</asp:Content>