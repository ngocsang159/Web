#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "b79e855a364ebd1baffd9f72f56d9ed0f14644d7"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_CategoryProduct__TableView), @"mvc.1.0.view", @"/Areas/Admin/Views/CategoryProduct/_TableView.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b79e855a364ebd1baffd9f72f56d9ed0f14644d7", @"/Areas/Admin/Views/CategoryProduct/_TableView.cshtml")]
    public class Areas_Admin_Views_CategoryProduct__TableView : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<SmartPhone.Models.EF.ResponseDataAdmin<SmartPhone.Models.EF.CategoryProduct>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
  
    var data = Model.data;
    var pageSize = Model.pageSize;
    var pageNumber = Model.pageNumber;
    var pageCount = Model.pageCount;
    var total = Model.Total;


#line default
#line hidden
#nullable disable
            WriteLiteral(@"<style>
    table th:nth-child(2), table td:nth-child(2) {
        width: 120px;
    }

    table th:nth-child(1), table td:nth-child(1) {
        width: 150px;
    }
    table td:nth-child(4){
        width:80px;
    }

    table th:nth-child(3), table td:nth-child(5) {
        width: 120px;
    }
</style>
<div class=""data-table"">
    <table id=""myTable"" class=""table table-striped table-bordered text-left table-hover"" style=""background:#fff"">
        <thead>
            <tr>
                <th>M?? danh m???c</th>
                <th>Ti??u ?????</th>
                <th>???nh</th>
                <th>Th??? t???</th>
                <th>Tr???ng th??i</th>
                <th>T??c v???</th>

            </tr>
        </thead>
        <tbody>
");
#nullable restore
#line 40 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
             foreach (var item in data)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <tr>\r\n\r\n                    <td>");
#nullable restore
#line 44 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                   Write(item.Code);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td>");
#nullable restore
#line 45 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                   Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td><img");
            BeginWriteAttribute("src", " src=\"", 1218, "\"", 1235, 1);
#nullable restore
#line 46 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
WriteAttributeValue("", 1224, item.Image, 1224, 11, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            BeginWriteAttribute("alt", " alt=\"", 1236, "\"", 1252, 1);
#nullable restore
#line 46 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
WriteAttributeValue("", 1242, item.Name, 1242, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" width=\"120\" height=\"70\" style=\"object-fit:cover\"/></td>\r\n                    <td>");
#nullable restore
#line 47 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                   Write(item.Position);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n");
#nullable restore
#line 48 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                     if (item.Status == 1)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <td><span class=\"badge badge-success\">Ho???t ?????ng</span></td>\r\n");
#nullable restore
#line 51 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                    }
                    else
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <td><span class=\"badge badge-danger\">Kh??a</span></td>\r\n");
#nullable restore
#line 55 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <td style=\"width:120px\">\r\n                        <div class=\"d-flex justify-content-between w-100\">\r\n                            <button class=\"btn-yellow btn-event btnHref\" data-id=\"");
#nullable restore
#line 58 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                                             Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\" title=\"S???n ph???m\"><i class=\"fas fa-chevron-right\" aria-hidden=\"true\"></i> </button>\r\n                            <button class=\"btn btn-success btn-event btnEdit\" data-id=\"");
#nullable restore
#line 59 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                                                  Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\" title=\"S???a\"><i class=\"far fa-edit\" aria-hidden=\"true\"></i></button>\r\n                            <button class=\"btn btn-info btn-event btnDetail\" data-id=\"");
#nullable restore
#line 60 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                                                 Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\" title=\"Chi ti???t\"><i class=\"fas fa-info-circle\" aria-hidden=\"true\"></i></button>\r\n                            <button class=\"btn btn-danger btn-event btnDelete\" data-id=\"");
#nullable restore
#line 61 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                                                   Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\" title=\"X??a\"><i class=\"fas fa-trash-alt\" aria-hidden=\"true\"></i></button>\r\n\r\n                        </div>\r\n\r\n                    </td>\r\n                </tr>\r\n");
#nullable restore
#line 67 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("        </tbody>\r\n\r\n    </table>\r\n    <div class=\"pagination-container\">\r\n        <ul class=\"pagination col-md-9\">\r\n");
#nullable restore
#line 73 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
             if (pageCount <= 4)
            {
                for (int index = 1; index <= pageCount; index++)
                {
                    if (index == pageNumber)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <li class=\"active\"><a data-index=\"");
#nullable restore
#line 79 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                     Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 79 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                             Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 80 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                    }
                    else
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <li><a data-index=\"");
#nullable restore
#line 83 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                      Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 83 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                              Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 84 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                    }
                }
            }
            else
            {
                if (pageNumber <= 2)
                {
                    for (int index = 1; index <= 4; index++)
                    {
                        if (index == pageNumber)
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <li class=\"active\"><a data-index=\"");
#nullable restore
#line 95 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                         Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 95 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                                 Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 96 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                        }
                        else
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <li><a data-index=\"");
#nullable restore
#line 99 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                          Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 99 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                  Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 100 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                        }
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <li><a class=\"nextPage\" data-index=\"");
#nullable restore
#line 102 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                   Write(pageCount);

#line default
#line hidden
#nullable disable
            WriteLiteral("\"><i class=\"fas fa-chevron-right\"></i></a></li>\r\n");
#nullable restore
#line 103 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                }
                else if (pageNumber >= pageCount - 2)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <li><a class=\"prevPage\" data-index=\"1\"><i class=\"fas fa-chevron-left\"></i></a></li>\r\n");
#nullable restore
#line 107 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"

                    for (int index = pageCount - 3; index <= pageCount; index++)
                    {
                        if (index == pageNumber)
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <li class=\"active\"><a data-index=\"");
#nullable restore
#line 112 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                         Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 112 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                                 Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 113 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                        }
                        else
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <li><a data-index=\"");
#nullable restore
#line 116 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                          Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 116 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                  Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 117 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                        }
                    }
                }
                else
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <li><a class=\"prevPage\" data-index=\"1\"><i class=\"fas fa-chevron-left\"></i></a></li>\r\n");
#nullable restore
#line 123 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                    for (int index = pageNumber - 1; index <= pageNumber + 2; index++)
                    {
                        if (index == pageNumber)
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <li class=\"active\"><a data-index=\"");
#nullable restore
#line 127 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                         Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 127 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                                 Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 128 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                        }
                        else
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <li><a data-index=\"");
#nullable restore
#line 131 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                          Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 131 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                  Write(index);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a></li>\r\n");
#nullable restore
#line 132 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                        }
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <li><a class=\"nextPage\" data-index=\"");
#nullable restore
#line 134 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                                                   Write(pageCount);

#line default
#line hidden
#nullable disable
            WriteLiteral("\"><i class=\"fas fa-chevron-right\"></i></a></li>\r\n");
#nullable restore
#line 135 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                }
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </ul>\r\n        <div class=\"total col-md-3\" style=\"text-align:right\">\r\n            <p>T???ng s??? <b>");
#nullable restore
#line 140 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\CategoryProduct\_TableView.cshtml"
                     Write(total);

#line default
#line hidden
#nullable disable
            WriteLiteral("</b> b???n ghi</p>\r\n        </div>\r\n    </div>\r\n</div>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<SmartPhone.Models.EF.ResponseDataAdmin<SmartPhone.Models.EF.CategoryProduct>> Html { get; private set; }
    }
}
#pragma warning restore 1591
