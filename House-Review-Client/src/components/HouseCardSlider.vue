<template>
  <div class="container-review border-1 border border-red-300">
    <div>
      {{ title }}
    </div>
    <div class="w-screen flex">
      <div v-for="(house, i) in houses" :key="i" class="w-1/3">
        <HouseCard :house="house"/>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';
import HouseCard from './HouseCard.vue';
const props = defineProps(['title', 'content'])

const houses = ref([
  {
    name: 'Meguro pretty'
    ,badgeIds: [1,2,5]
  }
  ,{
    name: 'Kitasenzoku clean'
    ,badgeIds: [1,4]
  }
  ,{
    name: 'Shimokitazawa hip'
    ,badgeIds: [3,5]
  }
])
</script>
