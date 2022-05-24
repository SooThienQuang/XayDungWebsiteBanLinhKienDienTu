using ShopProduct.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace ShopProduct.Controllers
{
    public class CustomersController : Controller
    {
        // GET: Customers
        SHOPMOONEntities db = new SHOPMOONEntities();
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string txt_email,string txt_password)
        {
            var item = db.Customers.Where(n => n.cusEmail.Equals(txt_email) && n.cusPassword.Equals(txt_password)).FirstOrDefault();
            if(item==null)
            {
                ViewBag.ErrorUserPass = "Lỗi Username hoặc Password ! Vui lòng kiểm tra lại !";
                return View();
            }
            else
            {
                Session["user"] = new Customer()
                {
                    cusName = item.cusName,
                    cusEmail=item.cusEmail,
                    cusType=item.cusType,
                    cusPhone=item.cusPhone,
                    cusAddress=item.cusAddress,
                    cusID=item.cusID,
                    cusPassword=item.cusPassword,
                    cusStatus=item.cusStatus

                };
                return RedirectToAction("Index", "Home");
            }  
            
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(string firstname,string lastname,string email,string phone,string password,string passwordConfirmation)
        {
            if(password.Equals(passwordConfirmation)==false)
            {
                ViewBag.ErrorcomfirmPass = "Lỗi nhập password ! Vui lòng kiểm tra lại !";
                return View();
            }
            else
            {
                mang = new string[] { ma };
                Session["regisInfo"] = new Customer()
                {
                    cusAddress=null,
                    cusStatus=1,
                    cusType=1,
                    cusName = firstname + "" + lastname,
                    cusEmail = email,
                    cusPhone = phone,
                    cusPassword = password
                };
                guimai("thienquangpro1221.ytb@gmail.com", email, "Đăng kí thành công", "Mã xác nhận là :" + ma + "");
                Session["maxacnhan"] = ma;
                return RedirectToAction("RequestCodeMail");
            }    
           
        }
        //hàm random mã xác nhận 
        private static Random random = new Random();
        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, length)
                .Select(s => s[random.Next(s.Length)]).ToArray());

        }
        public string ma = RandomString(6);


        //hàm gửi mail
        public void guimai(string fr, string to, string sub, string nd)
        {
            MailMessage message = new MailMessage(fr, to, sub, nd);
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("thienquangpro1221.ytb@gmail.com", "0820112001bo");
            client.Send(message);
        }


        public ActionResult RequestCodeMail()
        {
            var registerInfo = Session["regisInfo"] as ShopProduct.Models.Customer;
            string maa = Session["maxacnhan"] as string;
            return View();
        }
        public static string[] mang;
        [HttpPost]
        public ActionResult RequestCodeMail(string mx1,string mx2,string mx3,string mx4, string mx5,string mx6)
        {
            string maxacnhan = mx1 + mx2 + mx3 + mx4 + mx5+mx6;
            var registerInfo = Session["regisInfo"] as ShopProduct.Models.Customer;
            string count = mang[0].ToString();
            if (maxacnhan.Equals(count)==true)
            {
                db.Customers.Add(registerInfo);
                db.SaveChanges();
                return RedirectToAction("Login");
            }
            else
            {
                ViewBag.maxacnhan = "Mã xác nhận không chính xác !";
                return View();
            }

        }

    }
}