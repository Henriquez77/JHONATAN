using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JHONATAN
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected decimal total = 0;
        protected decimal descuentoPorcentaje = 0;
        protected decimal ivaPorcentaje = 15;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["total"] = 0.00m;
            }
            else
            {
                total = (decimal)Session["total"];
                inputTotal.Text = total.ToString("0.00");
                
            }
        }

        protected void btnRAM_Click(object sender, EventArgs e)
        {
            total += 79.00m;
            ActualizarTotal();
        }

        protected void btnM2_Click(object sender, EventArgs e)
        {
            total += 219.95m;
            ActualizarTotal();
        }

        protected void btnPagar_Click(object sender, EventArgs e)
        {
            ActualizarTotal();
            CalcularDescuentoYIVA();
            lblMensajeExito.Text = "Total a pagar: $" + total.ToString() + "<br />" +
                "Descuento: " + descuentoPorcentaje.ToString("0.00") + "%" + "<br />" +
                "IVA: " + ivaPorcentaje.ToString("0.00") + "%";
            inputTotal.Text = "0.00";
            Session["total"] = 0.00m;
        }

        private void ActualizarTotal()
        {
            inputTotal.Text = total.ToString("0.00");
            Session["total"] = total;
        }

        private void CalcularDescuentoYIVA()
        {
            decimal iva = total * (ivaPorcentaje / 100);
            decimal precioBruto = total + iva;

            if (precioBruto > 50.00m)
            {
                decimal descuento = precioBruto * 0.05m;
                descuentoPorcentaje = 5;
                precioBruto -= descuento;
            }
            else
            {
                descuentoPorcentaje = 0;
            }

            total = precioBruto;
            inputTotal.Text = total.ToString("0.00");

        }

        protected void btnMouse_Click(object sender, EventArgs e)
        {
            total += 15.00m;
            ActualizarTotal();
        }
    }
}