<template>
    <div class="container-review border-1 border border-red-300">
        <div>
            {{ title }}
        </div>
        <div v-for="(house, i) in houses" :key="i" class="w-screen flex">
            <HouseCard house="house"/>
        </div>
    </div>
</template>

<script setup>
import { ref } from 'vue';
import HouseCard from './HouseCard.vue';
const props = defineProps(['title']) 

const houses = ref([
    {name: 'Meguro pretty'}, {name: 'Kitasenzoku clean'}, {name: 'Shimokitazawa hip'}])
</script>