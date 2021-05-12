#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Customer\_AddOrUpdate.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "b57289d0a0b5c07e0e67131deb359d9963ed9834"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Customer__AddOrUpdate), @"mvc.1.0.view", @"/Areas/Admin/Views/Customer/_AddOrUpdate.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b57289d0a0b5c07e0e67131deb359d9963ed9834", @"/Areas/Admin/Views/Customer/_AddOrUpdate.cshtml")]
    public class Areas_Admin_Views_Customer__AddOrUpdate : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<div class=""collapse border show objInfor"">
    <div class=""alert-danger mb-3 admins-h2 btn-red"" style=""background: #f53d2d !important"">
        THÔNG TIN KHÁCH HÀNG
    </div>
    <div class=""form-group mb-3"" hidden>
        <input type=""number"" name=""Id"" class=""form-control"" id=""Id"" value=""0"">
    </div>

    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Họ và tên</label>
        <input type=""text"" name=""Name"" class=""form-control"" id=""name""");
            BeginWriteAttribute("value", " value=\"", 485, "\"", 493, 0);
            EndWriteAttribute();
            WriteLiteral(@" autofocus>
        <div class=""text-danger""></div>
    </div>

    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Số điện thoại</label>
        <input type=""number"" name=""Phone"" class=""form-control"" id=""Phone"" min=""0"" maxlength=""11"">
        <div class=""text-danger""></div>
    </div>

    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Email</label>
        <input type=""email"" name=""Email"" class=""form-control"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Mật khẩu</label>
        <input type=""text"" name=""Password"" class=""form-control"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Địa chỉ</label>
        <input type=""text"" name=""Address"" class=""form-control"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class");
            WriteLiteral("=\"font-weight-bold mb-1\">Tỉnh/Thành phố</label>\r\n        <select class=\"form-control\" name=\"ProvinceId\" id=\"ProvinceId\">\r\n            <option value=\"0\">--Chọn tỉnh, thành phố--</option>\r\n");
#nullable restore
#line 40 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Customer\_AddOrUpdate.cshtml"
             foreach(var item in ViewBag.Province as IEnumerable<SmartPhone.Models.EF.Province>)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <option");
            BeginWriteAttribute("value", " value=\"", 1841, "\"", 1857, 1);
#nullable restore
#line 42 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Customer\_AddOrUpdate.cshtml"
WriteAttributeValue("", 1849, item.Id, 1849, 8, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 42 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Customer\_AddOrUpdate.cshtml"
                                    Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</option>\r\n");
#nullable restore
#line 43 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Customer\_AddOrUpdate.cshtml"
            }    

#line default
#line hidden
#nullable disable
            WriteLiteral(@"        </select>
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Huyện</label>
        <select class=""form-control"" name=""DistrictId"" id=""DistrictId"">
            <option>--Chọn Huyện--</option>
        </select>
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
            <button type=""button"" cl");
            WriteLiteral(@"ass=""btn btn-success btnSave"" data-id=""0""> <i class=""far fa-save""></i> Lưu lại</button>
        </div>
    </div>
</div>
<script>
    debugger
    $(""#ProvinceId"").change(function () {
        var getProvinceID = $(this).val();
        console.log(getProvinceID);
        GetListDistrict(getProvinceID);

    })

    function GetListDistrict(id) {
        $.ajax({
            url: ""/Admin/Customer/GetListDistrict"",
            type: ""post"",
            dataType: ""json"",
            data: { id: id },
            beforeSend: function () { },
            success: function (res) {
                console.log(typeof res);
                var option = `<option value=""0"">---Chọn Huyện------</option>`;
                $(res).each(function (index, item) {
                    option += `<option value=""${item.id}"">${item.name}</option>`
                })
                $(""#DistrictId"").html('');
                $(""#DistrictId"").append(option);
            },
            error: function () { ");
            WriteLiteral("},\r\n            complete: function () {}\r\n        })\r\n    }\r\n   \r\n\r\n   \r\n\r\n</script>\r\n");
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