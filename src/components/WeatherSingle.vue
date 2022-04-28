<template>
  

    <div class="item">
    <div class="date">{{unixToHumanDate(current.dt)}}</div>
    <div class="temp">{{simplifyTemp(current.temp)}}°C</div>
    <div class="icon">
      <img
        v-if="current.weather?.[0].icon"
        :src="'http://openweathermap.org/img/wn/'+current.weather?.[0].icon+'@2x.png'"
        alt="Ikona pogody">
    </div>
  </div>
</template>
<script>


export default {
  props: {
        current: Object
  },
  methods :{
      unixToHumanDate( unixDate ){
          const dt = new Date(unixDate * 1000)
          return dt.toLocaleDateString()

      },
      simplifyTemp (temp){
          if(typeof temp !="object") return temp;
          return temp.min+"-"+temp.max;
          
          }
  }  
}
</script>

<style>

</style>