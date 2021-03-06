#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "a5430a7089e7d0de059de1a506e555ab050d0a28"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_OrderDetail__TableView), @"mvc.1.0.view", @"/Areas/Admin/Views/OrderDetail/_TableView.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a5430a7089e7d0de059de1a506e555ab050d0a28", @"/Areas/Admin/Views/OrderDetail/_TableView.cshtml")]
    public class Areas_Admin_Views_OrderDetail__TableView : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<SmartPhone.Models.ViewModel.OrderDetailView>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"
<style>
    table th:nth-child(4), table td:nth-child(4) {
        width: 120px;
    }

    table th:nth-child(6), table td:nth-child(6) {
        width: 150px;
    }

    table th:nth-child(5), table td:nth-child(5) {
        width: 120px;
    }
</style>



<div class=""data-table"">
    <table id=""myTable"" class=""table table-striped table-bordered text-left table-hover"" style=""background:#fff;"">
        <thead>
            <tr>
                <th>Mã sản phẩm</th>
                <th>Màu sắc</th>
                <th>Số lượng</th>
                <th>Giá</th>
                <th>Tiền ship</th>
                <th>Tổng tiền</th>
                <th>Tác vụ</th>
            </tr>
        </thead>
        <tbody>
");
#nullable restore
#line 34 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
             foreach (var item in Model)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <tr>\r\n                    <td>");
#nullable restore
#line 37 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                   Write(item.product.Code);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td>");
#nullable restore
#line 38 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                   Write(item.color.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td>");
#nullable restore
#line 39 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                   Write(item.orderDetail.Quantity);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td>");
#nullable restore
#line 40 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                   Write(item.orderDetail.Price);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td>");
#nullable restore
#line 41 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                   Write(item.orderDetail.PriceShip);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td>");
#nullable restore
#line 42 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                   Write(item.orderDetail.TotalPrice);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td style=\"width:120px\">\r\n                        <div class=\"d-flex justify-content-end w-100\">\r\n");
            WriteLiteral("                            <button class=\"btn-green btn-event btnDetail\" data-id=\"");
#nullable restore
#line 46 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                                                                              Write(item.orderDetail.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\"><i class=\"fas fa-info-circle\"></i> </button>\r\n                            <button class=\"btn-yellow btn-event btnEdit\" data-id=\"");
#nullable restore
#line 47 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                                                                             Write(item.orderDetail.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\"><i class=\"far fa-edit\"></i> </button>\r\n                            <button class=\"btn-red btn-event btnDelete\" role=\"button\" data-id=\"");
#nullable restore
#line 48 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
                                                                                          Write(item.orderDetail.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\"><i class=\"far fa-trash-alt\"></i> </button>\r\n                        </div>\r\n                    </td>\r\n                </tr>\r\n");
#nullable restore
#line 52 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\OrderDetail\_TableView.cshtml"
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </tbody>\r\n\r\n        <tfoot>\r\n\r\n        </tfoot>\r\n    </table>\r\n\r\n</div>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<SmartPhone.Models.ViewModel.OrderDetailView>> Html { get; private set; }
    }
}
#pragma warning restore 1591
