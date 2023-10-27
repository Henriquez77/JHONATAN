<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JHONATAN.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-3">
            <div class="row">
                <div class="col-sm-2">
                    <div class="card">
                        <img src="img/RAM.jpg" class="card-img-top" alt="IMAGEN RAM">
                        <div class="card-body">
                            <span>$79.00</span>
                            <h5 class="card-title">Almacenamiento M.2</h5>
                            <p class="card-text">MEMORIA RAM DDR5 ADATA XPG LANCER 16GB RGB 5200MT/s PC AX5U5200C3816G-CLARWH</p>
                            <asp:Button Text="Agregar" runat="server"  ID="btnRAM" CssClass="btn btn-success" OnClick="btnRAM_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="card">
                        <img src="img/M.2.jpg" class="card-img-top" alt="IMAGEN M2">
                        <div class="card-body">
                            <span>$219.95</span>
                            <h5 class="card-title">Almacenamiento M.2</h5>
                            <p class="card-text">UNIDAD DE ALMACENAMIENTO M.2 KINGSTON RENEGADE 2TB NVMe 4.0 SFYRD/2000G</p>
                            <asp:Button Text="Agregar" runat="server" ID="btnM2" CssClass="btn btn-success" OnClick="btnM2_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="card">
                        <img src="img/MOUSE.jpg" class="card-img-top" alt="IMAGEN M2">
                        <div class="card-body">
                            <span>$15.00</span>
                            <h5 class="card-title">Mouse</h5>
                            <p class="card-text">MOUSE INALAMBRICO LOGITECH G502 X LIGHTSPEED LIGHTFORCE HERO 25K 910-006178</p>
                            <asp:Button Text="Agregar" runat="server" ID="btnMouse" CssClass="btn btn-success" OnClick="btnMouse_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="card p-4">
                        <h5 class="card-title">Total</h5>
                        <div class="input-group mb-3">
                            <span class="input-group-text">$</span>
                            <asp:TextBox ID="inputTotal" runat="server" CssClass="form-control" Text="0.00" ReadOnly="true" ></asp:TextBox>
                        </div>
                        <asp:Button ID="btnPagar" runat="server" Text="Pagar" CssClass="btn btn-success" OnClick="btnPagar_Click" />
                        <br />
                        <div class="alert alert-primary" role="alert">
                            <asp:Label ID="lblMensajeExito" runat="server" Text="Mensaje de éxito"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="js/bootstrap.bundle.min.js"></script>


</body>
</html>