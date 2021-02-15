<%@ Page Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ArtistAddArt.aspx.cs" Inherits="ArtAssignment.ArtistAddArt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<link href="ArtistAddArt.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function imagePreview1(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                 $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                    .width(150)
                    .height(150);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    function imagePreview2(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#<%=Image2.ClientID%>').prop('src', e.target.result)
                    .width(150)
                    .height(150);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    function imagePreview3(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#<%=Image3.ClientID%>').prop('src', e.target.result)
                        .width(150)
                        .height(150);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

</script>

<div id="addArtPg">

    <h1> Create New Art</h1>

    <table class="addArtTable">
        <tr class="addArtRow"><td class="addArtCol1"><b> Image(s): </b></td>
            <td class="uploadCol1"><label class="uploadInvisible">
                <asp:Image ID="Image1" runat="server" height="150px" width="150px" ImageUrl="Properties/AddImageIcon.png"/>
                <asp:FileUpload ID="FileUpload1" runat="server" width="100px" onchange="imagePreview1(this);"/></label></td>
            <td class="uploadCol1"><label class="uploadInvisible">
                <asp:Image ID="Image2" runat="server" height="150px" width="150px" ImageUrl="Properties/AddImageIcon.png"/>
                <asp:FileUpload ID="FileUpload2" runat="server" width="100px" onchange="imagePreview2(this);"/></label></td>
            <td class="uploadCol1"><label class="uploadInvisible">
                <asp:Image ID="Image3" runat="server" height="150px" width="150px" ImageUrl="Properties/AddImageIcon.png"/>
                <asp:FileUpload ID="FileUpload3" runat="server" width="100px" onchange="imagePreview3(this);"/></label></td></tr>
    </table>

    <table class="addArtTable">
        <tr class="addArtRow"><td class="addArtCol1"><b> Name: </b></td><td class="addArtCol2">
            <asp:TextBox ID="txtArtName" CssClass="createArtStyle" runat="server"></asp:TextBox></td></tr>

        <tr class="addArtRow"><td class="addArtCol1"><b> Description: </b></td><td class="addArtCol2">
            <asp:TextBox ID="txtDescription" CssClass="createArtStyle" runat="server" TextMode="MultiLine" style="height:100px;width:350px"></asp:TextBox></td></tr>

        <tr class="addArtRow"><td class="addArtCol1"><b> Category: </b></td><td class="addArtCol2">
            <asp:DropDownList ID="ddlCategory" CssClass="createArtStyle" runat="server"></asp:DropDownList></td></tr>

        <tr class="addArtRow"><td class="addArtCol1"><b> Type: </b></td><td class="addArtCol2">
            <asp:DropDownList ID="ddlType" CssClass="createArtStyle" runat="server"></asp:DropDownList></td></tr>

        <tr class="addArtRow"><td class="addArtCol1"><b> Price(RM): </b></td><td class="addArtCol2">
            <asp:TextBox ID="txtPrice" CssClass="createArtStyle" runat="server" type="number"></asp:TextBox></td></tr>

        <tr class="addArtRow"><td class="addArtCol1"><b> Quantity: </b></td><td class="addArtCol2">
            <asp:TextBox ID="txtQuantity" CssClass="createArtStyle" runat="server" type="number"></asp:TextBox></td></tr>

        <tr><td colspan="2">
            <asp:Button ID="btnCreateArt" CssClass="btnCreateArtStyle" runat="server" Text="Create Art" /></td></tr>

    </table>
</div>

</asp:Content>