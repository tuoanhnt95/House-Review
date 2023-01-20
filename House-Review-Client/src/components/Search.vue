<template>
    <div id="search-apartment">        
        <div class="font-bold border-solid border border-purple-200">
            <input type="text" 
                placeholder="apartment url" 
                id="search-url"
                v-model="apartmentUrl"
            >
        </div>
        <div class="font-bold">
            <input type="text" placeholder="price">
        </div>
        <div class="font-bold">
            <input type="text" placeholder="area">
        </div>
        <div class="font-bold">
            <input type="text" placeholder="layout">
        </div>        
        <button @click="search()">Search</button>
        <button @click="count++">{{ count }}</button>
    </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';

const apartmentUrl = ref('')
const price = ref(0)
const area = ref(0)
const layout = ref('')
const count = ref(0) // test, can delete

function search() {    
    const searchHouse = document.getElementById('search-url');
    console.log(searchHouse.value) 
}
</script>

<style scoped>
</style>

