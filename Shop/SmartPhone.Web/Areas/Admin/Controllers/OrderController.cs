using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SmartPhone.Models.EF;
using SmartPhone.Models.ViewModel;
using SmartPhone.Services;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Http;

namespace SmartPhone.Web.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class OrderController : Controller
    {
        public IOrderService _orderService;
        public ICustomerService _customerService;
        public OrderController()
        {
            _orderService = new OrderService();
            _customerService = new CustomerService();
        }
        public IActionResult Index()
        {
            ViewBag.Customer = _orderService.GetListCustomer();
            ViewBag.orderStatus = _orderService.GetListStatusOrder();
            ViewBag.Province = _customerService.GetListProvince();
            return View();
        }
        [HttpPost]
        public IActionResult _TableView(GetViewData getViewData)
        {
            var data = _orderService.GetListOrder(getViewData);
            return View(data);
        }
        [HttpPost]
        public IActionResult _ViewDetail(long Id)
        {
            var data = _orderService.GetOrderById(Id);
            return View(data);
        }
        [HttpPost]
        public JsonResult GetOrderById(long Id)
        {
            var data = _orderService.GetOrderById(Id);
            return Json(data);
        }
        [HttpPost]
        public JsonResult AddOrUpdate(Order order)
        {
            var session = HttpContext.Session;
            var admin = JsonConvert.DeserializeObject<Account>(session.GetString("User")).Id;
            order.AdminId = admin;
            order.UpdatedBy = HttpContext.Session.GetString("UserName");
            var data = _orderService.InsertOrder(order);
            return Json(data);
        }
        [HttpPost]
        public JsonResult DeleteById(long Id)
        {
            var data = _orderService.DeleteOrder(Id);
            return Json(data);
        }
        [HttpPost]
        public JsonResult GetListDistrict(string Id)
        {
            var data = _customerService.GetListDistrict(Id);
            return Json(data);
        }
        [HttpPost]
        public JsonResult GetDistrict(string Id)
        {
            var data = _customerService.GetDistrict(Id);
            return Json(data);
        }
        [HttpPost]
        public JsonResult GetProvince(string districtId)
        {
            var data = _customerService.GetProvince(districtId);
            return Json(data);
        }
        [HttpPost]
        public JsonResult GetListProvince()
        {
            var data = _customerService.GetListProvince();
            return Json(data);
        }
    }
}
