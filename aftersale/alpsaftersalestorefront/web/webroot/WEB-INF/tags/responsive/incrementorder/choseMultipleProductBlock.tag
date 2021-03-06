<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/responsive/formElement"%>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="chosepopup" tagdir="/WEB-INF/tags/responsive/serviceorder/chosePopup"%>
<div class="col-md-12 col-sm-12 multi-sp-block" style="display: none">
    <div class="col-md-12 col-sm-12 ls_nav">
        <div class=" ls_nav_nav" style="margin-bottom:15px;">
            <p style="height:22px;"><spring:theme code="detail.operate.tab.label.add"/></p>
            <div>
                <p class="pull-right a_hover">
                    <a href="#" class="close-multi-sp-block"><spring:theme code="text.back.btn"/></a>
                </p>
            </div>

        </div>
        <div class="row">
            <div class="col-md-6 col-sm-6 Ry_flex form-group">
                <label for="entry-discount-rate" class="label_color label_width"><spring:theme code='entry.discount.rate' /></label>
                <input id="entry-discount-rate" name="addentry.discountRate" placeholder="${entry.discount.rate.placeholder}" class="form-control" type="text" value="100">
                <label for="" class="label_color input_company">%</label>
            </div>
            <div style="display: none;">
                <div>
                    <input type="button" class="but_objective option seleted" data-value="components" value="<spring:theme code="category.components.name"/> " style="margin-left:0px;" data-toggle="tab" href="#addSericelist" aria-expanded="true">
                    <input type="hidden" value="components" name="addentry.itemCategory">
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12 col-sm-12" style="margin-top:20px;margin-bottom:15px;">
        <div class="tab-content">
            <div id="addSericelist" class="tab-pane active">
                <div class="row ls_nav">
                    <div class="table-responsive pick_car_list">
                        <div class="col-md-6 col-sm-6">
                            <input type="text" placeholder="<spring:theme code="searchbox.placeholder"/>" class="form-control topp_search2" name="addentry.searchText" id="product-searchText" style="padding-left:50px;">
                            <img src="${themeResourcePath}/images/search.png" alt="" class="ry_search2">
                        </div>
                        <div class=" yd_flex form-group  pull-right" style="flex-direction:row-reverse;margin-right:15px;">
                            <c:url var="searchUrl" value="/product"/>
                            <button class="btn btn-primary yd-search-product" data-request-url="${searchUrl}" type="button"><spring:theme code="search.button"/></button>
                        </div>
                        <table class="table components-table pick_carTable2 pick_carTable_even">
                            <thead>
                            <tr>
                                <th><spring:theme code="table.sequence" /></th>
                                <th><spring:theme code="entry.product.code" /></th>
                                <th><spring:theme code="entry.product.name" /></th>
                                <th><spring:theme code="entry.quantity" /></th>
                                <th><spring:theme code="entry.price" /></th>
                                <th><spring:theme code="entry.discount.rate" /></th>
                                <th><spring:theme code="entry.actual.price" /></th>
                                <th><spring:theme code="entry.row.chose" /></th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div class=" yd_flex form-group  pull-right" style="flex-direction:row-reverse;margin-right:15px;">
                        <button class="btn ry_sure yb-confirm" type="button" data-toggle="tab" href="#list_timeRecord" aria-expanded="false"><spring:theme code="search.confirm.button"/> </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

