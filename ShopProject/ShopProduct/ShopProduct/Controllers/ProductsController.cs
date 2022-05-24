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
    public class ProductsController : Controller
    {
        // GET: Products
        SHOPMOONEntities mydb = new SHOPMOONEntities();
        public ActionResult Index()
        {
            var item = mydb.Products.ToList();
            return View(item);
        }
        public ActionResult ProductGiamGia()
        {
            var item = mydb.Products.ToList();
            return PartialView(item);
        }
        public ActionResult CaroselPhone()
        {
            var item = mydb.Products.ToList();
            return PartialView(item);
        }
        public ActionResult Details(int id)
        {
            Product item = mydb.Products.ToList().Where(n => n.proID == id).FirstOrDefault();
            return View(item);
        }
        public ActionResult SearchProducts(string txt_search, int page = 1, int size = 8)
        {
            var item = mydb.Products.ToList().Where(n => n.proName.Contains(txt_search)).ToPagedList(page,size);
            return View(item);
        }

    }
}