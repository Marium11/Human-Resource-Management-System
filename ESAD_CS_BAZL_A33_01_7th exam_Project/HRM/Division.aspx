﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/maintemp.Master" 
    CodeBehind="Division.aspx.cs" Inherits="HRM.Division1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-collapse: collapse; width: 50%">
        <tr style="border: 1px solid #ddd; padding: 8px;">
            <td style="padding-top: 12px; padding-bottom: 12px; text-align: left;">
                <h2>Branch</h2>
            </td>
            </tr>
        <tr style="border: 1px solid #ddd; padding: 8px;">
            <td style="padding-top: 12px; padding-bottom: 12px; text-align: left;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnRowCommand="GridView1_RowCommand" BackColor="#CCCCFF" Width="75%" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                        <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" />
                        <asp:TemplateField HeaderText="...">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="e" BackColor="Gold">Edit</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="d" BackColor="Gold">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Display" TypeName="HRM_DAL.DivisionAccess"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
    <table style="border-collapse: collapse; width: 50%">
        <tr style="border: 1px solid #ddd; padding: 8px;">
            <td style="padding-top: 12px; padding-bottom: 12px; text-align: left;">Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" BackColor="#CCCCFF" Width="50%" OnTextChanged="txtName_TextChanged" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
         <tr style="border: 1px solid #ddd; padding: 8px;">
            <td style="padding-top: 12px; padding-bottom: 12px; text-align: left;">Location</td>
            <td>
                <asp:TextBox ID="txtLocation" runat="server" BackColor="#CCCCFF" Width="50%" OnTextChanged="txtLocation_TextChanged" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
         <tr style="border: 1px solid #ddd; padding: 8px;">
            <td style="padding-top: 12px; padding-bottom: 12px; text-align: left;">Company Name</td>
            <%--<td>&nbsp;</td>--%>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Name" DataValueField="ID" Width="50%" BackColor="#CCCCFF" Height="27px">
                    
                    
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="Display" TypeName="HRM_DAL.CompanyAccess" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
            </td>
        </tr>
         <tr style="border: 1px solid #ddd; padding: 8px;">            
            <td colspan="2" style="margin-left: 80px">
                <asp:Button ID="btnsave" runat="server" Text="Save" BackColor="gold" OnClick="btnsave_Click" Width="100px" Enabled="False" />
                <asp:Button ID="btnupdate" runat="server" Text="Update" BackColor="gold" OnClick="btnupdate_Click" Width="100px" Enabled="False"/>
                <asp:Label ID="lblMsg" runat="server" ForeColor="Purple"></asp:Label>
                <asp:HiddenField ID="hdnID" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
