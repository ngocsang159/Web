#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Footer\_AddOrUpdate.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "c3448098e57f0f8cb354c3e9630f5f10c75adaae"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Footer__AddOrUpdate), @"mvc.1.0.view", @"/Areas/Admin/Views/Footer/_AddOrUpdate.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c3448098e57f0f8cb354c3e9630f5f10c75adaae", @"/Areas/Admin/Views/Footer/_AddOrUpdate.cshtml")]
    public class Areas_Admin_Views_Footer__AddOrUpdate : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<div class=""collapse border show objInfor"">
    <div class=""alert-danger mb-3 admins-h2 btn-red"" style=""background: #f53d2d !important"">
        THÔNG TIN VỀ FOOTER
    </div>
    <div class=""form-group mb-3"" hidden>
        <input type=""number"" name=""Id"" class=""form-control"" id=""Id"" value=""0"">
    </div>

    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Tiêu đề</label>
        <input type=""text"" name=""Name"" class=""form-control"" id=""name""");
            BeginWriteAttribute("value", " value=\"", 482, "\"", 490, 0);
            EndWriteAttribute();
            WriteLiteral(@" autofocus />
        <div class=""text-danger""></div>
    </div>
    <div class="" mb-3"">
        <h6 class=""input-group-text"">Ảnh Footer</h6>
        <input type=""hidden"" name=""Image"" value=""/Upload/Image/no-image.jpg"" id=""image"" />
        <img src=""/Upload/Image/no-image.jpg"" alt=""ảnh banner"" class=""img-size img-fluid"" title=""Cập nhật"" id=""show-img"" style=""object-fit:cover"" />
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Mô tả</label>
        <input type=""text"" name=""Description"" class=""form-control"" id=""Description""");
            BeginWriteAttribute("value", " value=\"", 1111, "\"", 1119, 0);
            EndWriteAttribute();
            WriteLiteral(@">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Thứ tự</label>
        <input type=""number"" name=""Position"" class=""form-control"" id=""Position"" value=""0"">
        <div class=""text-danger""></div>
    </div>

    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Trạng thái</label>
        <input type=""radio"" name=""Status"" id=""s1"" data-value=""1"" value=""1"" class=""ml-4"" checked /> <label for=""s1"" class=""mt-1 ml-2"">Hoạt động</label>
        <input type=""radio"" name=""Status"" id=""s2"" data-value=""0"" value=""0"" class=""ml-4"" /> <label for=""s2"" class=""mt-1 ml-2"">Khóa</label>
    </div>
    <div class=""row"">
        <div class=""col-md-12 text-right mr-0 pr-0 mt-1 mb-0 modal-footer"">
            <button type=""button"" class=""btn btn btn-red btnCancel""><i class=""fas fa-reply-all""></i> Nhập lại</button>
            <button type=""button"" class=""btn btn-success btnSave"" data-id=""0""> <i class=""far fa-save"">");
            WriteLiteral("</i> Lưu lại</button>\r\n        </div>\r\n    </div>\r\n</div>\r\n");
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
