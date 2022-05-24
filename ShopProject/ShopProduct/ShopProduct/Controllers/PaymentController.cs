using ShopProduct.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace ShopProduct.Controllers
{
    public class PaymentController : Controller
    {
        SHOPMOONEntities mydb = new SHOPMOONEntities();
        // GET: Payment
        public ActionResult PaymentCard()
        {
            return View();
        }
        public ActionResult DetailsPay()
        {
            var info = Session["user"] as ShopProduct.Models.Customer;
            var item = mydb.DetailsOrders.Where(n => n.cusID == info.cusID).ToList();
            return View(item);
        }
        public ActionResult Payment()
        {
            var info = Session["user"] as ShopProduct.Models.Customer;
            if (info == null)
            {
                ViewBag.ErrM = "Vui lòng đăng nhập để tiếp tục mua hàng !";
                return RedirectToAction("Login", "Customers");
            }
            else
            {
                var item = mydb.Carts.Where(n => n.cusID == info.cusID).ToList();
                return View(item);
            }
        }
        [HttpPost]
        public ActionResult Payment(string txt)
        {
            var item = Session["user"] as ShopProduct.Models.Customer;
            var cart = mydb.Carts.Where(n => n.cusID == item.cusID).ToList();
            if (item != null)
            {
                Order d = new Order();
                d.orderDate = DateTime.Now;
                d.orderStatus ="Đang đặt hàng";
                d.empID = null;
                d.cusID = item.cusID;
                mydb.Orders.Add(d);
                mydb.SaveChanges();
               
                foreach (var a in cart)
                {
                    DetailsOrder det = new DetailsOrder();
                    det.cusID = a.cusID;
                    det.proID = a.proID;
                    det.orderAddress = txt;
                    det.proPrice = a.proPrice;
                    det.orderQuantity = a.CartQuantity;
                    det.orderMoney = a.CartMoney;
                    guimai("thienquangpro1221.ytb@gmail.com", item.cusEmail, "Đặt hàng thành công ", "Cám ơn bạn đã tin tưởng đặt hàng bên Shop : Sản phẩm của bạn bao gồm "+a.Product.proName+" Giá sản phẩm là :"+a.Product.proPrice+" Số lượng sản phẩm :"+a.CartQuantity+" Tổng tiền"+a.CartMoney+"");
                    mydb.DetailsOrders.Add(det);

                    Product product = mydb.Products.Where(n => n.proID == a.proID).FirstOrDefault();
                    product.proQuatity = product.proQuatity - a.CartQuantity;
                    mydb.Products.Attach(product);
                    mydb.Entry(product).State = EntityState.Modified;
                    
                    mydb.SaveChanges();
                }
                mydb.Carts.RemoveRange(cart);
                mydb.SaveChanges();             
                return RedirectToAction("Index","Home");
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        public void guimai(string fr, string to, string sub, string nd)
        {
            MailMessage message = new MailMessage(fr, to, sub, nd);
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("thienquangpro1221.ytb@gmail.com", "0820112001bo");
            client.Send(message);
        }
    }
   
}