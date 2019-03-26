<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LoginPage.LoginPage" MasterPageFile="~/Site1.Master" %>

  <asp:Content ID="login" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    UserName:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxUserName" ErrorMessage="Please Enter UserName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" ></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxPassword" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button_login" runat="server" 
                        Text="Button" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">click here to Register</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>


    </asp:Content>