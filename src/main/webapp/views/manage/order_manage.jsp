<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>罗汉家居网购</title>
    <base href="<%=request.getContextPath() + "/"%>">
    <link rel="stylesheet" href="assets/css/manage/style.css">
    <%--    引入jquery--%>
    <script type="text/javascript" src="script/jquery-3.6.0.min.js"></script>
    <%--    右边样式--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="assets/css/vendor/vendor.min.css"/>
    <link rel="stylesheet" href="assets/css/plugins/plugins.min.css"/>
    <link rel="stylesheet" href="assets/css/style.min.css">
    <script type="text/javascript">
        $(function () {
            // alert("引入jquery成功")
            //绑定一个点击事件 基础选择器
            $("a.deleteCss").click(function () {
                //2个paremt找到tr          eq(1)第二个
                var furnName = $(this).parent().parent().find("td:eq(0)").text();
                //confirm 对话窗口
                //点击确定返回ture,点击取消返回false
                return confirm("你确定要删除[" + furnName + "]?");
            })
        })
    </script>
</head>
<body id="body-pd">
<%--左侧内容--%>
<div class="l-navbar" id="navbar">
    <nav class="nav">
        <div>
            <div class="nav_brand">
                <ion-icon name="menu-outline" class="nav_toggle" id="nav-toggle"></ion-icon>
            </div>
            <div class="nav_list">
                <a href="views/manage/manage_menu.jsp" class="nav_link">
                    <ion-icon name="home-outline" class="nav_icon"></ion-icon>
                    <span class="nav_name">后台首页</span>
                </a>
                <a href="orderServlet?action=OrdersByuid" class="nav_link active">
                    <ion-icon name="chatbubbles-outline" class="nav_icon "></ion-icon>
                    <span class="nav_name">订单管理</span>
                </a>
                <%--<div class="nav_link collapse2">--%>
                <%--    <ion-icon name="chatbubbles-outline" class="nav_icon "></ion-icon>--%>
                <%--    <span class="nav_name">订单管理</span>--%>
                <%--    <ion-icon name="chevron-down-outline" class="collapse2__link"></ion-icon>--%>
                <%--    <ul class="collapse2_menu">--%>
                <%--        <a href="memberServlet?action=memberPageByname" class="collapse2__sublink">用户管理</a>--%>
                <%--        <a href="#" class="collapse2__sublink">添加用户</a>--%>
                <%--        <a href="#" class="collapse2__sublink">cccc</a>--%>
                <%--    </ul>--%>
                <%--</div>--%>
                <div class="nav_link collapse2">
                    <ion-icon name="folder-outline" class="nav_icon"></ion-icon>
                    <span class="nav_name">家居后台</span>
                    <ion-icon name="chevron-down-outline" class="collapse2__link"></ion-icon>
                    <ul class="collapse2_menu">
                        <a href="manage/furnServlet?action=page&pageNo=1&pageSize=5" class="collapse2__sublink">家居管理</a>
                        <a href="views/manage/furn_add.jsp?pageNo=${requestScope.page.pageNo}"
                           class="collapse2__sublink">添加家居</a>
                    </ul>
                </div>
                <%--<a href="#" class="nav_link" data-page="furn_update.jsp.jsp">--%>
                <%--    <ion-icon name="pie-chart-outline" class="nav_icon"></ion-icon>--%>
                <%--    <span class="nav_name">库存管理（未做）</span>--%>
                <%--</a>--%>
                <div class="nav_link collapse2">
                    <ion-icon name="people-outline" class="nav_icon"></ion-icon>
                    <span class="nav_name">用户</span>
                    <ion-icon name="chevron-down-outline" class="collapse2__link"></ion-icon>
                    <ul class="collapse2_menu">
                        <a href="memberServlet?action=memberPageByname" class="collapse2__sublink">用户管理</a>
                        <a href="views/manage/member_add.jsp" class="collapse2__sublink">添加用户</a>
                    </ul>
                </div>

                <a href="#" class="nav_link">
                    <ion-icon name="settings-outline" class="nav_icon"></ion-icon>
                    <span class="nav_name">设置</span>
                </a>
            </div>
        </div>
        <a href="#" class="nav_link">
            <ion-icon name="log-out-outline" class="nav_icon"></ion-icon>
            <span class="nav_name">退出登陆</span>
        </a>
    </nav>
</div>
<%--右侧内容开始--%>
<!-- Header Area start  -->
<div class="header section">
    <!-- Header Top  End -->
    <!-- Header Bottom  Start -->
    <div class="header-bottom d-none d-lg-block">
        <div class="container position-relative">
            <div class="row align-self-center">
                <!-- Header Logo Start -->
                <div class="col-auto align-self-center">
                    <div class="header-logo">
                        <a href="index.jsp"><img src="assets/images/logo/logo.png" alt="Site Logo"/></a>
                    </div>
                </div>
                <!-- Header Logo End -->

                <!-- Header Action Start -->
                <div class="col align-self-center">
                    <div class="header-actions">
                        <div class="header_account_list">
                            <a href="javascript:void(0)" class="header-action-btn search-btn"><i
                                    class="icon-magnifier"></i></a>
                            <div class="dropdown_search">
                                <form class="action-form" action="orderServlet">
                                    <input class="form-control" name="oid" placeholder="请输入订单号" type="text">
                                    <input class="form-control" name="action" value="OrdersByuid" type="hidden">
                                    <button class="submit" type="submit"><i class="icon-magnifier"></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Single Wedge Start -->
                        <div class="header-bottom-set dropdown">
                            <a>订单号搜索</a>
                        </div>
                    </div>
                </div>
                <!-- Header Action End -->
            </div>
        </div>
    </div>
    <!-- Header Bottom  End -->
    <!-- Header Bottom  Start 手机端的header -->
    <div class="header-bottom d-lg-none sticky-nav bg-white">
        <div class="container position-relative">
            <div class="row align-self-center">
                <!-- Header Logo Start -->
                <div class="col-auto align-self-center">
                    <div class="header-logo">
                        <a href="index.jsp"><img width="280px" src="assets/images/logo/logo.png" alt="Site Logo"/></a>
                    </div>
                </div>
                <!-- Header Logo End -->
            </div>
        </div>
    </div>
    <!-- Main Menu Start -->
    <div style="width: 100%;height: 50px;background-color: black"></div>
    <!-- Main Menu End -->
</div>
<!-- Cart Area Start -->
<div class="cart-main-area pt-100px pb-100px">
    <div class="container"><h3 class="cart-page-title">订单管理</h3>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <form action="#">
                    <div class="table-content table-responsive cart-table-content">
                        <table>
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>下单时间</th>
                                <th>价格</th>
                                <th>状态</th>
                                <th>用户ID</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody> <%--取出orders集合，循环显示--%> <c:forEach items="${requestScope.page.items}" var="order">
                                <tr>
                                    <td class="product-name"><a href="#">${order.id}</a></td>
                                    <td class="product-name"><a href="#">${order.createTime}</a></td>
                                    <td class="product-price-cart"><span class="amount">${order.price}</span></td>
                                    <td class="product-quantity"> ${order.status} </td>
                                    <td class="product-quantity"> ${order.memberId} </td>
                                    <td class="product-remove"><a
                                            href="orderServlet?action=showOrderInfoByManage&orderId=${order.id}"><i
                                            class="icon-pencil"></i></a> <a class="deleteCss"
                                            href="orderServlet?action=delByOid&id=${order.id}&pageNo=${requestScope.page.pageNo}"><i
                                            class="icon-close"></i></a></td>
                                </tr>
                            </c:forEach></tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
        <!-- Pagination Area Start 分页导航条 -->
        <div class="pro-pagination-style text-center mb-md-30px mb-lm-30px mt-6" data-aos="fade-up">
            <ul>
                <li><a href="orderServlet?action=OrdersByuid&pageNo=1">首页</a></li>
                <%--如果当前页 > 1 , 就显示上一页--%>
                <c:if test="${requestScope.page.pageNo > 1}">
                    <%--<li><a href="customerFurnServlet?action=OrdersByuid&pageNo=${requestScope.page.pageNo - 1}">上一页</a></li>--%>
                    <li><a href="orderServlet?action=OrdersByuid&pageNo=${page.pageNo-1}">上一页</a></li>
                </c:if>
                <c:set var="begin" value="1"/>
                <c:set var="end" value="${requestScope.page.pageTotalCount}"/>
                <c:forEach begin="${begin}" end="${end}" var="i">
                    <%--如果i是当前页, 就使用class="active" 修饰--%>
                    <c:if test="${i == requestScope.page.pageNo}">
                        <li><a class="active" href="orderServlet?action=OrdersByuid&pageNo=${i}">${i}</a></li>
                    </c:if>
                    <c:if test="${i != requestScope.page.pageNo}">
                        <li><a href="orderServlet?action=OrdersByuid&pageNo=${i}">${i}</a></li>
                    </c:if>
                </c:forEach>
                <%--如果当前页 < 总页数 , 就显示下一页--%>
                <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotalCount}">
                    <li><a href="orderServlet?action=OrdersByuid&pageNo=${page.pageNo+1}">下一页</a>
                    </li>
                </c:if>
                <li><a href="orderServlet?action=OrdersByuid&pageNo=${requestScope.page.pageTotalCount}">尾页</a></li>
                <li><a>共 ${requestScope.page.pageTotalCount} 页</a></li>
            </ul>
        </div>
        <!-- Pagination Area End -->
    </div>
</div>
<!-- Cart Area End -->

<!-- Footer Area Start -->
<div class="footer-area">
    <div class="footer-container">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <!-- Start single blog -->
                    <!-- End single blog -->
                    <!-- Start single blog -->
                    <div class="col-md-6 col-sm-6 col-lg-3 mb-md-30px mb-lm-30px" data-aos="fade-up"
                         data-aos-delay="400">
                        <div class="single-wedge">
                            <h4 class="footer-herading">信息</h4>
                            <div class="footer-links">
                                <div class="footer-row">
                                    <ul class="align-items-center">
                                        <li class="li"><a class="single-link" href="about.html">关于我们</a></li>
                                        <li class="li"><a class="single-link" href="#">交货信息</a></li>
                                        <li class="li"><a class="single-link" href="privacy-policy.html">隐私与政策</a></li>
                                        <li class="li"><a class="single-link" href="#">条款和条件</a></li>
                                        <li class="li"><a class="single-link" href="#">制造</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End single blog -->
                    <!-- Start single blog -->
                    <div class="col-md-6 col-lg-2 col-sm-6 mb-lm-30px" data-aos="fade-up" data-aos-delay="600">
                        <div class="single-wedge">
                            <h4 class="footer-herading">我的账号</h4>
                            <div class="footer-links">
                                <div class="footer-row">
                                    <ul class="align-items-center">
                                        <li class="li"><a class="single-link" href="my-account.html">我的账号</a>
                                        </li>
                                        <li class="li"><a class="single-link" href="cart.html">我的购物车</a></li>
                                        <li class="li"><a class="single-link" href="login.html">登录</a></li>
                                        <li class="li"><a class="single-link" href="wishlist.html">感兴趣的</a></li>
                                        <li class="li"><a class="single-link" href="checkout.html">结账</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End single blog -->
                    <!-- Start single blog -->
                    <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="800">

                    </div>
                    <!-- End single blog -->
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row flex-sm-row-reverse">
                    <div class="col-md-6 text-right">
                        <div class="payment-link">
                            <%--bug终于找到了！！！！！！！
                            #会去请求当前页 =>http://localhost:8080/lhjiaju/

                            ！！！！！！--%>

                            <%--<img src="#" alt="">--%>
                        </div>
                    </div>
                    <div class="col-md-6 text-left">
                        <p class="copy-text">Copyright &copy; 2023 罗汉家居~</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Area End -->
<script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script>
<!-- Main Js -->
<script src="assets/js/main.js"></script>
<%--右侧内容结束--%>
<%--左侧导航栏样式与Js--%>
<script type="module" src="https://unpkg.com/ionicons@5.1.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule="" src="https://unpkg.com/ionicons@5.1.2/dist/ionicons/ionicons.js"></script>
<script type="text/javascript">
    const showMenu = (toggleId, navbarId, bodyId) => {
        const toggle = document.getElementById(toggleId),
            navbar = document.getElementById(navbarId);
        bodypadding = document.getElementById(bodyId);

        if (toggle && navbar) {
            toggle.addEventListener('click', () => {
                navbar.classList.toggle('expander')
                bodypadding.classList.toggle('body-pd')
            })
        }
    }

    showMenu('nav-toggle', 'navbar', 'body-pd')


    const linkColor = document.querySelectorAll(".nav_link")

    function colorLink() {
        linkColor.forEach(l => l.classList.remove('active'))
        this.classList.add('active')
    }

    linkColor.forEach(l => l.addEventListener('click', colorLink))

    const linkCollapse2 = document.getElementsByClassName('collapse2__link')
    var i

    for (i = 0; i < linkCollapse2.length; i++) {
        linkCollapse2[i].addEventListener('click', function () {
            const collapse2Menu = this.nextElementSibling
            collapse2Menu.classList.toggle('showCollapse2')

            const rotate = collapse2Menu.previousElementSibling
            rotate.classList.toggle("rotate")
        })
    }
</script>
</body>
</html>