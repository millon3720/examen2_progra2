<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmVentas.aspx.cs" Inherits="Examen2Progra.FrmVentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <asp:Label ID="Label1" runat="server" Text="Cajero" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="Cajeros" runat="server">
                <asp:ListItem Value="1">Jose David</asp:ListItem>
                <asp:ListItem Value="2">Alexander Benjamin</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>

                <br />

            <br />
            <asp:Label ID="Label2" runat="server" Text="Producto" Font-Size="Large"></asp:Label>

        <asp:DropDownList ID="Productos" runat="server">
                <asp:ListItem Value="1">Coca Cola 1L</asp:ListItem>
                <asp:ListItem Value="2">Mentas Clorests</asp:ListItem>
                <asp:ListItem Value="3">Pepsi 1L</asp:ListItem>
            </asp:DropDownList>

                <br />

            <br />
            <asp:Label ID="Label3" runat="server" Text="Maquina" Font-Size="Large"></asp:Label>

        <asp:DropDownList ID="Maquina" runat="server">
                <asp:ListItem Value="1">Maquina 1 Piso 1</asp:ListItem>
                <asp:ListItem Value="2">Maquina 2 Piso 2</asp:ListItem>
            </asp:DropDownList>
        
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" />
        </center>
        </div>
    </form>
</body>
</html>
