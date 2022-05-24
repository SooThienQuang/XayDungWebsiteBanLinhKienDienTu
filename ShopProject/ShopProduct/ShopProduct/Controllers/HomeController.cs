using ShopProduct.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList.Mvc;
using PagedList;
namespace ShopProduct.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        SHOPMOONEntities mydb = new SHOPMOONEntities();
        public ActionResult Index(int page = 1, int size = 4)
        {
            var item = mydb.Products.ToList().ToPagedList(page, size);
            return View(item);
        }
    }
}