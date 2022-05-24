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
    public class CommentController : Controller
    {
        // GET: Comment
        SHOPMOONEntities mydb = new SHOPMOONEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult LoadComment(int id,int page = 1, int size = 4)
        {
            var item = mydb.Comments.Where(n=>n.proID==id).ToList().ToPagedList(page, size);
            return PartialView(item);
        }
        [HttpPost]
        public ActionResult LoadComment(int id, string msg, string name, string email ,int page = 1, int size = 4)
        {
            Customer cs = mydb.Customers.Where(n => n.cusEmail == email).FirstOrDefault();
            var item = mydb.Comments.Where(n => n.proID == id).ToList().ToPagedList(page, size);
            if (msg!=""&&email!="")
            {
                Comment c = new Comment();
                c.cusID = cs.cusID;
                c.proID = id;
                c.comMessage = msg;
                c.comDate = DateTime.Now;
                mydb.Comments.Add(c);
                mydb.SaveChanges();
                return PartialView(item);
            }    
            return PartialView(item);
        }
    }
}