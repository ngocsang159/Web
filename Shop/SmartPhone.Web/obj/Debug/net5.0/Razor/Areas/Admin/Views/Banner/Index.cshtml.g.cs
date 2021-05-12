#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Banner\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "403f40fe707b303f6a0316e2edfab9437f733a2a"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Banner_Index), @"mvc.1.0.view", @"/Areas/Admin/Views/Banner/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"403f40fe707b303f6a0316e2edfab9437f733a2a", @"/Areas/Admin/Views/Banner/Index.cshtml")]
    public class Areas_Admin_Views_Banner_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Banner\Index.cshtml"
  
    ViewData["Title"] = "Quản lý banner";
    Layout = "~/Areas/Admin/Views/Shared/_LayoutAdmin.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div class=""show-table"">
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
                            <button type=""button"" class=""btn btn-danger"" data-dismiss=""modal"">Đóng</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Xem chi tiết -->
            <div class=""modal fade"" id=""Detail"" role=""dialog"">
                <div class=""modal-dialog modal-xl"">
                    <div clas");
            WriteLiteral(@"s=""modal-content"">
                        <div class=""modal-header"">
                            <button type=""button"" class=""close"" data-dismiss=""modal"">&times;</button>
                        </div>
                        <div class=""modal-body"">

                        </div>
                        <div class=""modal-footer"">
                            <button type=""button"" class=""btn btn-warning"" data-dismiss=""modal"">Đóng</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class=""row"">
            <div class=""col-md-8"">
                <div class=""tableView"">
                    <div class=""row p-2"">
                        <div class=""utilities-top col-md-12  p-0 mb-2 justify-content-between d-flex"">
                            <div>
                                <select class=""form-control pageSize"" name=""display"">
                                    <option value=""1"">1</option>
          ");
            WriteLiteral(@"                          <option value=""5"" selected>5</option>
                                    <option value=""15"">15</option>
                                    <option value=""30"">30</option>
                                    <option value=""50"">50</option>
                                    <option value=""100"">100</option>
                                </select>
                            </div>
                            <div class=""search d-flex"">
                                <input type=""text"" placeholder=""Nhập tiêu đề tìm kiếm -> Nhấn Enter"" class=""searchInput form-control"" style=""width:250px"" title=""Nhập tiêu đề tìm kiếm -> Nhấn Enter"">
                                <button class=""btn-primary btn-tools text-nowrap btnAdd"">
                                    <i class=""fa fa-plus""></i> Thêm
                                </button>
                            </div>
                        </div>
                        <div class=""col-md-12 p-0"">
                         ");
            WriteLiteral("   <div class=\"table-view\">\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-md-4 p-2\">\r\n                ");
#nullable restore
#line 76 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Banner\Index.cshtml"
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
            OpenFolderImage();
            SearchData();
            ChangePageSize();

            function GetDataTable(pageSize, pageNumber, Search) {
                debugger
                var getViewData = new Object();
                getViewData[""pageSize""] = pageSize;
                getViewData[""pageNumber""] = pageNumber;
                getViewData[""Search""] = Search;
                console.log(getViewData);
                $.ajax({
                    url: '/Admin/Banner/_TableView',
                    type: 'post',
                    dataType: 'html',
                    data: {
                        getViewData: getViewDat");
                WriteLiteral(@"a
                    },
                    success: function (res) {
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
                        ViewDetail();
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
                $('#image').val('/Upload/Image/no-image.jpg');
                $('#show-img').attr('src', '/Upload/Image/no-imag");
                WriteLiteral(@"e.jpg');
                $('.objInfor select').each(function (index, item) {
                    $(this).val(0)
                })
            }
            function ViewDetail() {
                $('.btnDetail').click(function () {

                    let Id = $(this).attr('data-id');
                    console.log(Id);
                    $.ajax({
                        url: '/Admin/Banner/_ViewDetail',
                        type: 'post',
                        dataType: 'html',
                        data: {
                            Id: Id
                        },
                        success: function (res) {
                            $('#Detail  .modal-body').html('');
                            $('#Detail  .modal-body').append(res);
                            $('#Detail').modal('show');
                        },
                        error: function (error) {

                        }
                    })
                })
            }
            f");
                WriteLiteral(@"unction SetObjectToForm() {
                $('.btnEdit').click(function () {
                    alert(1);
                    let Id = $(this).attr('data-id');
                    console.log(Id);
                    $.ajax({
                        url: '/Admin/Banner/GetBannerByID',
                        type: 'post',
                        dataType: 'json',
                        data: {
                            Id: Id
                        },
                        success: function (res) {

                            $.each(res, function (key, value) {
                                if (key == ""image"") {
                                    $('.objInfor input[name=Image]').val(value);
                                    $('#show-img').attr('src', value);
                                }
                                else if (key == 'productId') {
                                    $('select[name=ProductId]').val(value);
                                }
            ");
                WriteLiteral(@"                    else if (key == ""status"") {
                                    if (value == 1) {
                                        $('#s1').prop('checked', 1);
                                    }
                                    else {
                                        $('#s2').prop('checked', 1);
                                    }
                                }
                                else {
                                    key = key.charAt(0).toUpperCase() + key.substring(1);
                                    $('.objInfor input[name=' + key + ']').val(value);
                                }

                            })
                        },
                        error: function (error) {

                        }
                    })
                })
            }
            function AddOrUpdate() {
                $('.btnSave').click(function () {
                    debugger
                    if (CheckValidate()) {
     ");
                WriteLiteral(@"                   let banner = new Object();
                        $('.objInfor input[type=text],.objInfor input[type=number],.objInfor input[type=hidden],.objInfor input[type=date]').each(function (index, item) {
                            banner[$(this).attr('name')] = $(this).val();
                        });
                        $('.objInfor select').each(function (index, item) {
                            banner[$(this).attr('name')] = $(this).val();
                        })
                        banner[""Status""] = $('#s1').is(':checked') == 1 ? 1 : 0;
                        console.log(banner);
                        // submit data
                        $.ajax({
                            url: '/Admin/Banner/AddOrUpdate',
                            type: 'post',
                            dataType: 'json',
                            data: {
                                banner: banner
                            },
                            success: function (re");
                WriteLiteral(@"s) {

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
                                }
                                else {
                                    var t = toastr.warning(msgf);
                                    t.show();
                                }
                            },
                            error: funct");
                WriteLiteral(@"ion (error) {
                            },

                            complete: function () {
                                GetDataTable(pageSize, pageNumber, '');
                                RefreshForm();
                            }
                        })
                    }
                    // get data
                })
            }
            function DeleteById() {
                $('.btnDelete').click(function () {
                    swal({
                        title: ""Xóa dữ liệu này?"",
                        text: ""Dữ liệu xóa sẽ không thể khôi phục!"",
                        icon: ""warning"",
                        buttons: true,
                        dangerMode: true,
                    })
                        .then((willDelete) => {
                            if (willDelete) {
                                let Id = $(this).attr('data-id');
                                let btn = $(this);
                                $.ajax({
     ");
                WriteLiteral(@"                               url: '/Admin/Banner/DeleteByID',
                                    type: 'post',
                                    dataType: 'json',
                                    data: {
                                        Id: Id
                                    },
                                    success: function (res) {
                                        if (res)
                                            btn.parent('li').parent('ul').parent('div').parent('div').parent('td').parent('tr').fadeOut();
                                        window.location.reload();
                                    },
                                    error: function (error) {

                                    },
                                    complete: function () {
                                        GetDataTable(pageSize, pageNumber, '');
                                    }
                                })
                            };
      ");
                WriteLiteral(@"                  });
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
                        $(this).siblings('.text-danger').append(title + ' không được để trống');
                    }
                    if ($(this).attr('name') == ""Image"" && $(this).val() == ""/Upload/Image/no-image.jpg"") {
                        let title = $(this).siblings('h6').text();
                        $(this).siblings('.text-danger').append(title + ' không được để trống');
                        check++;
                    }
                })
                $('.objInfor select').each(function () {
                    let value = $(this).val();
                    ");
                WriteLiteral(@"if (value == 0) {
                        check++;
                        let title = $(this).siblings('label').text();
                        $(this).siblings('.text-danger').append(title + ' không được để trống');
                    }
                })
                return check == 0;
            }

            // change view data

            function SearchData() {
                $('.searchInput').keyup(function () {
                    let search = $(this).val();
                    search = search.trim();
                    GetDataTable(pageSize, 1, search);
                })
            }

            function ChangePageNumber() {
                $('.pagination li a').click(function () {
                    pageNumber = $(this).attr('data-index');
                    let search = $('.searchInput').val().trim();
                    GetDataTable(pageSize, pageNumber, search);
                })
            }

            function ChangePageSize() {
                $('");
                WriteLiteral(@".pageSize').change(function () {
                    pageSize = $(this).val();
                    let search = $('.searchInput').val().trim();
                    GetDataTable(pageSize, 1, search);
                })
            }

            // choose image
            function OpenFolderImage() {
                $('#show-img').click(function () {
                    $.ajax({
                        url: ""/Admin/Home/ReadFileBrower"",
                        data: {},
                        type: ""get"",
                        dataType: 'html',
                        success: function (res) {
                            $('#myModal .modal-body').html('');
                            $('#myModal .modal-body').append(res);
                            if (!$('#myModal').hasClass('show')) {
                                $('#myModal').modal('show');
                                ChooseImage();
                            }

                        }
                    });
        ");
                WriteLiteral(@"        })
            }

            function ChooseImage() {
                $('#fileExploer').on('click', 'img', function () {
                    var fileUrl = '/Upload/Image/' + $(this).attr('title');
                    $('#show-img').attr('src', fileUrl);
                    $('#image').val(fileUrl);
                    // ẩn modal đi
                    $('#myModal').modal('hide');
                }).hover(function () {
                    $(this).css('cursor', 'pointer')
                })
            }
        })
    </script>
");
            }
            );
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