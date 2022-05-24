using ShopProduct.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopProduct.Controllers
{
    public class CaroselController : Controller
    {
        // GET: Carosel
        SHOPMOONEntities mydb = new SHOPMOONEntities();
        public ActionResult Index()
        {
            var item = mydb.Products.ToList();
            return PartialView(item);
        }
        public ActionResult Head()
        {
            return PartialView();
        }
    }
}