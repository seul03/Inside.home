<%@include file="/WEB-INF/views/user/main/userHeader.jsp"%>

<div id="map" style="width:500%;height:400px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/ve/maps/sdk.js?appkey=	e376e3bd8467337cf8a941094685823d"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<script>
var mapContainer=document.getElementByld('map'),
    mapOption = {
		center: new kakao.maps.LatLng(37.45221272210802, 126.8701757890704),
		level: 2
    };
    
var map= new kakao.maps.Map(mapContainer,mapOption);

var geocoder = new kakao.maps.services.Geocoder();

geocoder.addressSearch("종로3가역 ", function (result, status) {
if (status === kakao.maps.services.Status.OK) {
    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });
    map.setCenter(coords);
}
});
<%@ include file="/WEB-INF/views/user/main/userFooter.jsp" %>