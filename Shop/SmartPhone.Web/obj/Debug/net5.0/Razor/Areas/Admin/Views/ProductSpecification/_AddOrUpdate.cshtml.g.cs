#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\ProductSpecification\_AddOrUpdate.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "c2c9faf100e57c60c23ff2f0348748bdca0ca98a"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_ProductSpecification__AddOrUpdate), @"mvc.1.0.view", @"/Areas/Admin/Views/ProductSpecification/_AddOrUpdate.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c2c9faf100e57c60c23ff2f0348748bdca0ca98a", @"/Areas/Admin/Views/ProductSpecification/_AddOrUpdate.cshtml")]
    public class Areas_Admin_Views_ProductSpecification__AddOrUpdate : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<div class=""collapse border show objInfor"">
    <div class=""alert-danger mb-3 admins-h2 btn-red"" style=""background: #f53d2d !important"">
        THÔNG TIN THÔNG SỐ KỸ THUẬT
    </div>
    <div class=""form-group mb-3"" hidden>
        <input type=""number"" name=""Id"" class=""form-control"" id=""Id"" value=""0"">
    </div>

    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Tiêu đề</label>
        <input type=""text"" name=""Name"" class=""form-control"" id=""name""");
            BeginWriteAttribute("value", " value=\"", 490, "\"", 498, 0);
            EndWriteAttribute();
            WriteLiteral(@" autofocus>
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Thiết kế</label>
        <input type=""text"" name=""Design"" class=""form-control"" id=""Design"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Kích thước</label>
        <input type=""text"" name=""Size"" class=""form-control"" id=""Size"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Màn hình</label>
        <input type=""text"" name=""Screen"" class=""form-control"" id=""Screen"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Độ phân giải màn hình</label>
        <input type=""text"" name=""ScreenResolution"" class=""form-control"" id=""ScreenResolution"">
        <div class=""text-danger""></div>
    </div>
    <div class=""for");
            WriteLiteral(@"m-group mb-3"">
        <label class=""font-weight-bold mb-1"">Màn hình rộng</label>
        <input type=""text"" name=""WideScreen"" class=""form-control"" id=""WideScreen"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Camera sau</label>
        <input type=""text"" name=""CameraRear"" class=""form-control"" id=""CameraRear"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Camera selfie</label>
        <input type=""text"" name=""CameraSelfie"" class=""form-control"" id=""CameraSelfie"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">RAM</label>
        <input type=""text"" name=""Ram"" class=""form-control"" id=""Ram"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Bộ nhớ trong</label>
    ");
            WriteLiteral(@"    <input type=""text"" name=""Memory"" class=""form-control"" id=""Memory"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Thẻ nhớ SD</label>
        <input type=""text"" name=""CardMemory"" class=""form-control"" id=""CardMemory"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">CPU</label>
        <input type=""text"" name=""Cpu"" class=""form-control"" id=""Cpu"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Tốc độ CPU</label>
        <input type=""text"" name=""SpeedCpu"" class=""form-control"" id=""Cpu"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">GPU</label>
        <input type=""text"" name=""Gpu"" class=""form-control"" id=""Gpu"">
        <div class=""text-danger""></div>
    </div>
  ");
            WriteLiteral(@"  <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Dung lượng pin</label>
        <input type=""text"" name=""Battery"" class=""form-control"" id=""Battery"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Cáp sạc</label>
        <input type=""text"" name=""ChargingPort"" class=""form-control"" id=""ChargingPort"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Thẻ SIM</label>
        <input type=""text"" name=""Sim"" class=""form-control"" id=""Sim"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Mạng kết nối</label>
        <input type=""text"" name=""Network"" class=""form-control"" id=""Network"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Jack cắm tai nghe</l");
            WriteLiteral(@"abel>
        <input type=""text"" name=""JackHeadphone"" class=""form-control"" id=""JackHeadphone"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Hệ điều hành</label>
        <input type=""text"" name=""Os"" class=""form-control"" id=""Os"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Sản xuất tại</label>
        <input type=""text"" name=""MadeIn"" class=""form-control"" id=""MadeIn"">
        <div class=""text-danger""></div>
    </div>
    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Thời gian</label>
        <input type=""date"" name=""LaunchTime"" class=""form-control"" id=""LaunchTime"">
        <div class=""text-danger""></div>
    </div>

    <div class=""form-group mb-3"">
        <label class=""font-weight-bold mb-1"">Trạng thái</label>
        <input type=""radio"" name=""Status"" id=""s1"" data-value=""1"" value=""1"" class=""");
            WriteLiteral(@"ml-4"" checked /> <label for=""s1"" class=""mt-1 ml-2"">Hoạt động</label>
        <input type=""radio"" name=""Status"" id=""s2"" data-value=""0"" value=""0"" class=""ml-4"" /> <label for=""s2"" class=""mt-1 ml-2"">Đang khóa</label>
    </div>
    <div class=""row"">
        <div class=""col-md-12 text-right mr-0 pr-0 mt-1 mb-0 modal-footer"">
            <button type=""button"" class=""btn btn btn-red btnCancel""><i class=""fas fa-reply-all""></i> Nhập lại</button>
            <button type=""button"" class=""btn btn-success btnSave"" data-id=""0""> <i class=""far fa-save""></i> Lưu lại</button>
        </div>
    </div>
</div>
");
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
