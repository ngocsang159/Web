#pragma checksum "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e43cb5593edfd37b0c6510cafc7bd679140a5244"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Product_CreateProduct), @"mvc.1.0.view", @"/Areas/Admin/Views/Product/CreateProduct.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e43cb5593edfd37b0c6510cafc7bd679140a5244", @"/Areas/Admin/Views/Product/CreateProduct.cshtml")]
    public class Areas_Admin_Views_Product_CreateProduct : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
  
    ViewData["Title"] = "Thêm mới sản phẩm";
    Layout = "~/Areas/Admin/Views/Shared/_LayoutAdmin.cshtml";
    var brand = ViewBag.brand as IEnumerable<SmartPhone.Models.EF.MasterDatum>;
    var color = ViewBag.color as IEnumerable<SmartPhone.Models.EF.MasterDatum>;

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<style>
    .input-group-prepend, .input-group-prepend > span {
        width: 120px !important;
    }

    .form-group label {
        cursor: pointer;
    }

    h6 span {
        color: #495057;
        font-size: 1.1rem;
        font-weight: 400;
        line-height: 1.2;
        padding: 2rem 0rem;
    }

    .list-process, .list-image, .list-color {
        display: flex;
        flex-wrap: wrap;
    }

    .process-item, .color-item {
        position: relative;
        border-radius: 5px;
        background: #f53d2d;
        margin-right: 5px;
        margin-bottom: 5px;
        font-weight: 600;
    }

        .process-item i, .color-item i {
            position: absolute;
            right: 5px;
            top: 20%;
            color: aliceblue;
        }

    .image-item {
        position: relative;
        width: 120px;
        height: 60px;
        margin: 10px;
        margin-left: 0px;
    }

        .image-item img {
            width: 100%;");
            WriteLiteral(@"
            height: 100%;
            object-fit: contain;
        }

        .image-item i {
            position: absolute;
            top: 5px;
            right: 5px;
            color: red;
        }
</style>
<div class=""show-table"">
    <div class=""container-fluid objInfor pl-3 pr-3"">
        <div class=""showModal"">
            <!--Xem chi tiết -->
            <div class=""modal fade"" id=""myModal"">
                <div class=""modal-dialog modal-xl modal-dialog-scrollable"">
                    <div class=""modal-content"">
                        <div class=""modal-header"">
                            <button type=""button"" class=""close"" data-dismiss=""modal"">&times;</button>
                        </div>
                        <div class=""modal-body"">

                        </div>
                        <div class=""modal-footer"">
                            <button type=""button"" class=""btn btn-danger"" data-dismiss=""modal"">Close</button>
                        </div>
        ");
            WriteLiteral(@"            </div>
                </div>
            </div>
        </div>

        <div class=""row mb-1 objnews"">
            <input type=""hidden"" name=""ID"" value=""0"" id=""ID"" />
            <div class=""col-md-9 mb-1"">
                <!--Mã sản phẩm-->
                <div class="" row mb-4"">
                    <div class=""col-md-4"">
                        <div class=""input-group "">
                            <div class=""input-group-prepend"">
                                <span class=""input-group-text"">Mã sản phẩm</span>
                            </div>
                            <input type=""text"" name=""Code"" class=""form-control"" id=""Code"" maxlength=""20"" autofocus>
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                    <div class=""col-md-4"">
                        <div class=""input-group "">
                            <div class=""input-group-prepend"">
                                <span class=""inp");
            WriteLiteral(@"ut-group-text"">Số lượng nhập</span>
                            </div>
                            <input type=""number"" name=""Total"" class=""form-control"" id=""Toatal"" maxlength=""20"" autofocus>
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                    <div class=""col-md-4"">
                        <div class=""input-group "">
                            <div class=""input-group-prepend"">
                                <span class=""input-group-text"">Số lượng bán</span>
                            </div>
                            <input type=""number"" name=""Buyed"" class=""form-control"" id=""Buyed"" maxlength=""20"" autofocus>
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                </div>
                <!--Tên sản phẩm-->
                <div class=""mb-3"">
                    <div class=""input-group "">
                        <div class=""input-group-pr");
            WriteLiteral(@"epend"">
                            <span class=""input-group-text"">Tên sản phẩm</span>
                        </div>
                        <input type=""text"" name=""Name"" class=""form-control"" id=""Name"" maxlength=""250"">
                    </div>
                    <div class=""text-danger""></div>
                </div>
                <div class=""row mb-4"">
                    <div class=""col-md-4"">
                        <div class=""input-group"">
                            <div class=""input-group-prepend"">
                                <span class=""input-group-text"">Số thứ tự</span>
                            </div>
                            <input type=""number"" name=""Position"" class=""form-control"" id=""Position"" value=""0"" min=""0"" />
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                    <div class=""col-md-4"">
                        <div class=""input-group"">
                            <div class=""input");
            WriteLiteral(@"-group-prepend"">
                                <span class=""input-group-text"">Giá gốc</span>
                            </div>
                            <input type=""number"" name=""Price"" class=""form-control"" id=""Price"" value=""0"" min=""0"" />
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                    <div class=""col-md-4"">
                        <div class=""input-group"">
                            <div class=""input-group-prepend"">
                                <span class=""input-group-text"">Giá giảm</span>
                            </div>
                            <input type=""number"" name=""PriceSale"" class=""form-control"" id=""PriceSale"" value=""0"" min=""0"" />
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                </div>

                <div class=""row mb-4 select-validation"">
                    <div class=""col-md-6"">
               ");
            WriteLiteral(@"         <div class=""input-group"">
                            <div class=""input-group-prepend"">
                                <span class=""input-group-text""> Nổi bật</span>
                            </div>
                            <select name=""IsHot"" class=""form-control"">
                                <option value=""1"">Có</option>
                                <option value=""0"" selected>Không</option>
                            </select>
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                    <div class=""col-md-6"">
                        <div class=""input-group"">
                            <div class=""input-group-prepend"">
                                <span class=""input-group-text"">Tình trạng</span>
                            </div>
                            <select name=""OldNew"" class=""form-control"">
                                <option value=""1"">Mới</option>
                              ");
            WriteLiteral(@"  <option value=""0"" selected>Cũ</option>
                            </select>
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                </div>
                <div class=""row mb-4 select-validation"">
                    <div class=""col-md-6"">
                        <div class=""input-group"">
                            <div class=""input-group-prepend"">
                                <span class=""input-group-text"">Thương hiệu</span>
                            </div>
                            <select name=""BrandID"" class=""form-control"">
                                <option value=""0"">---Chọn thương hiệu---</option>
");
#nullable restore
#line 195 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
                                 foreach (var item in brand)
                                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                    <option");
            BeginWriteAttribute("value", " value=\"", 8301, "\"", 8317, 1);
#nullable restore
#line 197 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
WriteAttributeValue("", 8309, item.Id, 8309, 8, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 197 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
                                                        Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</option>\r\n");
#nullable restore
#line 198 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
                                }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                            </select>
                        </div>
                        <div class=""text-danger""></div>
                    </div>
                    <div class=""col-md-6"">
                        <div class=""input-group mb-3"">
                            <div class=""input-group-prepend"">
                                <span class=""input-group-text"">Màu sắc</span>
                            </div>
                            <select name=""Color"" class=""form-control"">
                                <option value=""0"">---Chọn màu sắc---</option>
");
#nullable restore
#line 210 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
                                 foreach (var item in color)
                                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                    <option");
            BeginWriteAttribute("value", " value=\"", 9100, "\"", 9116, 1);
#nullable restore
#line 212 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
WriteAttributeValue("", 9108, item.Id, 9108, 8, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 212 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
                                                        Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</option>\r\n");
#nullable restore
#line 213 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
                                }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                            </select>
                        </div>
                        <div class=""list-color"">
                            <!--Thêm màu sắc ở đây-->
                        </div>
                    </div>

                </div>
                <!--Description-->
                <div class=""mb-4"">
                    <h6 class="" mb-1""><span>Mô tả</span></h6>
                    <textarea name=""Description"" id=""Description"" class=""ckeditor""></textarea>
                    <div class=""text-danger""></div>
                </div>

                <!-- Content-->
                <div class=""mb-4"">
                    <h6 class="" mb-1""><span>Nội dung chi tiết</span></h6>
                    <textarea name=""Content"" id=""Content"" class=""ckeditor""></textarea>
                    <div class=""text-danger""></div>
                </div>
                <!--Quà tặng kèm theo-->
                <div class=""mb-4"">
                    <h6 class="" mb-1""><span>Phụ kiện tặng kèm</sp");
            WriteLiteral(@"an></h6>
                    <textarea name=""Gift"" id=""Gift"" class=""ckeditor""></textarea>
                    <div class=""text-danger""></div>
                </div>
                <!--Trạng thái-->
                <div class=""form-group"">
                    <label class=""font-weight-bold mr-2"">Trạng thái </label>
                    <input type=""radio"" name=""Status"" id=""s1"" checked /><label class=""ml-2 mr-5"" for=""s1"">Hiển thị</label>
                    <input type=""radio"" name=""Status"" id=""s2"" /><label class=""ml-2"" for=""s2"">Lưu tạm</label>
                </div>

                <!--Button-->
                <div class=""container-fluid"">
                    <div class=""row mb-3"">
                        <div class=""col-md-12 text-right mr-0 pr-0 mt-1 mb-5 modal-footer"">
                            <button type=""button"" class=""btn btn btn-red btnBack""><i class=""fas fa-reply-all""></i> Bỏ qua</button>
                            <button type=""button"" class=""btn btn-success btnSave""");
            BeginWriteAttribute("onclick", " onclick=\"", 11210, "\"", 11220, 0);
            EndWriteAttribute();
            WriteLiteral(@"> <i class=""far fa-save""></i> Lưu lại</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Ảnh ở đây-->
            <div class=""col-md-3 mb-1"">
                <h6 class=""input-group-text"">Ảnh đại diện</h6>
                <input type=""hidden"" name=""Image"" value=""/Upload/Image/no-image.jpg"" id=""image"" />
                <img src=""/Upload/Image/no-image.jpg"" class=""img-size"" alt=""Cập nhật"" style=""object-fit:cover"" id=""show-img"" ""  />
                <div class=""text-danger""></div>

                <!--Thêm ảnh ở đây-->

                <div class=""add-image"">
                    <button class=""btn-green btn-tools btnImage"" style=""font-weight:600;margin-top:5px;"">Thêm ảnh</button>
                    <div class=""list-image"">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
");
            DefineSection("scripts", async() => {
                WriteLiteral(@"
    <script>
        $(document).ready(function () {
            SelectColor();
            OpenFolderImage();
            OpenFolderImageChooseList();
            Save();
            $("".btnBack"").click(function () {

                location.href = ""/Admin/Product/Index/""+ ");
#nullable restore
#line 287 "E:\DO_AN\Shop\SmartPhone.Web\Areas\Admin\Views\Product\CreateProduct.cshtml"
                                                    Write(ViewBag.CategoryId);

#line default
#line hidden
#nullable disable
                WriteLiteral(@";
            })

            function Save() {
                $(document).on('click', '.btnSave', function () {
                    let product = new Object();
                    let productColors = [];
                    let productImages = [];
                    // product
                    $('.objnews input[type=""text""],.objnews input[type=""number""], .objnews input[type=""hidden""]').each(function () {
                        product[$(this).attr('name')] = $(this).val();
                    });

                    $('.select-validation select').each(function () {
                        product[$(this).attr('name')] = $(this).val();
                    });
                    product[""Description""] = CKEDITOR.instances[""Description""].getData();
                    product[""Content""] = CKEDITOR.instances[""Content""].getData();
                    product[""Gift""] = CKEDITOR.instances[""Gift""].getData();
                    product[""Status""] = $('#s1').is(':checked') == 1 ? 1:0;

   ");
                WriteLiteral(@"                 // product color
                    $('.list-color .color-item').each(function (index, item) {
                        let obj = new Object();
                        obj[""Id""] = 0;
                        obj[""ColorId""] = $(this).attr('data-id')
                        obj[""ProductId""] = 0;
                        productColors.push(obj);
                    })
                    // product image
                    $('.list-image .image-item').each(function (index, item) {
                        let obj = new Object();
                        obj[""Id""] = 0;
                        obj[""Image""] = $(this).children('img').attr('src');
                        obj[""ProductId""] = 0;
                        productImages.push(obj);
                    })
                    console.log(product);
                    console.log(productColors);

                    console.log(productImages);
                    if (CheckValidate()) {
                        $.ajax({
       ");
                WriteLiteral(@"                 url: '/Admin/Product/AddOrUpdate',
                        type: 'POST',
                        dataType: 'json',
                            data: {
                                product: product,
                                productColors: productColors,
                                productImages: productImages,
                        },
                        beforeSend: function () {
                        },
                            success: function (res) {
                                if (res == true) {
                                swal({
                                    title: ""Thông báo"",
                                    text: 'Thêm mới dữ liệu thành công.',
                                    icon: ""success"",
                                    dangerMode: true,
                                }).then(() => {

                                });
                            } else {
                                swal({
              ");
                WriteLiteral(@"                      title: ""Thông báo"",
                                    text: 'Đã xảy ra lỗi khi sửa đổi dữ liệu',
                                    icon: ""warning"",
                                    dangerMode: true,
                                });
                            }
                        },
                        error: function () {

                        },
                        complete: function () {

                        }
                    })
                    }
                });
                }

            function CheckValidate() {
                    let check = 0;
                    $('.text-danger').html('');
                    $('.objnews input').each(function () {
                        let value = $(this).val();
                        if (value == '') {
                            console.log($(this));
                            check++;
                            let title = $(this).siblings().children('span').text();");
                WriteLiteral(@"
                            $(this).parent().siblings('.text-danger').append(title + ' không được để trống');
                        }
                        if ($(this).attr('name') == ""Image"" && $(this).val() == ""/Upload/Image/no-image.jpg"") {
                            let title = $(this).siblings('h6').text();
                            $(this).siblings('.text-danger').append(title + ' không được để trống');
                            check++;
                        }
                    })

                    $('.select-validation select').each(function () {
                        let value = $(this).val();
                        if (value == '') {
                            check++;
                            let title = $(this).siblings('div').children('span').text();
                            $(this).parent().siblings('.text-danger').append(title + ' không được để trống');
                        }
                    })

                    $('.objnews textarea').each");
                WriteLiteral(@"(function () {
                        let value = $(this).val();
                        if (value == '' && !$(this).hasClass('ckeditor')) {
                            check++;
                            let title = $(this).siblings('h6').text();
                            $(this).siblings('.text-danger').append(title + ' không được để trống');
                        }
                        else if ($(this).hasClass('ckeditor')) {
                            value = CKEDITOR.instances[$(this).attr('id')].getData();
                            if (value == '') {
                                let title = $(this).siblings('h6').text();
                                $(this).siblings('.text-danger').append(title + ' không được để trống');
                                check++;
                            }

                        }
                    })
                    return check == 0;
            }

            function OpenFolderImage() {
                $('#show-img').c");
                WriteLiteral(@"lick(function () {
                    $.ajax({
                        url: ""/Admin/Home/ReadFileBrower"",
                        data: {},
                        type: ""get"",
                        dataType: 'html',
                        success: function (res) {
                            $('#myModal .modal-body').html('');
                            $('#myModal .modal-body').append(res);
                            if (!$('#myModal').hasClass('show')) {
                                $('#myModal').modal('show')
                                ChooseImage();
                            }
                        }
                    });
                })
            }
            // chọn ảnh
            function OpenFolderImageChooseList() {
                $('.btnImage').click(function () {
                    $.ajax({
                        url: ""/Admin/Home/ReadFileBrower"",
                        data: {},
                        type: ""get"",
                        dat");
                WriteLiteral(@"aType: 'html',
                        success: function (res) {
                            $('#myModal .modal-body').html('');
                            $('#myModal .modal-body').append(res);
                            if (!$('#myModal').hasClass('show')) {
                                $('#myModal').modal('show')
                                ChooseListImage();
                            }
                        }
                    });
                })
            }
            // xóa ảnh
            function DeleteImage() {
                $('.image-item i').click(function () {
                    $(this).parent('div').remove();
                })
            }

            function ChooseListImage() {
                $('#fileExploer').on('click', 'img', function () {
                    var fileUrl = '/Upload/Image/' + $(this).attr('title');

                    let row = `<div class=""image-item"">
                                   <img src=""${fileUrl}"" class=""img-siz");
                WriteLiteral(@"e"" alt=""Cập nhật""/>
                                <i class=""fas fa-times""></i>
                              </div>`;
                    $('.list-image').append(row);
                    // ẩn modal đi
                    $('#myModal').modal('hide');
                    DeleteImage();
                }).hover(function () {
                    $(this).css('cursor', 'pointer')
                })
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

            function SelectColor() {
                $('select[name=Color]').change(functio");
                WriteLiteral(@"n () {
                    let val = $(this).val();
                    let text = $(this).find("":selected"").text();
                    if (val > 0) {
                        let row = `<div data-id=""${val}"" class=""color-item"">
                                <span class=""p-4"">${text}</span>
                                <i data-id=""${val}"" class=""fas fa-times""></i>
                            </div>`;
                        $('.list-color').append(row);
                        $(this).children(':selected').fadeOut();
                        DeleteColor();
                    }

                })
            }

            function DeleteColor() {
                $('.color-item i').click(function () {
                    let id = $(this).attr('data-id');
                    $('select[name=Color] option[value=""' + id + '""]').fadeIn();
                    $(this).parent('div').remove();
                })
            }

        })



    </script>
");
            }
            );
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
