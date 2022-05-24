using ShopProduct.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopProduct.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart
        SHOPMOONEntities mydb = new SHOPMOONEntities();
        public ActionResult AddCart(int id)
        {
            var item = Session["user"] as ShopProduct.Models.Customer;
            if (item == null)
            {
                ViewBag.ErrM = "Vui lòng đăng nhập để tiếp tục mua hàng !";
                return RedirectToAction("Login", "Customers");
            }
            else
            {
                var a = mydb.Products.Where(n => n.proID == id).FirstOrDefault();
                Cart c = new Cart();
                c.proID = id;
                c.cusID = item.cusID;
                c.proPrice = a.proPrice;
             
                var sll = mydb.Carts.Where(n => n.proID == id).FirstOrDefault();
                if (sll != null)
                {
                    sll.CartQuantity = sll.CartQuantity + 1;
                    sll.CartMoney = sll.CartQuantity * sll.proPrice;
                    mydb.Carts.Attach(sll);
                    mydb.Entry(sll).State = EntityState.Modified;
                    mydb.SaveChanges();
                    ViewBag.Message = "Thêm giỏ hàng thành công";
                    return RedirectToAction("DetailsCart");
                }
                c.CartQuantity = 1;
                c.CartMoney = a.proPrice;
                mydb.Carts.Add(c);
                mydb.SaveChanges();
                ViewBag.Message = "Thêm giỏ hàng thành công";
                return RedirectToAction("DetailsCart");
            }
          
        }
        public ActionResult WindowsMessageLogin()
        {
            return PartialView();
        }
        public ActionResult DetailsCart()
        {
            var item = Session["user"] as ShopProduct.Models.Customer;
            if(item!=null)
            {
                var cart = mydb.Carts.ToList().Where(n => n.cusID == item.cusID).ToList();
                return View(cart);
            }
            else
            {
                return RedirectToAction("Login","Customers");
            }    
           
        }
        public ActionResult Delete(int id)
        {
            var item = Session["user"] as ShopProduct.Models.Customer;
            if (item != null)
            {
                var cart = mydb.Carts.Where(n => n.proID==id&&n.cusID==item.cusID).FirstOrDefault();
                mydb.Carts.Remove(cart);
                mydb.SaveChanges();
                return RedirectToAction("DetailsCart");
            }
            else
            {
                return RedirectToAction("DetailsCart");
            }
        }
        [HttpPost]
        public ActionResult Update(int id, int quantity)
        {
            var item = Session["user"] as ShopProduct.Models.Customer;
            if (item != null)
            {
                var sll = mydb.Carts.Where(n => n.proID == id).FirstOrDefault();
                if (sll != null)
                {
                    sll.CartQuantity = quantity;
                    sll.CartMoney = quantity * sll.proPrice;
                    mydb.Carts.Attach(sll);
                    mydb.Entry(sll).State = EntityState.Modified;
                    mydb.SaveChanges();
                    ViewBag.Message = "Thêm giỏ hàng thành công";
                    return RedirectToAction("DetailsCart");
                }
            }
            return RedirectToAction("DetailsCart");
            

        }

    }
}