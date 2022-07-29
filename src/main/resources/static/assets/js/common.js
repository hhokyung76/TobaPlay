// var domain = "http://ec2-15-165-39-188.ap-northeast-2.compute.amazonaws.com:8888";
var listLimit = 20;
var moreFlag = false;
var authList = new Array();

// ajax호출
function comAjax(formId) {
    this.url = "";
    this.formId = isEmpty(formId) == true ? "commonForm" : formId;
    this.param = {};
    this.deleteParamArray = new Array();
    this.ajaxCallback = "";
    this.ajaxErrorCallback = "";
    this.accessToken = "";
    this.methodType = "GET";
	this.contentType = "application/json;charset=UTF-8";
	this.processData = true;
	this.async = false;

    if (this.formId == "commonForm") {
        var frm = $("#commonForm");
        if (frm.length > 0) {
            frm.remove();
        }
        var str = "<form id='commonForm' name='commonForm'></form>";
        $('body').append(str);
    }
    this.setUrl = function setUrl(url) {
        this.url = url;
    };
    this.setAccessToken = function setAccessToken(actk) {
        this.setAccessToken = actk;
    };
    this.setCallback = function setCallback(callBack) {
        this.ajaxCallback = callBack;
    };
    this.setErrorCallback = function setErrorCallback(errorCallBack) {
        this.ajaxErrorCallback = errorCallBack;
    };
    this.addParam = function addParam(key, value) {
        this.param[key] = value;
    };
    this.deleteParam = function deleteParam(key) {
        this.deleteParamArray.push(key);
    };
    this.addDateRangeParam = function addDateRangeParam(name) {
    	let rsv = removeSpaces($("[name='" + name + "']").val());
        this.param["startDate"] = rsv.substring(0,rsv.indexOf("~"));
        this.param["endDate"] = rsv.substring(rsv.indexOf("~")+1,rsv.length);
    };
    this.setMethodType = function setMethodType(type) {
        this.methodType = type;
    };
	this.setMultiPartData = function setMethodType() {
        this.processData = false;
		this.contentType = false;
    };
	this.setLoading = function setLoading() {
        this.async = true;
    };
	$('#' + this.formId).bind('submit', submitAction);

    this.ajax = function ajax() {
		if(this.async) $("#loader").show();

        if (this.formId != "commonForm") {
        	var tempParam = this.param
	        $("#" + this.formId).serialize().split("&").forEach(function(el){
	            tempParam[el.substring(0,el.indexOf("="))] = decodeURIComponent(el.substring(el.indexOf("=")+1,el.length).replace(/\+/gi," "));
	        });
	        this.param = tempParam;
        }

		// null 값 필드 삭제
		var nullDataArray = new Array();
        var dataParam = this.param;
		for(var i=0;i<Object.keys(dataParam).length;i++){ 
			//if(isEmpty(dataParam[Object.keys(dataParam)[i]])) delete dataParam[Object.keys(dataParam)[i]];
			if(isEmpty(dataParam[Object.keys(dataParam)[i]])) nullDataArray.push(Object.keys(dataParam)[i]);
		}
		nullDataArray.forEach(function(el,index){
			delete dataParam[el];
		});


        if(this.deleteParamArray.length > 0){
        	this.deleteParamArray.forEach(function(el,index){
        		delete dataParam[el];
        	});
        }
		if(this.methodType == "POST"){
			dataParam = JSON.stringify(dataParam);
		}
        var callBack = this.ajaxCallback;
        var errorCallBack = this.ajaxErrorCallback;
		
		if(this.contentType == false) dataParam = new FormData($("#" + this.formId)[0]);
		var checkUrl = this.url;
        $.ajax({
            url: domain + this.url,
            type: this.methodType,
            data: dataParam,
            contentType: this.contentType,
			processData: this.processData,
            async: this.async,
			cache : false,
            success: function (data, status , response) {
				if(data.status){
					if (typeof(callBack) == "function") {
						callBack(data,response);
					} else {
						eval(callBack + "(data,response);");
					}
				}else{
					if (typeof(errorCallBack) == "function") {
						errorCallBack(data);
					} else {
						eval(errorCallBack + "(data);");
					}
				}
            },
            error: function(data, status , response){
            	if (typeof(errorCallBack) == "function") {
                    errorCallBack(data);
                } else {
                    eval(errorCallBack + "(data);");
                }
            },
			complete : function(data) {
				if(this.async) $("#loader").hide();
				if(checkUrl != "/com/01/f04") commonProcess(data, checkUrl);
			}
        });
    };
}
// 중복로그인시 강제로그인
function forcedLogin(actk){
	// $.cookie('accessToken', actk);

	var callAjax = new comAjax();
	callAjax.setUrl("/com/01/f02");
	callAjax.setCallback(forcedLoginCallBack);
	callAjax.ajax();
}
function forcedLoginCallBack(data,response){
	// $.cookie('accessToken', response.getResponseHeader("accessToken"), { expires: 365 });
	// $.cookie('compNm', data.result.compNm, { expires: 365 });
	// $.cookie('deptNm', data.result.deptNm, { expires: 365 });
	// $.cookie('id', data.result.id, { expires: 365 });
	// $.cookie('name', data.result.name, { expires: 365 });
	// $.cookie('authCd', data.result.authCd, { expires: 365 });

	sessionStorage.setItem("noticeIdCheck", null);

	location.href="/front/wan/wan-00";
}
//ajax이 끝나고 실행되는 commonProcess
// /com/05/f01 : 알림 정보 호출에 한해서는 오류를 무시한다.
function commonProcess(data, checkUrl){
	if(data.status == 0){

		if (checkUrl !== "/com/05/f01" && checkUrl !== "/com/01/f06") {
			var errorForm = '<form id="errorForm" name="errorForm" action="/error"></form>';
			$('body').append(errorForm);
			$("#errorForm").submit();
			return false;
		}
	}
	if(location.pathname == "/" && data.responseJSON.status == false){
		if(data.responseJSON.errorNo == 102){
			if(confirm("해당 계정이 다른 기기(또는 브라우저)에서 로그인 되어 있습니다.기존 로그인을 종료하고 재접속 하시겠습니까?")){
				forcedLogin(data.getResponseHeader("accessToken"));
			}
		}else if(data.responseJSON.errorNo == 106 || data.responseJSON.errorNo == 107){
			ui.popup.toast(data.responseJSON.message);
			return false;
		}else if(data.responseJSON.errorNo == 108){
			$.cookie('accessToken', data.getResponseHeader("accessToken"), { expires: 365 ,path: '/' });
			location.href = "/pwSet";
			return false;
		}else{
			var errMsg = "서비스 상태가 원활하지 않습니다. 잠시 후 다시 시도해 주세요";
			if(!isEmpty(data.responseJSON.message)) errMsg = data.responseJSON.message;
			ui.popup.toast(errMsg);
			return false;
		}
	}else{
		var errMsg = "서비스 상태가 원활하지 않습니다. 잠시 후 다시 시도해 주세요";
		if(!isEmpty(data.responseJSON.message)) errMsg = data.responseJSON.message;

		if(data.responseJSON.status == false){
			var pageMoveErrorNo = [101,102,103,105,401];
			var toastErrorNo = [100,106,107,104,500,600,700,800,900,999];
			pageMoveErrorNo.forEach(function(el,index){
				if(el == data.responseJSON.errorNo){
					var errorForm = '<form id="errorForm" name="errorForm" action="/error" method="post"><input type="hidden" id="errorNo" name="errorNo" value="' + data.responseJSON.errorNo + '"/><input type="hidden" id="errorMsg" name="errorMsg" value="' + errMsg + '"/></form>';
					$('body').append(errorForm);		
					$("#errorForm").submit();
					return false;
				}
			});
			toastErrorNo.forEach(function(el,index){
				if(el == data.responseJSON.errorNo){
					ui.popup.toast(errMsg);
					return false;
				}
			});
		}
	}

}
//로그아웃
function logout(){
	var callAjax = new comAjax();	 
	callAjax.setUrl("/com/01/f03");	
	callAjax.setCallback(logoutCallBack);	
	callAjax.ajax();
}
function logoutCallBack(data){
	$.removeCookie('accessToken', { path: '/' });
	location.href="/";
}

// 빈값 체크
// !value 하면 생기는 논리적 오류를 제거하기 위해
// 명시적으로 value == 사용 
// [], {} 도 빈값으로 처리
var isEmpty = function (value) {
    if (value == "" || value == null || value == undefined || (value != null && typeof value == "object" && !Object.keys(value).length)) {
        return true
    } else {
        return false
    }
};
var submitAction = function(e) {
	e.preventDefault();
    e.stopPropagation();
};
// 시작일,종료일 사이값 배열로 리턴
function getDateRangeData(param1, param2){  //param1은 시작일, param2는 종료일이다.
	var res_day = [];
 	var ss_day = new Date(param1);
   	var ee_day = new Date(param2);    	
  		while(ss_day.getTime() <= ee_day.getTime()){
  			var _mon_ = (ss_day.getMonth()+1);
  			_mon_ = _mon_ < 10 ? '0'+_mon_ : _mon_;
  			var _day_ = ss_day.getDate();
  			_day_ = _day_ < 10 ? '0'+_day_ : _day_;
   			res_day.push(ss_day.getFullYear() + '-' + _mon_ + '-' +  _day_);
   			ss_day.setDate(ss_day.getDate() + 1);
   	}
   	return res_day;
}

// if(location.pathname != "/" && isEmpty($.cookie('accessToken'))){
// 	location.href="/";
// }
$(document).ready(function(){
	$("input").keyup(function(){
		if($(this).parent().hasClass("error")) $(this).parent().removeClass("error");
	});
	$(".btnMore").click(function(){
		var nPage = ($("#page").val()*1) + 1;
		$("#page").val(nPage);
		moreFlag = true;
		searchTable();
	});
	//maid
	if($("#maId").length > 0){
		var commonAjax = new comAjax();
		commonAjax.setUrl("/" + currentMod + "/01/f01");		 
		commonAjax.setCallback(maidCallBack);	
		commonAjax.ajax();
	}
	//전환목표
	if($("#conversionGoal").length > 0){
		setGoal();
	}
	setUserInfo();

	//작업알람
	if(!isEmpty($.cookie("accessToken")) && location.href.indexOf("front") != -1){
		if(location.pathname != "/"){
			var alarmProcess = new alarm();
			alarmProcess.alarmAjax();
			setInterval(function(){
					alarmProcess.alarmAjax();
			},60000);
		}
	}

	// 셋인터벌 제거
	// if(!isEmpty($.cookie("accessToken"))){
	// 	var alarmProcess = new alarm();
	// 	alarmProcess.alarmAjax();
	// }

	//setFrm
	setFrm("searchFrm");

	//stockMode
	if(location.pathname.split("/")[2] == "wan" || location.pathname.split("/")[2] == "aan"){
		$(".btnModeW button").on("click",function(){
			if(!$(this).hasClass("noSt")){
				if($(this).hasClass("active")) ui.stockMode.close('#stock_audience');
				else ui.stockMode.open('#stock_audience', this);
			}
		});
	}

	//autocomplete Off
	autocompleteOff("dateRangePicker");

	//maidAuthCheck
	maidAuthCheck();
});
//권한체크
function maidAuthCheck(){
	if(location.pathname.split("/")[2] == "wan" || location.pathname.split("/")[2] == "aan"){
		var maidAuth = false;
		if(authList.length > 0){
			authList.forEach(function(el,index){
				if(el == $("#maId").val()){
					maidAuth = true;
					return false;
				}
			});
		}
		if(maidAuth == false){
			var authClass = ['authBtn'];
			authClass.forEach(function(el,index){
				$("." + el).each(function(){
					$(this).attr("disabled",true);
				});
			});
		}
	}
}
//자동완성기능 제거
function autocompleteOff(id){
	$("#" + id).each(function(){
		$(this).attr("autocomplete","off");	
	});
}
//기본form셋팅
function setFrm(frmId){
	if($("#" + frmId).length > 0){
		$("#" + frmId).serialize().split("&").forEach(function(el){
			location.search.substring(1).split("&").forEach(function(el2){
				if(el.substring(0,el.indexOf("=")) == el2.substring(0,el2.indexOf("="))){
					var inputType = $('[name="' + el.substring(0,el.indexOf("=")) + '"]').prop('type');
					var inputName = el.substring(0,el.indexOf("="));
					var inputValue = decodeURIComponent(el2.substring(el2.indexOf("=")+1,el2.length).replace(/\+/gi," "));
					if(inputType == 'text' || inputType == 'select-one' ) $('[name="' + inputName + '"]').val(inputValue);
					else if(inputType == 'radio'){
						$('input:radio[name="' + inputName + '"]:radio[value="' + inputValue + '"]').attr('checked',true);
					}else if(inputType == 'checkbox'){
						$('input:checkbox[name="' + inputName + '"]:checkbox[value="' + inputValue + '"]').attr('checked',true);
					}
				}
			});
		});
	}
}
//작업알람
function alarm(){
	this.alarmAjax = function alarmAjax(){
		var callAjax = new comAjax();
		callAjax.setUrl("/com/05/f01");
		callAjax.setCallback(this.alarmCallBack);
		callAjax.ajax();
	};
	this.alarmCallBack = function alarmCallBack(data){
		if(!isEmpty(data.result.msgList) && data.result.msgList.length > 0){
			ui.popup.alarm(data.result.msgList);
		}
		if(data.result.alarmDspYn == 1) $(".btnAlarm").addClass("on");
		else $(".btnAlarm").removeClass("on");
	};
}
//gnb userinfo
function setUserInfo(){
	$("#loginCompNm").text($.cookie("compNm"));
	$("#loginDeptNm").text($.cookie("deptNm"));
	$("#loginName").text($.cookie("name"));
	$("#loginId").text($.cookie("id"));
	if($.cookie("authCd") == "300"){
		$("#authMenu").append('<li><a href="/front/acm/01/acm-01-02">나의문의</a></li><li><a href="/front/acm/03/acm-03-01">기업관리</a></li>');
	}else if($.cookie("authCd") == "400"){
		$("#authMenu").append('<li><a href="/front/acm/01/acm-01-02">나의문의</a></li><li><a href="/front/acm/04/acm-04-01">부서관리</a></li>');
		$("#loginDeptNm").text($.cookie("deptNm")+"(관리자)");
	}else{
		$("#authMenu").append('<li><a href="/front/acm/01/acm-01-02">나의문의</a></li>');
	}
}
//차트
function commonChart(){
	this.stChartName = "";
	this.edChartName = "";
	let chartName = "";
	let dataCode = "";
	this.opts = "";
	this.setOpts = function setOpts(ya,categoryArray,data,xa) {
		let yaArray = new Array();
		if(!isEmpty(ya)){
			ya.forEach(function(el,idx){
				if((idx+1)%2){
					yaArray.push({min:0,title:{text:el},allowDecimals: false});
				}else{
					yaArray.push({min:0,title:{text:el},opposite: true,allowDecimals: false});
				}
				
			});
		}
		let dataArray = new Array();
		data.forEach(function(el){
			dataArray.push(el);
		});		
		
		
		this.opts = {
			chart: {
				zoomType: 'x',
				resetZoomButton: {
					theme: {
						display: 'none'
					}
				},
				events: {
					load: function() {
						let xAxis = this.xAxis[0],
						chartContainer = document.getElementsByClassName("chartW")[0].firstElementChild,
		                isMouseDown = false,
		                isMouseMove = false,
		                startCategory,
		                endCategory;
		                
		                chartContainer.onmousedown = function(e) {
		                    /*let length =  e.path.length;
		                    let tag = e.target.toString();
		                    if ( tag.includes('SVGPathElement') === true && length < 17 ){
		                        isMouseDown = true;
		                        startCategory = Math.round(xAxis.toValue(e.chartX))
		                    }*/
		                    let tag = e.target.toString();
		                    if ( tag.indexOf('SVGPathElement') != -1){
		                        isMouseDown = true;
		                        startCategory = Math.round(xAxis.toValue(e.chartX))
		                    }
		                    
		                    this.stChartName = chartName;
		                };
		                chartContainer.onmousemove = function(e) {
							if (isMouseDown) {
								isMouseMove = true;
								endCategory = Math.round(xAxis.toValue(e.chartX));
								this.edChartName = chartName;
							}
						};
						chartContainer.onmouseup = function(e) {
							 if (isMouseMove) {
							 let stDay,edDay;
		                        isMouseMove = false;
		                        if (endCategory > startCategory) {
		                           stDay = xAxis.categories[startCategory];
		                           edDay = xAxis.categories[endCategory];
		                        }else {
		                            stDay = xAxis.categories[endCategory];
		                            edDay = xAxis.categories[startCategory];
		                        }
		                        if (isMouseDown) {
		                 	       isMouseDown = false;
		                        }
		                        if(this.stChartName == this.edChartName){
		                        	if($(".btnModeW button").hasClass("active")){
		                        		var cmaMode = new commonAudienceMode();
		                        		cmaMode.setData(stDay,edDay,chartName[0],dataCode);
		                        	}
		                        }
		                    }
						}
					},
					selection: function (e) {
		                return false;
		            }
				}
			},
			plotOptions:{
				series: {
					events: {
		              click: function(e) {
		              	if($(".btnModeW button").hasClass("active")){
		              		if($(".chartW div").hasClass("lineChart")){
		              			var cmaMode = new commonAudienceMode();
			              		cmaMode.setData(this.xAxis.categories[Math.round(this.xAxis.toValue(e.chartX))],this.xAxis.categories[Math.round(this.xAxis.toValue(e.chartX))],this.name[0],this.userOptions.id[Math.round(this.xAxis.toValue(e.chartX))]);
		              		}else if($(".chartW div").hasClass("columnChart")){
		              			var cmaMode = new commonAudienceMode();
			              		cmaMode.setData($("#chartStDay").val(),$("#chartEdDay").val(),this.name[0],this.userOptions.id[Math.round(this.xAxis.toValue(e.chartX))]);
		              		}
		              		
		              	}
		            },
		            mouseOver: function(e) {
						if($(".btnModeW button").hasClass("active")){
							dataCode = this.userOptions.id[0];
							chartName = e.target.name;
						}
		           }
		          }
				}
			},
			yAxis: yaArray,
			xAxis: xa,
			categories: categoryArray,
			series: dataArray
		}
	};
	this.setPieOpts = function setPieOpts(name,dataArray) {
		this.opts = {
			plotOptions:{
				series: {
					events: {
		              click: function(e) {
		              	if($(".btnModeW button").hasClass("active")){
		              		if($(".chartW div").hasClass("pieChart")){
		              			var cmaMode = new commonAudienceMode();
			              		cmaMode.setData($("#chartStDay").val(),$("#chartEdDay").val(),e.point.name,e.point.name);
		              		}
		              	}
		            }
		          }
				}
			},
			name: name,
			data: dataArray
		}
	};
	this.setDonutOpts = function setDonutOpts(title,dataArray) {
		this.opts = {
			title: title,
			data: dataArray
		}
	};
	this.setBarOpts = function setBarOpts(categoryArray,dataArray) {
		this.opts = {
			categories: categoryArray,
			series: dataArray
		}
	};
	this.setLineOpts = function setLineOpts(tooltip,yAxis,categories,series) {
		this.opts = {
			chart: {
				zoomType: 'x',
				resetZoomButton: {
					theme: {
						display: 'none'
					}
				},
				events: {
					load: function() {
						let xAxis = this.xAxis[0],
						chartContainer = document.getElementsByClassName("lineChartW")[0].firstElementChild,
		                isMouseDown = false,
		                isMouseMove = false,
		                startCategory,
		                endCategory;
		                
		                chartContainer.onmousedown = function(e) {
		                    /*let length =  e.path.length;
		                    let tag = e.target.toString();
		                    if ( tag.includes('SVGPathElement') === true && length < 17 ){
		                        isMouseDown = true;
		                        startCategory = Math.round(xAxis.toValue(e.chartX))
		                    }*/
		                    let tag = e.target.toString();
		                    if ( tag.indexOf('SVGPathElement') != -1){
		                        isMouseDown = true;
		                        startCategory = Math.round(xAxis.toValue(e.chartX))
		                    }
		                    
		                    this.stChartName = chartName;
		                };
		                chartContainer.onmousemove = function(e) {
							if (isMouseDown) {
								isMouseMove = true;
								endCategory = Math.round(xAxis.toValue(e.chartX));
								this.edChartName = chartName;
							}
						};
						chartContainer.onmouseup = function(e) {
							 if (isMouseMove) {
							 let stDay,edDay;
		                        isMouseMove = false;
		                        if (endCategory > startCategory) {
		                           stDay = xAxis.categories[startCategory];
		                           edDay = xAxis.categories[endCategory];
		                        }else {
		                            stDay = xAxis.categories[endCategory];
		                            edDay = xAxis.categories[startCategory];
		                        }
		                        if (isMouseDown) {
		                 	       isMouseDown = false;
		                        }
		                        if(this.stChartName == this.edChartName){
		                        	if($(".btnModeW button").hasClass("active")){
										callSetStockMode(stDay,edDay,chartName);
		                        	}
		                        }
		                    }
						}
					},
					selection: function (e) {
		                return false;
		            }
				}
			},
			plotOptions:{
				series: {
					events: {
		              click: function(e) {
		              	if($(".btnModeW button").hasClass("active")){
		              		if($(".chartW div").hasClass("lineChart")){
								callSetStockMode(this.xAxis.categories[Math.round(this.xAxis.toValue(e.chartX))],this.xAxis.categories[Math.round(this.xAxis.toValue(e.chartX))],this.name,this.yData[Math.round(this.xAxis.toValue(e.chartX))]);
		              		}
		              	}
		            },
		            mouseOver: function(e) {
						if($(".btnModeW button").hasClass("active")){
							chartName = e.target.name;
						}
		           }
		          }
				}
			},
			tooltip: tooltip,
			yAxis: yAxis,
			categories: categories,
			series: series,
		}
	};
	this.setStackOpts = function setLineOpts(categories,series) {
		this.opts = {
			events: {
				click: function(e) {
					if($(".btnModeW button").hasClass("active")){
						var cmaMode = new commonAudienceMode();
						cmaMode.setData($("#chartStDay").val(),$("#chartEdDay").val(),e.point.category + "/" + e.point.name,e.point.name + "::" + e.point.category.toLowerCase());
					  }
				}
			},
			categories: categories,
			series: series
		}
	};
	this.setColumnOpts = function setColumnOpts(xAxis,legend,tooltip,series) {
		this.opts = {
			xAxis: xAxis,
			legend: legend,
			tooltip: tooltip,
			series: series
		}
	};
	this.drawChart = function drawChart(kind,id) {
		if(kind !== "pie") {
			// pie chart일 경우 data가 없을 경우 해당 로직으로 인해 data field가 삭제되면서 문제가 되어 해당 코드 추가
			for (var i = 0; i < Object.keys(this.opts).length; i++) { // null 값 필드 삭제
				if (isEmpty(this.opts[Object.keys(this.opts)[i]])) delete this.opts[Object.keys(this.opts)[i]];
			}
		}
		if(kind == "line"){
			if(isEmpty(id)) {
				ui.lineChart('#lineChart', this.opts);
			}
			else {
				ui.lineChart('#' + id, this.opts);
			}
		}else if(kind == "column"){
			if(isEmpty(id)){
				ui.columnChart('#columnChart', this.opts);
			}else{
				ui.columnChart('#' + id, this.opts);
			}
		}else if(kind == "pie"){
			if(isEmpty(id)){
				ui.pieChart('#pieChart', this.opts);
			}else{
				ui.pieChart('#' + id, this.opts);
			}
		}else if(kind == "donut"){
			ui.donutChart('#' + id, this.opts);
		}else if(kind == "bar"){
			ui.barChart('#' + id, this.opts);
		}else if(kind == "stack"){
			ui.stackChart('#' + id, this.opts);
		}
	};
}
//공통테이블
function commonTable(){
	var tableHtml = $('<table class="tbl tablesorter">').append("<thead>").append("<tbody>");
	var moreHtml = "";
	this.setData = function setData(column,data,type,link, linkUrl) {
		var appendColumnHtml = '';
		var appendDataHtml = '';
		column.forEach(function(el,index){
			if(type[index] == "date") appendColumnHtml += '<th scope="col"><span class="date"><button type="button" class="btnSort">' + el + '</button></span></th>';
			else if(type[index] == "num") appendColumnHtml += '<th scope="col" class="num"><button type="button" class="btnSort">' + el + '</button></th>';
			else if(type[index] == "txtL") appendColumnHtml += '<th scope="col"><button type="button" class="btnSort">' + el + '</button></th>';
			else if(type[index] == "txtLOL") appendColumnHtml += '<th scope="col"><button type="button" class="btnSort">' + el + '</button></th>';
			else if(type[index] == "percent") appendColumnHtml += '<th scope="col" class="percent"><button type="button" class="btnSort">' + el + '</button></th>';
			else appendColumnHtml += '<th scope="col"><button type="button" class="btnSort">' + el + '</button></th>';
		});
		tableHtml.find("thead").append("<tr>" + appendColumnHtml + "</tr>");
		
		data.forEach(function(el,index){
			var appendTrHtml = '';
			el.forEach(function(el2,index2){
				var linkData = "#none";
				if(link != undefined) {
					linkData = link[index];
					// linkData = linkData.substring(0,linkData.indexOf("=")+1) + encodeURIComponent(linkData.substring(linkData.indexOf("=")+1));

					// detail page로 넘어갈 때 추가 값이 함께 넘어가야 할 수 있기 때문에 uri parameter encoding 방식 변경했습니다.
					// modify : sspark
					var uri = linkData.substring(linkData.indexOf("?") + 1);
					var param = uri.split('&');
					var linkData = linkData.substring(0, linkData.indexOf("?") + 1);
					param.forEach(function (item, index) {
						linkData += item.substring(0, item.indexOf("=") + 1);
						linkData += encodeURIComponent(item.substring(item.indexOf("=") + 1));
						if (index < param.length - 1) {
							linkData += "&";
						}
					});
					//linkData에 검색조건 전달
					if($("#searchFrm").length > 0){
						$("#searchFrm").serialize().split("&").forEach(function(el){
							linkData += '&';
							linkData += el.substring(0,el.indexOf("="));
							linkData += decodeURIComponent(el.substring(el.indexOf("="),el.length).replace(/\+/gi," "));
						});
					}
				}
				if(!isEmpty(getParameterByName("siteId"))) linkData = linkData + "&siteId=" + getParameterByName("siteId"); 
				if(type[index2] == "date") appendTrHtml += '<td><span class="date">' + el2 + '</span></td>';
				else if(type[index2] == "num") appendTrHtml += '<td class="num">' + el2 + '</td>';
				else if(type[index2] == "txtLOL") {
					if(linkData.indexOf("#none") != -1){
						appendTrHtml += '<td class="txtL">' + el2 + '</td>';
					}else{
						if(linkUrl != undefined && linkUrl != ''){
							appendTrHtml += '<td class="txtL"><ul style="display: -webkit-box;width:100%;">';
							appendTrHtml += '<li style="width:80%;"><a href="' + linkData + '" title="' + el2 + '">' + el2 + '</a></li>';
							var convertLink = '';
							if(!el2.startsWith('/')){
								convertLink = linkUrl +"/"+ el2;
							}else{
								convertLink = linkUrl + el2;
							}
							appendTrHtml += '<li style="width:20%;text-align: -webkit-center;"><a class="btnFnReport" type="button" title="' + convertLink + '" onclick="javascript:window.open(\'' + convertLink + '\' ,\'_blank\');"></a></li>' ;
							appendTrHtml += '</ul></td>';
						}else {
							appendTrHtml += '<td class="txtL"><a href="' + linkData + '" title="' + el2 + '">' + el2 + '</a></td>';
						}

					}
				}
				else if(type[index2] == "txtL") {
					if(linkData.indexOf("#none") != -1){
						appendTrHtml += '<td class="txtL">' + el2 + '</td>';
					}else{
						appendTrHtml += '<td class="txtL"><a href="' + linkData + '" title="' + el2 + '">' + el2 + '</a></td>';
					}
				}
				else if(type[index2] == "percent") appendTrHtml += '<td class="percent">' + el2 + '</td>';
				else if(type[index2] == "txtR") appendTrHtml += '<td class="txtR">' + el2 + '</td>';
				else appendTrHtml += '<td>' + el2 + '</td>';
			});
			appendDataHtml += '<tr>' + appendTrHtml  + '</tr>';
		});
		if(isEmpty(appendDataHtml)){
			if(!moreFlag) appendDataHtml = '<tr><td colspan="' + column.length + '" class="noData">검색된 결과가 없습니다.</td></tr>';
		}
		
		tableHtml.find("tbody").append(appendDataHtml);
	};
	
	this.drawTable = function drawTable() {
		if(moreFlag) {
			$(".tblListW tbody").append(tableHtml.find("tbody").html());
			$(".tablesorter").trigger("update");
			moreFlag = false;
		}else{
			$(".tblListW").html("");
			$(".tblListW").append(tableHtml);
			$(".tablesorter").tablesorter();
		}
		$('.btnSort').off('click').on('click', function() {
			$(this).closest("div,th").click();
			$(this).toggleClass('up');
		});
		$('.btnSort').closest("div,th").off('click').on('click', function() {
			$(this).find(".btnSort").toggleClass('up');
		});
	};
}
//오디언스모드 모수조회
function commonAudienceMode(){
	var startDay = "";
	var endDay = "";
	var chartName = "";
	var dataCode = "";
	this.setData = function setDate(stDay,edDay,clickChartName,clickDataCode){
		var flag = true;
		var rejecChartName = ['세션','실행수','전환수','이벤트','클릭'];
		rejecChartName.forEach(function(el){
			if(clickChartName == el){
				flag = false;
				return false;
			} 
		});
		if(!flag) return false;
		
		var apiUrl = "/" + replaceAll(location.pathname.split("/")[4].substring(0,9),"-","/") + "/01/f02";
		startDay = stDay;
		endDay = edDay;
		chartName = clickChartName;
		dataCode = clickDataCode;
		var callAjax = new comAjax();	 
		callAjax.setUrl(apiUrl);	
		callAjax.setCallback(this.audienceSetDataCallBack);	
		callAjax.addParam("maid",$("#maId").val());
		callAjax.addParam("startDate",stDay);
		callAjax.addParam("endDate",edDay);
		if($("[name='isNewUser']").length > 0){
			callAjax.addParam("isNewUser",$("[name='isNewUser']").val());
		}
		if( $('[name=searchPageType]').length > 0 ){
			callAjax.addParam("searchPageType",$('[name=searchPageType]').val());
		}
		if(isEmpty(getParameterByName("dataParam"))) callAjax.addParam("isDetail","0");
		else callAjax.addParam("isDetail","2");
		callAjax.addParam("termValue",clickDataCode);
		if(!isEmpty(getParameterByName("dataValue"))) callAjax.addParam("detailValue",getParameterByName("dataValue"));
		callAjax.ajax(); 
	};
	this.audienceSetDataCallBack = function audienceSetDataCallBack(data) {
		var flag = true;
		$(".stockList").find("li").each(function(i){
			if($(this).find(".itemName").text() == chartName){
				if($(this).find(".date").text() == (startDay + " ~ " + endDay)){
					flag = false;
					return false;
				}
			}
		});
		if(flag){
			if(data.result.parameter == 0) {
				ui.popup.toast("모수가 0건인 항목은 선택할 수 없습니다");
				return false;
			}
			var stockListLi = $('<li>').append('<div class="item">').append('<p class="date">');
			stockListLi.find(".item").append('<p class="itemName">').append('<p class="cnt">').append('<button type="button" class="btnDel" onclick="removeLi(this);">');
			stockListLi.find(".itemName").text(chartName);
			stockListLi.find(".cnt").text(numberWithCommas(data.result.parameter));
			stockListLi.find(".date").text(startDay + " ~ " + endDay);
			if(isEmpty(dataCode)) stockListLi.append('<input type="hidden" class="dataCode" value=""/>');
			else stockListLi.append('<input type="hidden" class="dataCode" value="' + dataCode + '"/>');
			if($(".stockList").find("li").length < 10) $(".stockList").append(stockListLi);
			countLi();
		}
	}
}
//오디언스모드 liCheck
function countLi(){
	var liCnt = $(".stockList").find("li").length;
	if(liCnt == 0){
		$(".btnModeW button").find("span").remove();
		$(".stockAreaW").find(".empty").show();
	}else{
		$(".btnModeW button").append('<span class="badge">' + $(".stockList").find("li").length + '</span>');
		$(".stockAreaW").find(".empty").hide();
	}
	if(liCnt == 0) {
		$(".btnEach").parent().attr("tooltip","1개 이상의 항목을 선택해 주세요");
		$(".btnEach").prop("disabled",true);
		$(".btnMerge").parent().attr("tooltip","1개 이상의 항목을 선택해 주세요");
		$(".btnMerge").prop("disabled",true);
	} else if(liCnt == 1 || liCnt == 2 || liCnt == 3) {
		$(".btnEach").parent().removeAttr("tooltip");
		$(".btnEach").prop("disabled",false);
		$(".btnMerge").parent().removeAttr("tooltip");
		$(".btnMerge").prop("disabled",false);
	} else{
		$(".btnEach").parent().removeAttr("tooltip");
		$(".btnEach").prop("disabled",false);
		$(".btnMerge").parent().attr("tooltip","최대 3개까지 병합하여 전송할 수 있습니다");
		$(".btnMerge").prop("disabled",true);
	}
}
function removeLi(obj){
	$(obj).closest("li").remove();
	countLi();
}
function allSetAudRemove(){
	$(".stockList").html("");
	countLi();
}
//오디언스모드 생성 팝업
function audCreatePop(popId){
	$("#" + popId + " ul").html("");
	$(".stockList").find("li").each(function(i){
		var popli = $("<li>").append("<dl>");
		popli.find("dl").append("<dt>").append('<dd class="num">').append('<dd class="btn">');
		popli.find("dl dt").append('<span class="txt">').append('<span class="date">');
		popli.find(".btn").append('<button type="button" class="btnFnDel" onclick="removeLi(this);">삭제</button>');
		popli.find(".btn").append('<input type="hidden" class="dataCode" value="' + $(this).find(".dataCode").val() + '" />');
		
		popli.find(".txt").text($(this).find(".itemName").text());
		popli.find(".date").text($(this).find(".date").text());
		popli.find(".num").text($(this).find(".cnt").text());
		$("#" + popId + " ul").append(popli);
	});

	//오디언스 제목 입력시 글자수 계산
	$('#aud').keyup(function() {
		if($(this).val().length > 150){
			$(this).val($(this).val().substr(0, 150));
		}
		let length = $(this).val().length;
		$("#audienceNameLength").text('(' + length + '/150)');
	});

	//오디언스 설명 입력시 글자수 계산
	$('#audTxt').keyup(function() {
		if($(this).val().length > 200){
			$(this).val($(this).val().substr(0, 200));
		}
		let length = $(this).val().length;
		$("#audienceDescLength").text('(' + length + '/200)');
	});

	ui.popup.open('#' + popId);
}
//오디언스 생성
function createAud(flag){
	var apiUrl = "/" + replaceAll(location.pathname.split("/")[4].substring(0,9),"-","/") + "/01/f03";
	var popName = "";
	if(flag) {
		popName = "audMergeCreatePop";
		if($("#aud").val() == ""){
			ui.popup.toast("필수 항목이 입력되지 않았습니다.");
			$("#aud").parent().addClass("error");
			$("#aud").next().text("필수 항목입니다");
			return false;
		}
		if($("#audTxt").val() == ""){
			ui.popup.toast("필수 항목이 입력되지 않았습니다.");
			$("#audTxt").parent().addClass("error");
			$("#audTxt").next().text("필수 항목입니다");
			return false;
		}
	}
	else popName = "audCreatePop";
	
	var segments = new Array();
	$("#" + popName).find("li").each(function(i){
		var pushStDate = removeSpaces($(this).find(".date").text()).substring(0,removeSpaces($(this).find(".date").text()).indexOf("~"));
		var pushEdDate = removeSpaces($(this).find(".date").text()).substring(removeSpaces($(this).find(".date").text()).indexOf("~")+1,removeSpaces($(this).find(".date").text()).length);
		var pushData = {};
		pushData["name"] = '[' + $("#maId option:checked").text() + '_' + $(".menuList .current").text() + '] ' + $(this).find(".txt").text() + "_" + pushStDate + "_" + pushEdDate;
		pushData["description"] = $(this).find(".date").text();
		if(!isEmpty($(this).find(".dataCode").val())) pushData["termValue"] = $(this).find(".dataCode").val();
		pushData["startDate"] = pushStDate;
		pushData["endDate"] = pushEdDate;
		segments.push(pushData);
	});

	var rsv = removeSpaces($("[name='searchDay']").val());
	var stRsv = rsv.substring(0,rsv.indexOf("~"));
	var edRsv = rsv.substring(rsv.indexOf("~")+1,rsv.length); 
	
	var callAjax = new comAjax();
	callAjax.setUrl(apiUrl);	
	callAjax.setCallback(audCreateCallBack);
	callAjax.addParam("maid",$("#maId").val());
	callAjax.addParam("startDate",stRsv);
	callAjax.addParam("endDate",edRsv);
	if($("[name='isNewUser']").length > 0){
		callAjax.addParam("isNewUser",$("[name='isNewUser']").val());
	}
	if(isEmpty(getParameterByName("dataParam"))) callAjax.addParam("isDetail","0");
	else callAjax.addParam("isDetail","2");
	callAjax.addParam("adidType",7);
	callAjax.addParam("mergeFlag",flag+"");
	 if(flag){
		callAjax.addParam("mergeAudienceName",$("#aud").val());
		callAjax.addParam("mergeAudienceDescription",$("#audTxt").val());
	}
	callAjax.addParam("segments",segments);
	if(!isEmpty(getParameterByName("dataValue"))) callAjax.addParam("detailValue",getParameterByName("dataValue"));
	callAjax.setMethodType("POST");
	callAjax.ajax();
}
function audCreateCallBack(data){
	ui.popup.toast(data.message);
	allSetAudRemove();
	$(".popClose").click();
}
// 문자열 공백제거
function removeSpaces(str){ 
	return str.replace(/\s/gi, "");	
}
//getParameter
function getParameterByName(name) {
  name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
  var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
  results = regex.exec(location.search);
  return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
//더보기
function btnMore(paging){
	if(paging.result.length == 0) $(".btnMore").hide();
	else $(".btnMore").show();
}
//maid
function maidCallBack(data){
	data.result.forEach(function(el,index){
		var currentSelect = "";
		if(!isEmpty(getParameterByName("siteId")) && getParameterByName("siteId") == el.maid) {
			currentSelect = " selected";
		}else{
			if(!isEmpty($.cookie(currentMod + "Maid")) && el.maid == $.cookie(currentMod + "Maid")){
				currentSelect = " selected";
			}	
		}
		var optionData = "";
		if(currentMod == "wan"){
			optionData = '<option value="' + el.maid + '"' + currentSelect + '>' + el.websiteName + '</option>';
			if(currentSelect == " selected"){
				$("#websiteLinkUrl").val(el.websiteLinkUrl);
			}
		}
		else optionData = '<option value="' + el.maid + '"' + currentSelect + '>' + el.appName + '</option>';
		$("#maId").append(optionData);
		if(el.authStatus){
			authList.push(el.maid);			
		}

	});
}
//maid변경
function maidChange(v){
	$.removeCookie(currentMod + 'Maid');
	//$.cookie(currentMod + 'Maid',v,  { expires: 365 ,path: '/'});

	var siteMoveFrm = $('<form id="siteMove">');
	siteMoveFrm.prop("action",location.pathname);
	location.search.split("&").forEach(function(e,i){
	    var addInput = "";
	    if(i == 0) addInput = '<input type="hidden" id="' + e.substring(1,e.indexOf("=")) + '" name="' + e.substring(1,e.indexOf("=")) + '" value="' + decodeURIComponent(e.substring(e.indexOf("=")+1)) + '" />';
	    else addInput = '<input type="hidden" id="' + e.substring(0,e.indexOf("=")) + '" name="' + e.substring(0,e.indexOf("=")) + '" value="' + decodeURIComponent(e.substring(e.indexOf("=")+1)) + '" />';
	    siteMoveFrm.append(addInput);
	});
	
	siteMoveFrm.find("#siteId").remove();
	siteMoveFrm.append($('<input type="hidden" id="siteId" name="siteId" value="' + v + '">'));
	$("body").append(siteMoveFrm);
	$("#siteMove").submit();
}

/*
validationCheckUtil
param:formId
체크해야 하는 item 에 해당클래스를 준다.
1.필수 : required
2.숫자만 : onlyNum
3.중복값불가능 : doubleCheck
4.이메일체크 : emailCheck
5.캠페인타이틀 : camTitle
*/
function commonValidation(formId){
	var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var flag = true;
	
	$("#" + formId).find(".required").each(function(i){
		if(isEmpty($(this).val())){
			ui.popup.toast("필수 항목이 입력되지 않았습니다.");
			flag = false;
			$(this).focus();
			return false;
		}
	});


	//title validation
	var titleRegExp = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\-_ ]*$/;
	$("#" + formId).find(".camsTitleCheck").each(function(i){
		if($(this).val() != "" && $(this).val().match(titleRegExp) == null) {
			ui.popup.toast("이름에 특수문자가 포함되어 있습니다.");
			flag = false;
			$(this).focus();
			return;
		}
	});

	$("#" + formId).find(".onlyNum").each(function(i){
		if($(this).val() != ""){
			if($.isNumeric($(this).val()) == false){
				ui.popup.toast("숫자만 입력하실 수 있습니다.");
				flag = false;
				$(this).focus();
				return false;
			}
		}
	});
	
	var nameArray = new Array();
	$("#" + formId).find(".doubleCheck").each(function(i){
		var compareName = $(this).prop("name");
		var flag = true;
		nameArray.forEach(function(el,index){
			if(el == compareName) {
				flag = false;
				return false;
			} 
		});
		if(flag) nameArray.push($(this).prop("name"));
	});
	
	nameArray.forEach(function(el,index){
		$("[name='" + el + "']").each(function(i){
			var checkValue = $(this).val();
			$("[name='" + el + "']").each(function(j){
				if(i != j){
					if(checkValue == $(this).val()){
						ui.popup.toast("동일한 내용으로 입력된 항목이 있어 저장 하실 수 없습니다.");
						flag = false;
						return false;
					}
				}
			});
		});
	});
	
	$("#" + formId).find(".emailCheck").each(function(i){
		if($(this).val() != "" && $(this).val().match(emailRegExp) == null){
			ui.popup.toast("E-mail 형식으로 입력해 주세요.");
			flag = false;
			$(this).focus();
			return false;
		}
	});
	
	return flag;
}

//전환목표
function setGoal(){
	var modNm = location.pathname.split("/")[2];
	var chartAjax = new comAjax();
	chartAjax.setUrl("/" + modNm + "/01/f04");	
	chartAjax.setCallback(goalCallback);	
	chartAjax.addParam("maid",$("#maId").val());
	chartAjax.ajax();
}
function goalCallback(data){
	data.result.forEach(function(el,index){
		$("#conversionGoal").append('<option value="' + el.id + '">' + el.targetName + '</option>');
	});
	if(data.result.length == 0) {
		$("#conversionGoal").append('<option value="">선택할 내용이 없습니다.</option>');
		$("#conversionGoal").prop("disabled",true);
	}
}
//이동후 토스트메세지 띄우는 함수
function flashMsg(url,msg){
	var flashFrm = $('<form id="flashFrm" action="/flashMsg">');
	flashFrm.append('<input type="hidden" name="url" value="' + url + '">');
	flashFrm.append('<input type="hidden" name="msg" value="' + msg + '">');
	$("body").append(flashFrm);
	$("#flashFrm").submit();
}
//checkbox 전체선택 util
function setCheckBox(id){
	var compareValue = "";
	var nameArray = new Array();
	console.log(nameArray);
	$("#" + id).find("input[type='checkbox']").each(function(i){
		if(compareValue != $(this).prop("name")) {
			compareValue = $(this).prop("name");
			nameArray.push(compareValue);
		}
	});

	nameArray.forEach(function(el,index){
		$("[name=" + el + "]").on("click",function(){
			var nameCount = $("[name=" + el + "]").length;
			var allCheckCount = 0;
			$("[name=" + el + "]:checked").each(function(){
				if($(this).val() != ""){
					allCheckCount++;
				}
			});
			
			if($(this).prop("checked")){
				if((allCheckCount == nameCount-1 && $(this).val() != "") || $(this).val() == ""){
					$("[name=" + el + "]").each(function(){
						if($(this).val() == ""){
							$(this).prop("checked",true);
						}else $(this).prop("checked",false);
					});
				}else if($(this).val() != ""){
					$("[name=" + el + "]").each(function(){
						if($(this).val() == "") $(this).prop("checked",false);
					});
				}
			}else{
				
			}
		});
	});
}

/**
 * 모든 checkbox가 해제가 되었을 시 한 개 이상 무조건 체크가 되게 해야 될 경우.
 * @param {*} id 
 */
 function chkCheckBox(id){
	var compareValue = "";
	var nameArray = new Array();
	$("#" + id).find("input[type='checkbox']").each(function(i){
		if(compareValue != $(this).prop("name")) {
			compareValue = $(this).prop("name");
			nameArray.push(compareValue);
		}
	});

	nameArray.forEach(function(el,index){
		$("[name=" + el + "]").on("change",function(){
			if($("[name="+el+"]").is(":checked")==false){
				$(this).prop("checked", true);
				return false;
			}
		});
	});
}
//check박스 값셋팅
function setCheckBoxValue(id){
	var compareValue = "";
	var nameArray = new Array();
	$("#" + id).find("input[type='checkbox']").each(function(i){
		if(compareValue != $(this).prop("name")) {
			compareValue = $(this).prop("name");
			nameArray.push(compareValue);
		}
	});

	this.setValue = function setValue(name) {
		var setData = "";
		var inputId = name.substring(0,name.indexOf("Check"));
        $("[name='" + name + "']:checked").each(function(i){
			if($("#" + id).find("#" + inputId).length == 0) $("#" + id).append('<input type="hidden" id="' + inputId + '" name="' + inputId + '"/>');
			if(i == 0) setData = $(this).val();
			else setData += "," + $(this).val();
		});
		$("#" + inputId).val(setData);
    };

	nameArray.forEach(function(el,index){
		$("[name=" + el + "]").on("click",function(){
			setValue(el);
		});
	});
	$(".btnReset").on("click",function(){
		nameArray.forEach(function(el,index){
			var inputId = el.substring(0,el.indexOf("Check"));
			$("#" + inputId).val("");
		});
	});
}
//replaceAll
function replaceAll(str, searchStr, replaceStr) {
	return str.split(searchStr).join(replaceStr);
 }
 //테이블에 결과 로우가 없을경우
function tableEmptyCheck(){
	$("table").each(function(){
		var colspanCnt = 0;
		$(this).find("th").each(function(){
			if($(this).hasClass("modeShow") == false) colspanCnt++;
		});
		if($(this).find("tbody tr").length == 0){
			var emptyHtml = '<tr><td colspan="' + colspanCnt + '" class="noData">검색된 결과가 없습니다.</td></tr>';
			$(this).find("tbody").append(emptyHtml);
		}
	});
}
//깊은복사
function deepClone(obj) {
	if (obj === null || typeof obj !== "object") {
	  return obj;
	}
	const result = Array.isArray(obj) ? [] : {};
	for(var i=0;i<Object.keys(obj).length;i++){
		result[Object.keys(obj)[i]] = deepClone(obj[Object.keys(obj)[i]]);
	}
	return result;
}
function emptyValueProcess(obj){
	if (typeof obj !== "object") {
		return obj;
	}
	if (obj === null || obj === undefined || obj === "") {
		return "-";
	}

	const result = Array.isArray(obj) ? [] : {};
	for(var i=0;i<Object.keys(obj).length;i++){
		result[Object.keys(obj)[i]] = emptyValueProcess(obj[Object.keys(obj)[i]]);
	}
	return result;
}
//원단위콤마찍기
function numberWithCommas(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
//int 확인
function isInt(num) {
	return num % 1 === 0;
}