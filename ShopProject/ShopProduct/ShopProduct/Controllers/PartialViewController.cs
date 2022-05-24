using ShopProduct.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopProduct.Controllers
{
    public class PartialViewController : Controller
    {
        SHOPMOONEntities mydb = new SHOPMOONEntities();
        // GET: PartialView
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult Header()
        {
            return PartialView();
        }
        public ActionResult CaroselImages()
        {
            return PartialView();
        }
        public ActionResult Carosel()
        {
            return PartialView();
        }
        public ActionResult CaroselProducts()
        {
            var item = mydb.Products.ToList();
            return PartialView(item);
        }
        public ActionResult Footer()
        {
            return PartialView();
        }
    }
}