<template>
<div class="weatherView">
   <h1>Weather</h1> 
   {{weather}}

   <table>
       <tr>
           <th>City</th>
           <td>{{cityName}}</td>
       </tr>
        <tr>
           <th>LAT</th>
           <td>{{lat}}</td>
           </tr>
            <tr>
           <th>LON</th>
           <td>{{lon}}</td>
       </tr>
   </table>
   </div>
</template>

<script>


export default {
    name: 'WeatherView',
    data(){
        return{
            cityName: "",
            lat: "",
            lon: ""

        }
    },
    methods:{
        getWeather(){
            console.log("getWeather")
        },
        getLocation(cityName){
            console.log(cityName)
            fetch("http://api.openweathermap.org/geo/1.0/direct?q="+cityName+"&appid=04d03c358e8933ac6823da54c340c97b")
            .then(dt => dt.json())
            .then (dt => {
                this.cityName = dt[0].name;
                this.cityName = dt[0].lat;
                this.cityName = dt[0].lon;


               // console.log(dt[0])
            })

        },
    },
    created(){
        this.getLocation("Katowice");
    },
    

}
</script>
<style>

</style>
