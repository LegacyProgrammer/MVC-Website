using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using FinleySiebert.DBL;

namespace FinleySiebert.StageBpv.Controllers.Company
{
    public class AccountController : Controller
    {
        private string _viewUrl = "~/Views/Company/";
        private readonly StageBpvContext _context;

        public AccountController(StageBpvContext context)
        {
            _context = context;
        }

        public IActionResult Login()
        {
            return View(_viewUrl + "Account/Login.cshtml");
        }

        public IActionResult Register()
        {
            return View(_viewUrl + "Account/Register.cshtml");
        }
    }
}