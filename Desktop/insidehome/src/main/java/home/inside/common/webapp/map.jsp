<%@include file="/WEB-INF/views/user/main/userHeader.jsp"%>

<div id="map" style="width:500px; height:400px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/ve/maps/sdk.js?appkey=	e376e3bd8467337cf8a941094685823d"></script>
<script>
var mapContainer=document.getElementByld('map'),
mapOption = {center: new kakao.maps.LatLng(37.45221272210802, 126.8701757890704),
		         level: 2
    };
    
var map= new kakao.maps.Map(mapContainer,mapOption);

var position = [
	{
		title: '종로3가역',
		latlng: new kakao.maps.LatLng(37.571064, 126.992165)
	},
	{
		title: '고촌역',
		latlng: new kakao.maps.LatLng(37.60146013146049, 126.77022209705274)
	},
	{
		title: '홍제역',
		latlng: new kakao.maps.LatLng(37.58889708959538, 126.94409949847835)
	},
	{
		title: '기흥역',
		latlng: new kakao.maps.LatLng(37.27575494077938, 127.11593593805115)
	},
	{
		title: '서울대입구역',
		latlng: new kakao.maps.LatLng(37.4812610631918, 126.95267981107101)
	},
	{
		title: '주안역',
		latlng: new kakao.maps.LatLng(37.464985230499636, 126.68062975411702)
	},
];


var imageSrc="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStarStar.png";

for (var i=0; i<positions.length; i++) {
	
	var imageSize = new kakao.maps.Size(24,35);
	
	var markerimage = new kakao.maps.MarkerImage(imageSrc, imageSize);
	
	var marker = new kakao.maps.Marker({
		map:map,
		position:position[i].lating,
		title:positions[i].title,
		image:markerimage
	});
}
</script>
<%@ include file="/WEB-INF/views/user/main/userFooter.jsp" %>