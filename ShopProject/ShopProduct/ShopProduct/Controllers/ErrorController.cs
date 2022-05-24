using ShopProduct.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopProduct.Controllers
{
    public class ErrorController : Controller
    {
        // GET: Error
        SHOPMOONEntities mydb = new SHOPMOONEntities();
        public ActionResult Index()
        {
            return View();
        }
          public ActionResult SuccessFully()
        {
            var info = Session["user"] as ShopProduct.Models.Customer;
            if(info!=null)
            {
                var item = mydb.DetailsOrders.Where(n=>n.cusID==info.cusID).ToList();
                return PartialView(item);
            }
            return PartialView();
           
        }
    }
}