#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Views\Author\Register.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "a70308c223daaeb2212a29d3e077b9126e52565e"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Author_Register), @"mvc.1.0.view", @"/Views/Author/Register.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a70308c223daaeb2212a29d3e077b9126e52565e", @"/Views/Author/Register.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e2a6b8d880607284f83745bf078a35e601e1464b", @"/Views/_ViewImports.cshtml")]
    public class Views_Author_Register : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("action", new global::Microsoft.AspNetCore.Html.HtmlString(""), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "POST", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("form"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("id", new global::Microsoft.AspNetCore.Html.HtmlString("form-register-client"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "E:\DO_AN\Shop\SmartPhone.Web\Views\Author\Register.cshtml"
  
    ViewData["Title"] = "Register";
    Layout = "~/Views/Shared/_LayoutLoginClient.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "a70308c223daaeb2212a29d3e077b9126e52565e4778", async() => {
                WriteLiteral(@"
    <h3 class=""heading"">????ng K?? Th??nh Vi??n</h3>
    <p class=""desc"">N??i mua s???m ????ng tin c???y - B???n c???a m???i nh?? ??????</p>
    <div class=""login"">
        <div class=""_3SZqDE"">
            <span class=""_39jZa0"">B???n ???? c?? t??i kho???n?</span>
            <a href=""dang-nhap-tai-khoan"" class=""_1gLe-h"">????ng nh???p</a>
        </div>
    </div>
    <div class=""form-group "" hidden>
        <input type=""number"" name=""Id"" class=""form-control"" id=""Id"" value=""0"">
    </div>
    <div class=""form-group"">
        <label for=""name"" class=""form-label"">H??? v?? T??n</label>
        <input id=""Name"" name=""Name"" type=""text"" placeholder=""VD: Ng???c S??ng"" class=""form-control"">
        <span class=""form-message""></span>
    </div>
    <div class=""form-group"">
        <label for=""phone"" class=""form-label"">S??? ??i???n tho???i</label>
        <input id=""Phone"" name=""Phone"" type=""number"" placeholder=""0383515382"" class=""form-control"" min=""0"" maxlength=""11"">
        <span class=""form-message""></span>
    </div>
    <div class=""form-gr");
                WriteLiteral(@"oup"">
        <label for=""email"" class=""form-label"">Email</label>
        <input id=""Email"" name=""Email"" type=""text"" placeholder=""VD: email@domain.com"" class=""form-control"">
        <span class=""form-message""></span>
    </div>

    <div class=""form-group"">
        <label for=""Password"" class=""form-label"">M???t kh???u</label>
        <input id=""Password"" name=""Password"" type=""password"" placeholder=""Nh???p m???t kh???u"" class=""form-control"">
        <span class=""form-message""></span>
    </div>

    <div class=""form-group"">
        <label for=""password_confirmation"" class=""form-label"">Nh???p l???i m???t kh???u</label>
        <input id=""password_confirmation"" name=""password_confirmation"" placeholder=""Nh???p l???i m???t kh???u"" type=""password"" class=""form-control"">
        <span class=""form-message""></span>
    </div>

    <button class=""form-submit"" type=""button"" id=""btnRegister"">????ng K??</button>
    <div class=""policy"">
        <span>B???ng vi???c ????ng k??, b???n ???? ?????ng ?? v???i Lx-Mobible v??? <a href=""chinh-sach"" class=""_1W");
                WriteLiteral("Cser\"> ??i???u kho???n v?? d???ch v??? </a> & <a");
                BeginWriteAttribute("href", " href=\"", 2261, "\"", 2268, 0);
                EndWriteAttribute();
                WriteLiteral(" class=\"_1WCser\">Ch??nh s??ch b???o m???t</a></span>\r\n    </div>\r\n\r\n");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
