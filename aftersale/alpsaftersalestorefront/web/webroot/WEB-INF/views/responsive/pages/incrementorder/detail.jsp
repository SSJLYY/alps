<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="vehicle" tagdir="/WEB-INF/tags/responsive/vehicle"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="serviceorder" tagdir="/WEB-INF/tags/responsive/serviceorder"%>
<%@ taglib prefix="detail" tagdir="/WEB-INF/tags/responsive/incrementorder/detail"%>
<%@ taglib prefix="incrementorder" tagdir="/WEB-INF/tags/responsive/incrementorder"%>

<template:defaultPage pageTitle="${pageTitle}">
	<div class="col-md-12 col-sm-12 parent-page-block">
		<div class="row">
			<div class="tabs-container">
				<div class="top-operation">
					<button class="btn pull-right btn_delivery" type="button"><spring:theme code="detail.base.tab.label.delivery" /></button>
					<button class="btn yd_submit pull-right tuihuo btn_refund" type="button"><spring:theme code="detail.base.tab.label.return" /></button>
				</div>
				<ul class="nav nav-tabs" id="chose-tab-box">
					<li class="active chose" data-box-id="base-tab-info">
						<a data-toggle="tab" href="#" style="font-size:14px;border-left:none;">
							<spring:theme code="detail.base.tab.name" /></a>
					</li>
					<li class="" data-box-id="related-tab-info">
						<a data-toggle="tab" href="#" style="font-size:14px;">
							<spring:theme code="detail.related.tab.name" /></a>
					</li>
				</ul>
				<div class="col-md-12 col-sm-12">
					<div class="tab-content" id="chose-tab-info-box">
						<div class="base-tab-info tab-pane active">
							<detail:baseinfo/>
						</div>
						<div class="related-tab-info tab-pane">
							<detail:related/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<incrementorder:choseMultipleProductBlock/>
</template:defaultPage>
