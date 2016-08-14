<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="container">
      <div class="row" style="height:350px;">
        <div class="col-md-9 col-md-push-3">
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <img class="first-slide" src="/img/pic_1.jpg" alt="First slide">
                <div class="container">
                  <div class="carousel-caption">
                    <h1>Example headline.</h1>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                  </div>
                </div>
              </div>
              <div class="item">
                <img class="second-slide" src="/img/pic_2.jpg" alt="Second slide">
                <div class="container">
                  <div class="carousel-caption">
                    <h1>Another example headline.</h1>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                  </div>
                </div>
              </div>
              <div class="item">
                <img class="third-slide" src="/img/pic_3.jpg" alt="Third slide">
                <div class="container">
                  <div class="carousel-caption">
                    <h1>One more for good measure.</h1>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                  </div>
                </div>
              </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div><!-- /.carousel -->
        </div>
        <div class="col-md-3 col-md-pull-9">
          <div class="menu_nav homenav" id="nav">
            <div class="allcate"><a href="/home">全部商品分类</a></div>
            <ul>
              <li> <a href="/search" >数码产品、配件</a>
                <div class="submenubox disn">
                  <div class="subcate">
                    <ul>
                    	<c:forEach var="item" items="${ menus }" >
                    		<li><a href="/search" >${item.name }--${item.id}</a></li>
                    	</c:forEach>
                      <li><a href="http://www.js-css.cn?electronics-642/category/digitalcamera-644/" >数码相机</a></li>
                      <li><a href="http://www.js-css.cn?electronics-642/category/mp4player-647/" >MP4播放器</a></li>
                      <li><a href="http://www.js-css.cn?electronics-642/category/pda-650/" >掌上电脑</a></li>
                      <li><a href="http://www.js-css.cn?electronics-642/category/digidictionary-653/" >电子词典</a></li>
                      <li><a href="http://www.js-css.cn?electronics-642/category/cardreader-665/" >读卡器</a></li>
                      <li><a href="http://www.js-css.cn?electronics-642/category/pdaacc-683/" >PDA配件</a></li>
                      <li><a href="http://www.js-css.cn?electronics-642/category/dcacc-684/" >数码配件</a></li>
                    </ul>
                  </div>
                  <div class="cl"></div>
                </div>
              </li>
              <li> <a href="http://www.js-css.cn?computers-553/" >电脑、硬件</a>
                <div class="submenubox disn">
                  <div class="subcate">
                    <ul>
                      <li><a href="http://www.js-css.cn?computers-553/category/laptop-600/" >笔记本</a></li>
                      <li><a href="http://www.js-css.cn?computers-553/category/desktop-601/" >台式机</a></li>
                      <li><a href="http://www.js-css.cn?computers-553/category/pda-781/" >平板电脑</a></li>
                      <li><a href="http://www.js-css.cn?computers-553/category/netbook-731/" >上网本</a></li>
                      <li><a href="http://www.js-css.cn?computers-553/category/display-604/" >显示器</a></li>
                      <li><a href="http://www.js-css.cn?computers-553/category/stdcomponent-554/" >电脑配件</a></li>
                      <li><a href="http://www.js-css.cn?computers-553/category/expandcomponent-588/" >外设产品</a></li>
                      <li><a href="http://www.js-css.cn?computers-553/category/network-609/" >网络设备</a></li>
                    </ul>
                  </div>
                  <div class="cl"></div>
                </div>
              </li>
              <li> <a href="http://www.js-css.cn?officedevice-673/" >办公设备、耗材</a>
                <div class="submenubox disn">
                  <div class="subcate">
                    <ul>
                      <li><a href="http://www.js-css.cn?officedevice-673/category/project-608/" >投影仪</a></li>
                      <li><a href="http://www.js-css.cn?officedevice-673/category/laserprinter-675/" >打印机</a></li>
                      <li><a href="http://www.js-css.cn?officedevice-673/category/scanner-678/" >扫描仪</a></li>
                      <li><a href="http://www.js-css.cn?officedevice-673/category/faxmachine-679/" >传真机</a></li>
                      <li><a href="http://www.js-css.cn?officedevice-673/category/copymachine-680/" >复印机</a></li>
                      <li><a href="http://www.js-css.cn?officedevice-673/category/nin1machine-681/" >多功能一体机</a></li>
                      <li><a href="http://www.js-css.cn?officedevice-673/category/scraper-706/" >碎纸机</a></li>
                    </ul>
                  </div>
                  <div class="cl"></div>
                </div>
              </li>
              <li> <a href="http://www.js-css.cn?communication-666/" >手机通讯、配件</a>
                <div class="submenubox disn">
                  <div class="subcate">
                    <ul>
                      <li><a href="http://www.js-css.cn?communication-666/category/threeg-671/" >手机</a></li>
                      <li><a href="http://www.js-css.cn?communication-666/category/interphone-703/" >对讲机</a></li>
                      <li><a href="http://www.js-css.cn?communication-666/category/phone-704/" >电话机</a></li>
                      <li><a href="http://www.js-css.cn?communication-666/category/cell_phone_battery-727/" >手机电池</a></li>
                      <li><a href="http://www.js-css.cn?communication-666/category/cases_pouches-729/" >手机外壳</a></li>
                      <li><a href="http://www.js-css.cn?communication-666/category/bluetooth_earphone-732/" >蓝牙耳机</a></li>
                    </ul>
                  </div>
                  <div class="cl"></div>
                </div>
              </li>
              <li> <a href="http://www.js-css.cn?autoapp-1007/" >汽车用品</a>
                <div class="submenubox disn">
                  <div class="subcate">
                    <ul>
                      <li><a href="http://www.js-css.cn?autoapp-1007/category/carav-5/" >车载播放器</a></li>
                      <li><a href="http://www.js-css.cn?DVD-se-ch-1007-c-5/" >车载DVD</a></li>
                      <li><a href="http://www.js-css.cn?autoapp-1007/category/carcommnav-6/" >车载GPS</a></li>
                      <li><a href="http://www.js-css.cn?autoapp-1007/category/carindecoration-10/" >车内装饰</a></li>
                      <li><a href="http://www.js-css.cn?autoapp-1007/category/carsafe-9/" >汽车防盗器</a></li>
                    </ul>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>