<%@ Page Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ArtAssignment.register" %>

<asp:Content ID="homepagecontent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    
    <asp:Image ID="registerBackground1" runat="server" Height="600px" ImageUrl="~/Properties/LoginBackground.png" Width="1350px" />
    
    <div style="width:280px;font-size:40px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight:500;position:absolute;left:40%;text-align:center;top:50%">Registration as</div>
    
    <div style="position:absolute;top:380px;left:20%;">
        <asp:Image ID="ArtistIcon" runat="server" Height="250px" ImageUrl="~/Properties/ArtistIcon.jpg" Width="260px" />
    </div>

    <div style="position:absolute;top:380px;left:60%">
        <asp:Image ID="CustomerIcon" runat="server" Height="250px" ImageUrl="~/Properties/CustomerIcon.png" Width="260px" />
    </div>

</asp:Content>