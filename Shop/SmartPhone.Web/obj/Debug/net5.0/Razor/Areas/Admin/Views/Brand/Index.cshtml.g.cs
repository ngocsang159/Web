#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Brand\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "3b6675813cfd48eeb526704ff6c36ad701cdc21d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Brand_Index), @"mvc.1.0.view", @"/Areas/Admin/Views/Brand/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3b6675813cfd48eeb526704ff6c36ad701cdc21d", @"/Areas/Admin/Views/Brand/Index.cshtml")]
    public class Areas_Admin_Views_Brand_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Brand\Index.cshtml"
  
    ViewData["Title"] = "Quản lý thương hiệu";
    Layout = "~/Areas/Admin/Views/Shared/_LayoutAdmin.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""show-table"">
    <div class=""container-fluid"">
        <div class=""showModal"">
            <!--Show dialog image server-->
            <div class=""modal fade"" id=""myModal"" role=""dialog"">
                <div class=""modal-dialog modal-xl"">
                    <div class=""modal-content"">
                        <div class=""modal-header"">
                            <button type=""button"" class=""close"" data-dismiss=""modal"">&times;</button>
                        </div>
                        <div class=""modal-body"">

                        </div>
                        <div class=""modal-footer"">
                            <button type=""button"" class=""btn btn-red"" data-dismiss=""modal"">Đóng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class=""row"">
            <div class=""col-md-8"">
                <div class=""tableView"">
                    <div class=""row p-2"">
                      ");
            WriteLiteral(@"  <div class=""utilities-top col-md-12  p-0 mb-2 justify-content-between d-flex"">
                            <div>
                                <select class=""form-control pageSize"" name=""display"">
                                    <option value=""1"">1</option>
                                    <option value=""5"" selected>5</option>
                                    <option value=""15"">15</option>
                                    <option value=""30"">30</option>
                                    <option value=""50"">50</option>
                                    <option value=""100"">100</option>
                                </select>
                            </div>
                            <div class=""search d-flex"">
                                <input type=""text"" placeholder=""Nhập tiêu đề tìm kiếm"" class=""searchInput form-control"" style=""width:250px"" title=""Nhập tiêu đề tìm kiếm -> Nhấn Enter"">
                                <button class=""btn-primary btn-tools text-nowrap bt");
            WriteLiteral(@"nAdd"">
                                    <i class=""fa fa-plus""></i> Thêm
                                </button>
                            </div>
                        </div>
                        <div class=""col-md-12 p-0"">
                            <div class=""table-view"">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class=""col-md-4 p-2"">
                ");
#nullable restore
#line 57 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Brand\Index.cshtml"
           Write(await Html.PartialAsync("_AddOrUpdate"));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n");
            DefineSection("scripts", async() => {
                WriteLiteral(@"
    <script>
        $(document).ready(function () {

            let pageSize = 5;
            let pageNumber = 1;

            $('.btnAdd,.btnCancel').click(function () {
                RefreshForm();
                $('.text-danger').html('');
            })

            GetDataTable(pageSize, pageNumber, """");
            AddOrUpdate();
            SearchData();
            ChangePageSize();

            // define function

            function GetDataTable(pageSize, pageNumber, Search) {
                var getViewData = new Object();
                getViewData[""pageSize""] = pageSize;
                getViewData[""pageNumber""] = pageNumber;
                getViewData[""Search""] = Search;
                console.log(getViewData);
                $.ajax({
                    url: '/Admin/Brand/_TableView',
                    type: ""post"",
                    dataType: 'html',
                    data: {
                        getViewData: getViewData
                    },");
                WriteLiteral(@"
                    success: function (res) {
                        console.log(getViewData);
                        $('.table-view').html('');
                        $('.table-view').append(res);
                    },
                    error: function (error) {

                    },
                    complete: function () {
                        RefreshForm();
                        SetObjectToForm();
                        DeleteById();
                        ChangePageNumber();
                    }
                })
            }

            function RefreshForm() {
                $('.objInfor input:text').each(function (index, item) {
                    $(this).val('')
                })
                $('.objInfor input[type=number]').each(function (index, item) {
                    $(this).val(0)
                })
            }

            //action

            function SetObjectToForm() {
                $('.btnEdit').click(function () {
        ");
                WriteLiteral(@"            let Id = $(this).attr('data-id');
                    $.ajax({
                        url: '/Admin/Brand/GetBrandById',
                        type: 'post',
                        dataType: 'json',
                        data: {
                            Id: Id
                        },
                        success: function (res) {
                    
                            $.each(res, function (key, value) {
                                    key = key.charAt(0).toUpperCase() + key.substring(1);
                                    $('.objInfor input[name=' + key + ']').val(value);
                            })
                        },
                        error: function (error) {

                        }
                    })
                })
            }

            function DeleteById() {
                $('.btnDelete').click(function () {
                    swal({
                        title: ""Xóa dữ liệu này?"",
                     ");
                WriteLiteral(@"   text: ""Dữ liệu xóa sẽ không thể khôi phục!"",
                        icon: ""warning"",
                        buttons: true,
                        dangerMode: true,
                    })
                        .then((willDelete) => {
                            if (willDelete) {
                                let Id = $(this).attr('data-id');
                                let btn = $(this);
                                $.ajax({
                                    url: '/Admin/Brand/DeleteBrandById',
                                    type: 'post',
                                    dataType: 'json',
                                    data: {
                                        Id: Id
                                    },
                                    success: function (res) {
                                        if (res)
                                            btn.parent('div').parent('td').parent('tr').fadeOut();
                                        win");
                WriteLiteral(@"dow.location.reload();
                                    },
                                    error: function (error) {

                                    },
                                    complete: function () {
                                        GetDataTable(pageSize, pageNumber, '');
                                    }
                                })
                            };
                        });
                })
            }

            function AddOrUpdate() {
                $('.btnSave').click(function () {
                    debugger
                        let masterData = new Object();
                        $('.objInfor input').each(function (index, item) {
                            masterData[$(this).attr('name')] = $(this).val();
                        })
                        console.log(masterData);
                        // submit data
                        $.ajax({
                            url: '/Admin/Brand/AddOrUpdate");
                WriteLiteral(@"',
                            type: 'post',
                            dataType: 'json',
                            data: {
                                masterData: masterData
                            },
                            success: function (res) {
                                let msg = '';
                                let msgf = '';
                                if ($('#Id').val() == 0) {
                                    msg = 'Đã thêm dữ liệu thành công !';
                                    msgf = 'Đã thêm dữ liệu thất bại !';

                                }
                                else {
                                    msg = 'Đã sửa dữ liệu thành công !';
                                    msgf = 'Đã sửa dữ liệu thất bại !';
                                }
                                if (res) {
                                    var t = toastr.success(msg);
                                    t.show();
                              ");
                WriteLiteral(@"  }
                                else {
                                    var t = toastr.warning(msgf);
                                    t.show();
                                }
                            },
                            error: function (error) {
                            },

                            complete: function () {
                                GetDataTable(pageSize, pageNumber, '');
                                RefreshForm();
                            }
                        })
                   
                    // get data
                })
            }

            function CheckValidate() {
                let check = 0;
                $('.text-danger').html('');
                $('.objInfor input').each(function () {
                    let value = $(this).val();
                    if (value == '') {
                        check++;
                        let title = $(this).siblings('label').text();
                  ");
                WriteLiteral(@"      $(this).siblings('.text-danger').append(title + ' không được để trống');
                    }
                })
                return check == 0;
            }

            // change view data

            function SearchData() {
                $('.searchInput').keyup(function () {
                    let search = $(this).val();
                    search = search.trim();
                    GetDataTable(pageSize, 1 , search);
                })
            }

            function ChangePageNumber() {
                $('.pagination li a').click(function () {
                    pageNumber = $(this).attr('data-index');
                    let search = $('.searchInput').val().trim();
                    GetDataTable(pageSize, pageNumber , search);
                })
            }

            function ChangePageSize() {
                $('.pageSize').change(function () {
                    pageSize = $(this).val();
                    let search = $('.searchInput').val().tr");
                WriteLiteral("im();\r\n                    GetDataTable(pageSize, 1, search);\r\n                })\r\n            }\r\n        })\r\n    </script>\r\n");
            }
            );
            WriteLiteral("\r\n");
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
