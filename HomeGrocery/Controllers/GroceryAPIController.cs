using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HomeGrocery.Controllers
{
    public class GroceryAPIController : Controller
    {
        // GET: GroceryAPI
        public ActionResult Index()
        {
            return View();
        }
    }
}