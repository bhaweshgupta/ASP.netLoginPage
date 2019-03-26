<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LoginPage.Registration" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="reg" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    User Name:</td>
                <td class="style3">
                    <asp:TextBox ID="txtboxUserName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtboxUserName" CssClass="style4" 
                        ErrorMessage="UserName Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    E-mail:</td>
                <td class="style3">
                    <asp:TextBox ID="txtboxEmail" runat="server"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtboxEmail" CssClass="style4" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtboxEmail" ErrorMessage="Enter Correct Email" 
                        style="color: #000099" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password:</td>
                <td class="style3">
                    <asp:TextBox ID="txtboxPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TxtboxPassword" CssClass="style4" 
                        ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confirm Password:</td>
                <td class="style3">
                    <asp:TextBox ID="txtboxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TxtboxConfirmPassword" CssClass="style4" 
                        ErrorMessage="Confirm Password Required"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="password should be same" ControlToCompare="TxtboxPassword" 
                        ControlToValidate="TxtboxConfirmPassword" style="color: #003399"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Country:</td>
                <td class="style3">
                    <asp:DropDownList ID="ddlCountry" runat="server">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlCountry" CssClass="style4" 
                        ErrorMessage="Country Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                    <asp:Button ID="Button2" runat="server" Text="Reset" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LoginPage.aspx">click here to Login</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    
    </asp:Content>