var addresses = [
    {
        name: 'Home',
        address: '12531 17th Ave NE, Seattle WA',
        desc: 'this is home'
    },
    {
        name: 'Work',
        address: '1918 8th Ave, Seattle WA',
        desc: 'I work here'
    },
    {
        name: 'Bellevue City',
        address: 'Bellevue, WA',
        desc: 'This is a city'
    },
    {
        name: 'Washington State',
        address: 'Washington, United States',
        desc: 'This is a state'
    },
    {
        name: 'China',
        address: 'China',
        desc: 'This is a country'
    },
    {
        name: 'By Zip Code (NY)',
        address: '10001',
        desc: 'This is NY zip code'
    }
];





//Angular App Module and Controller
angular.module('mapsApp', [])
.controller('MapCtrl', function ($scope, $http) {
    var defaultData = {
        address: "12531 17th Ave NE, Seattle WA",
        lat: 47.659154,
        lng: -122.310827
    };

    //
      $scope.categories = ['A', 'B', 'C'];
      $scope.getAddresses = function(category) {

        $http({
            method: 'GET',
            url: 'https://pihc-pihccommunity.cs61.force.com/members/services/apexrest/engagement?category=' + category,
            //url: 'https://weizong-developer-edition.na40.force.com/services/apexrest/nutrition?category=' + category,
        }).then(function successCallback(response) {
                //setMapOnAll(null);
                $scope.markers = [];
                addresses = response.data;
                console.log(addresses);
                initAll();
            }, function errorCallback(response) {
                console.log(response);
        });
      }
    
    //

    var mapOptions = {
        zoom: 14,
        zoomControl:true,
        center: new google.maps.LatLng(defaultData.lat, defaultData.lng),
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        disableDefaultUI: true,
        styles: [{"featureType":"all","elementType":"geometry","stylers":[{"hue":"#ff4400"},{"saturation":-68},{"lightness":-4},{"gamma":0.72}]},{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"hue":"#0077ff"},{"gamma":3.1}]},{"featureType":"poi.park","elementType":"all","stylers":[{"hue":"#44ff00"},{"saturation":-23}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"lightness":"99"},{"weight":"3.09"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"visibility":"off"},{"color":"#facfcf"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#b8b6b5"}]},{"featureType":"transit","elementType":"labels.text.stroke","stylers":[{"saturation":-64},{"hue":"#ff9100"},{"lightness":16},{"gamma":0.47},{"weight":2.7}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"lightness":-48},{"hue":"#ff5e00"},{"gamma":1.2},{"saturation":-23}]},{"featureType":"water","elementType":"all","stylers":[{"hue":"#00ccff"},{"gamma":0.44},{"saturation":-33}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"hue":"#007fff"},{"gamma":0.77},{"saturation":65},{"lightness":99}]},{"featureType":"water","elementType":"labels.text.stroke","stylers":[{"gamma":0.11},{"weight":5.6},{"saturation":99},{"hue":"#0091ff"},{"lightness":-86}]}]
        //styles: [{"elementType":"geometry","stylers":[{"hue":"#ff4400"},{"saturation":-68},{"lightness":-4},{"gamma":0.72}]},{"featureType":"road","elementType":"labels.icon"},{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"hue":"#0077ff"},{"gamma":3.1}]},{"featureType":"water","stylers":[{"hue":"#00ccff"},{"gamma":0.44},{"saturation":-33}]},{"featureType":"poi.park","stylers":[{"hue":"#44ff00"},{"saturation":-23}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"hue":"#007fff"},{"gamma":0.77},{"saturation":65},{"lightness":99}]},{"featureType":"water","elementType":"labels.text.stroke","stylers":[{"gamma":0.11},{"weight":5.6},{"saturation":99},{"hue":"#0091ff"},{"lightness":-86}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"lightness":-48},{"hue":"#ff5e00"},{"gamma":1.2},{"saturation":-23}]},{"featureType":"transit","elementType":"labels.text.stroke","stylers":[{"saturation":-64},{"hue":"#ff9100"},{"lightness":16},{"gamma":0.47},{"weight":2.7}]}]
    };
    var infoWindow = new google.maps.InfoWindow();
    
    function getLatLong(callback, info) {
        var address = info.Address__c || defaultData.address;
        // Initialize the Geocoder
        var geocoder = new google.maps.Geocoder();
        if (geocoder) {
            geocoder.geocode({
                'address': address
            }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    callback(results[0], info);
                };
            });
        }
    }

    function createMarker(result, info) {
        var lat = result.geometry.location.lat();
        var lng = result.geometry.location.lng();
        var marker = new google.maps.Marker({
            map: $scope.map,
            position: new google.maps.LatLng(lat, lng),
            title: info.Name__c
        });

        marker.content = '<div class=infoWindowContent">' + info.Category__c + '</div>';
    
        google.maps.event.addListener(marker, 'click', function(){
            infoWindow.setContent('<h4>' + marker.title + '</h4>' + marker.content);
            infoWindow.open($scope.map, marker);
            $scope.map.panTo(marker.position);
        });
        $scope.$apply(function () {
            $scope.markers.push(marker); 
            //$scope.message = "Timeout called!";
        });
        
    }

    function setMapOnAll(map) {
        for (var i = 0; i < $scope.markers.length; i++) {
          $scope.markers[i].setMap(map);
        }
    }

    $scope.map = new google.maps.Map(document.getElementById('map'), mapOptions);
    $scope.markers = [];
    
    $scope.hide = function() {
        alert('Hello ');
    };
    $scope.openInfoWindow = function(e, selectedMarker){
        e.preventDefault();
        google.maps.event.trigger(selectedMarker, 'click');
    };

    function initAll(){
        for (var i = 0; i < addresses.length; i++){
            getLatLong(createMarker, addresses[i]);
        }
    }
});
