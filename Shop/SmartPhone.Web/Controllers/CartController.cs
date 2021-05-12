using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SmartPhone.Models.ViewModel;
using SmartPhone.Models.EF;
using SmartPhone.Services;
using SmartPhone.Commons;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;

namespace SmartPhone.Web.Controllers
{

    public class CartController : Controller
    {
        public IProductDetailService _productDetailService;
        public IOrderService _orderService;
        public ICustomerService _customerService;


        private const string CartSession = "CartSession";
        public CartController()
        {
            _productDetailService = new ProductDetailService();
            _orderService = new OrderService();
            _customerService = new CustomerService();
        }
        [Route("dat-hang")]
        [Route("Cart/Index")]
        public IActionResult Index()
        {
            return View(GetCartItems());
        }
        //Lấy cart từ session 
        List<CartViewModel> GetCartItems()
        {
            var session = HttpContext.Session;
            string jsonCart = session.GetString(Constant.cartSession);
            if (jsonCart != null)
            {
                return JsonConvert.DeserializeObject<List<CartViewModel>>(jsonCart);
            }
            return new List<CartViewModel>();
        }
        //lưu cart vào session
        void SaveCartSession(List<CartViewModel> cartViews)
        {
            var session = HttpContext.Session;
            string jsonCart = JsonConvert.SerializeObject(cartViews);
            session.SetString(Constant.cartSession, jsonCart);
        }

        public class PostObj
        {
            public int productId { get; set; }
            public int colorId { get; set; }
        }
        [HttpPost]
        public JsonResult AddToCart(PostObj postObj)
        {
            var product = _productDetailService.GetProductId(postObj.productId);
            var color = _productDetailService.GetColor(postObj.colorId);
            // tìm color như product
            List<CartViewModel> currentCart = new List<CartViewModel>();
            var cart = GetCartItems();
            int quantity = 1;
            var cartItem = cart.Find(n => n.product.Id == postObj.productId);
            if (cartItem != null)
            {

                cartItem.Quantity++;
            }
            else
            {
                // idcolor 
                //tìm color theo Id
                var cartView = new CartViewModel();
                {
                    cartView.color = color;
                    cartView.product = product;
                    cartView.Quantity = quantity;
                };
                cart.Add(cartView);
            }

            //if (currentCart == null) currentCart = new List<CartViewModel>();


            SaveCartSession(cart);
            return Json(true);

        }
        [Route("/xoa-don-hang/{ProductId}")]
        public IActionResult RemoveCart(long ProductId)
        {
            var cart = GetCartItems();
            var carItem = cart.Find(n => n.product.Id == ProductId);
            if (carItem != null)
            {
                cart.Remove(carItem);
            }
            SaveCartSession(cart);
            return RedirectToAction(nameof(Index));
        }

        [HttpPost]
        public IActionResult UpdateCart(CartViewModel cartView)
        {
            if (cartView != null)
            {
                var cart = GetCartItems();
                //var cartItem = cart.Find(n => n.product.Id == cartView.product.Id);
                foreach (var item in cart)
                {
                    if (item.product.Id == cartView.product.Id)
                    {
                        item.Quantity = cartView.Quantity;
                    }
                }
                SaveCartSession(cart);
            }
            List<CartViewModel> lst = GetCartItems();
            return Json(lst);

        }
        [Route("dat-hang/thanh-toan")]
        public IActionResult Payment()
        {
            List<CartViewModel> lst = GetCartItems();
            ViewBag.province = _customerService.GetListProvince();
            return View(lst);
        }

        [HttpPost]
        public JsonResult GetDistrict(string Id)
        {
            return Json(_customerService.GetListDistrict(Id));
        }
       
          
      
        [HttpPost]
        public JsonResult Order(Order obj)
        {
            var customer = HttpContext.Request.Cookies["Author"];
            if (customer == null)
                return Json(false);
            var cus = JsonConvert.DeserializeObject<Customer>(customer);
            Random GetNumber = new Random();
            obj.CustomerId = cus.Id;
            obj.OrderStatusId = 1;
            obj.Status = 1;
            obj.IsDelete = false;
            obj.Code = "LH" + GenerateNumber();
            List<OrderDetail> orderDetails = new List<OrderDetail>();
            var session = HttpContext.Session;
            string jsonCart = session.GetString(Constant.cartSession);
            if (jsonCart != null)
            {
                var cart = JsonConvert.DeserializeObject<List<CartViewModel>>(jsonCart);
                var check = cart.Where(x => x.product.Id == 1).FirstOrDefault();
               
                foreach (var item in cart)
                {
                    OrderDetail o = new OrderDetail();
                    o.ColorId = item.color.Id;
                    o.Id = 0;
                    o.OrderId = 0;
                    o.PriceShip = item.PriceShip;
                    o.ProductId = item.product.Id;
                    o.Quantity = item.Quantity;
                    if (item.product.PriceSale == 0)
                    {
                        o.Price = item.product.Price;
                        o.TotalPrice = item.product.Price * item.Quantity + o.PriceShip;

                    }
                    else
                    {
                        o.Price = item.product.PriceSale;
                        o.TotalPrice = item.product.PriceSale * item.Quantity + o.PriceShip;
                    }    
                    orderDetails.Add(o);
                }
            }
            var res = _orderService.Order(obj, orderDetails);
            return Json(true);
        }
        public string GenerateNumber()
        {
            Random random = new Random();
            string r = "";
            int i;
            for (i = 1; i < 4; i++)
            {
                r += random.Next(0, 9).ToString();
            }
            return r;
        }

        [Route("dat-hang-thanh-cong")]
        public IActionResult SuccesCart()
        {
            return View();
        }


    }
}
