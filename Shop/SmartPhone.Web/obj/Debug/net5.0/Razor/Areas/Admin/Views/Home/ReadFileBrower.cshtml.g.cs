#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Home\ReadFileBrower.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "36edbf857e5eb0d542dcb5321b9b8704eeb4e067"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Home_ReadFileBrower), @"mvc.1.0.view", @"/Areas/Admin/Views/Home/ReadFileBrower.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"36edbf857e5eb0d542dcb5321b9b8704eeb4e067", @"/Areas/Admin/Views/Home/ReadFileBrower.cshtml")]
    public class Areas_Admin_Views_Home_ReadFileBrower : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<style type=""text/css"">
    .header {
        margin: 5px;
    }

    #fileExploer {
        display: flex;
        flex-wrap: wrap;
    }

    .item {
        margin: 5px;
        position: relative;
        width: 120px;
    }

        .item img {
            width: 100%;
            height: 100px;
            object-fit: contain;
        }

        .item .btnDelete {
            position: absolute;
            top: 0px;
            right: 0px;
            color: #fff;
            outline: none;
            background-color: red;
            font-size: 10px;
            padding: 3px;
            border: 2px solid red;
        }

        .item p {
            font-size: 13px;
        }
</style>
<script>
    $(document).ready(function () {
        AddFile();
        function AddFile() {
            $('input[name=uploadFile]').change(function () {
                var input = document.getElementById('SubmitImage');
                var files = input.files;
           ");
            WriteLiteral(@"     var ListImage = new FormData();
                $(files).each(function (index, item) {
                    ListImage.append(item.name, item);
                })

                $.ajax(
                    {
                        url: ""/Admin/Home/UploadListFileImage"",
                        data: ListImage,
                        processData: false,
                        contentType: false,
                        type: ""POST"",
                        success: function (data) {
                            $(data).each(function (i, e) {
                                console.log(e);
                                let row = `<div class=""item"">
                                                <img class=""image"" src=""/Upload/Image/${e}"" title=""${e}""/>
                                                <br />
                                                <p>${e}</p>
                                                <button class=""btnDelete"" data-src=""${e}"">X??a</button>
               ");
            WriteLiteral(@"                             </div>`;
                                console.log(row);
                                $('#fileExploer').prepend(row);
                            })
                            RemoveFile()
                        }
                    }
                );
            })
        }

        RemoveFile();
        function RemoveFile() {
            $('.btnDelete').click(function () {
                let fileName = $(this).attr('data-src');
                let conf = confirm(""B???n c?? ch???c mu???n x??a"")
                if (conf == true) {
                    $.ajax(
                        {
                            url: ""/Admin/Home/DeleteImageByName"",
                            dataType: 'json',
                            contentType: 'application/json; charset=utf-8',
                            data: JSON.stringify(fileName),
                            type: ""POST"",
                            success: function (res) {
                              ");
            WriteLiteral(@"  if (res) {
                                    location.reload();
                                }
                            }
                        }
                    );
                }

            })
        }
    })
</script>

<div class=""header"">
    <input type=""file"" name=""uploadFile""");
            BeginWriteAttribute("value", " value=\"", 3390, "\"", 3398, 0);
            EndWriteAttribute();
            WriteLiteral(" id=\"SubmitImage\" multiple />\r\n    <div id=\"valueImage\">\r\n\r\n    </div>\r\n</div>\r\n<div id=\"fileExploer\">\r\n");
#nullable restore
#line 111 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Home\ReadFileBrower.cshtml"
     foreach (var item in ViewBag.data)
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <div class=\"item\">\r\n            <img class=\"image\"");
            BeginWriteAttribute("src", " src=\"", 3609, "\"", 3639, 2);
            WriteAttributeValue("", 3615, "/Upload/Image/", 3615, 14, true);
#nullable restore
#line 114 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Home\ReadFileBrower.cshtml"
WriteAttributeValue("", 3629, item.Name, 3629, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" alt=\"Alternate Text\"");
            BeginWriteAttribute("title", " title=\"", 3661, "\"", 3679, 1);
#nullable restore
#line 114 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Home\ReadFileBrower.cshtml"
WriteAttributeValue("", 3669, item.Name, 3669, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" />\r\n            <br />\r\n");
#nullable restore
#line 116 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Home\ReadFileBrower.cshtml"
              
                string name = item.Name;
                name = name.Length > 20 ? name.Substring(0, 15) + "..." : name;
            

#line default
#line hidden
#nullable disable
            WriteLiteral("            <p>");
#nullable restore
#line 120 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Home\ReadFileBrower.cshtml"
          Write(name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n            <button class=\"btnDelete\" data-src=\"");
#nullable restore
#line 121 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Home\ReadFileBrower.cshtml"
                                           Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">X??a</button>\r\n        </div>\r\n");
#nullable restore
#line 123 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Home\ReadFileBrower.cshtml"
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n\r\n");
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
