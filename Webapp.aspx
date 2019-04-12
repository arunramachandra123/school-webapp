<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Webapp.aspx.cs" Inherits="webapplication.Webapp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:DropDownList ID="ComboBox1" runat="server" 
        onselectedindexchanged="ComboBox1_SelectedIndexChanged">
        <asp:ListItem>Abcd</asp:ListItem>
        <asp:ListItem>Efgh</asp:ListItem>
    </asp:DropDownList>
<asp:ListView ID="ListView1" runat="server">
   <LayoutTemplate>
      <div style="border:solid 2px #336699; width:20%;">
         <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
      </div>
   </LayoutTemplate>
   <ItemTemplate>
      <div style="border: solid 1px #336699;">
         <%# Eval("ProductName")%>
      </div>
   </ItemTemplate>
   <AlternatingItemTemplate>
      <div style="border: solid 1px #336699; background-color: #dadada;">
         <%# Eval("ProductName")%>
      </div>
   </AlternatingItemTemplate>
 
</asp:ListView>
        <br />
    </div>
    </form>
</body>
</html>
