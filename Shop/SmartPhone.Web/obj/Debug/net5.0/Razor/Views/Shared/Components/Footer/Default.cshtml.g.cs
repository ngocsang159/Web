#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Views\Shared\Components\Footer\Default.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "a9e010a103568ff2f1f2fbaa15e93e22dff9306a"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_Components_Footer_Default), @"mvc.1.0.view", @"/Views/Shared/Components/Footer/Default.cshtml")]
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
#nullable restore
#line 1 "E:\DO_AN\Shop\SmartPhone.Web\Views\_ViewImports.cshtml"
using SmartPhone.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "E:\DO_AN\Shop\SmartPhone.Web\Views\_ViewImports.cshtml"
using SmartPhone.Web.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a9e010a103568ff2f1f2fbaa15e93e22dff9306a", @"/Views/Shared/Components/Footer/Default.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e2a6b8d880607284f83745bf078a35e601e1464b", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared_Components_Footer_Default : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<SmartPhone.Models.EF.Footer>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<div class=\"footer-static-top footer-static-top-3 pt-xs-50 pb-xs-10\">\r\n    <div class=\"container\">\r\n        <!-- Begin Footer Shipping Area -->\r\n        <div class=\"footer-shipping pb-xs-0\">\r\n            <div class=\"row\">\r\n");
#nullable restore
#line 7 "E:\DO_AN\Shop\SmartPhone.Web\Views\Shared\Components\Footer\Default.cshtml"
                 foreach (var item in Model)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <!-- Begin Li\'s Shipping Inner Box Area -->\r\n                    <div class=\"col-lg-3 col-md-3 col-sm-6 pb-xs-45 footer-item\">\r\n                        <div class=\"li-shipping-inner-box\">\r\n                                <img");
            BeginWriteAttribute("src", " src=\"", 575, "\"", 592, 1);
#nullable restore
#line 12 "E:\DO_AN\Shop\SmartPhone.Web\Views\Shared\Components\Footer\Default.cshtml"
WriteAttributeValue("", 581, item.Image, 581, 11, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            BeginWriteAttribute("alt", " alt=\"", 593, "\"", 609, 1);
#nullable restore
#line 12 "E:\DO_AN\Shop\SmartPhone.Web\Views\Shared\Components\Footer\Default.cshtml"
WriteAttributeValue("", 599, item.Name, 599, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n                            <div class=\"shipping-text\">\r\n                                <h2>");
#nullable restore
#line 14 "E:\DO_AN\Shop\SmartPhone.Web\Views\Shared\Components\Footer\Default.cshtml"
                               Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h2>\r\n                                <span>");
#nullable restore
#line 15 "E:\DO_AN\Shop\SmartPhone.Web\Views\Shared\Components\Footer\Default.cshtml"
                                 Write(item.Description);

#line default
#line hidden
#nullable disable
            WriteLiteral("</span>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- Li\'s Shipping Inner Box Area End Here -->\r\n                    <!-- Begin Li\'s Shipping Inner Box Area -->\r\n");
#nullable restore
#line 21 "E:\DO_AN\Shop\SmartPhone.Web\Views\Shared\Components\Footer\Default.cshtml"
                }

#line default
#line hidden
#nullable disable
            WriteLiteral("            </div>\r\n        </div>\r\n        <!-- Footer Shipping Area End Here -->\r\n    </div>\r\n</div>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<SmartPhone.Models.EF.Footer>> Html { get; private set; }
    }
}
#pragma warning restore 1591
