#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "71982d0e83afa79246a2512c0c9628865ec0c6b4"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Admin__GetViewDetail), @"mvc.1.0.view", @"/Areas/Admin/Views/Admin/_GetViewDetail.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"71982d0e83afa79246a2512c0c9628865ec0c6b4", @"/Areas/Admin/Views/Admin/_GetViewDetail.cshtml")]
    public class Areas_Admin_Views_Admin__GetViewDetail : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<SmartPhone.Models.EF.Account>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<style>\r\n    th:nth-child(1), td:nth-child(1) {\r\n        min-width: 200px;\r\n    }\r\n</style>\r\n<h4>Chi tiết thông tin người dùng</h4>\r\n<table>\r\n    <tr>\r\n        <th>Tên: </th>\r\n        <td>");
#nullable restore
#line 11 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
       Write(Model.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n    </tr>\r\n    <tr>\r\n        <th>Chi tiết ảnh : </th>\r\n        <td><img");
            BeginWriteAttribute("src", " src=\"", 315, "\"", 333, 1);
#nullable restore
#line 15 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
WriteAttributeValue("", 321, Model.Image, 321, 12, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            BeginWriteAttribute("alt", " alt=\"", 334, "\"", 351, 1);
#nullable restore
#line 15 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
WriteAttributeValue("", 340, Model.Name, 340, 11, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" width=\"120\" height=\"70\" style=\"object-fit:cover\" /></td>\r\n    </tr>\r\n    <tr>\r\n        <th>Ngày sinh : </th>\r\n");
#nullable restore
#line 19 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
         if (Model.Birthday != null)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <td>");
#nullable restore
#line 21 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
           Write(Model.Birthday.Value.ToString("dd/MM/yyyy"));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n");
#nullable restore
#line 22 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
        }
        else
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <td></td>\r\n");
#nullable restore
#line 26 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n    </tr>\r\n    <tr>\r\n        <th>Email : </th>\r\n        <td>");
#nullable restore
#line 31 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
       Write(Model.Email);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <th>Số điện thoại : </th>\r\n        <td>");
#nullable restore
#line 36 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
       Write(Model.Phone);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <th>Địa chỉ : </th>\r\n        <td>");
#nullable restore
#line 41 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
       Write(Model.Address);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <th>Người tạo : </th>\r\n        <td>");
#nullable restore
#line 46 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
       Write(Model.CreatedBy);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <th>Ngày tạo : </th>\r\n        <td>");
#nullable restore
#line 51 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
       Write(Model.CreatedDate);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <th>Người cập nhật : </th>\r\n        <td>");
#nullable restore
#line 56 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
       Write(Model.UpdatedBy);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <th>Ngày cập nhật : </th>\r\n        <td>");
#nullable restore
#line 61 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
       Write(Model.UpdatedDate);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <th>Trạng thái</th>\r\n");
#nullable restore
#line 66 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
         if (Model.Status == 1)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <td><span class=\"badge badge-success\">Hoạt động</span></td>\r\n");
#nullable restore
#line 69 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
        }
        else
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <td><span class=\"badge badge-danger\">Ngừng hoạt động</span></td>\r\n");
#nullable restore
#line 73 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Admin\_GetViewDetail.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </tr>\r\n</table>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<SmartPhone.Models.EF.Account> Html { get; private set; }
    }
}
#pragma warning restore 1591
