<template>
    <div id="search-apartment" class="sm:w-2/3 sm:mx-auto md:w-1/2 xl:w-1/3 m-4">        
        <div class="">
            <div class="grid grid-cols-12 border-solid border border-grey-200">
                <div class="col-span-11">
                    <input type="text" class="w-full"
                    placeholder="apartment url" 
                    id="search-url"
                    v-model="apartmentUrl"
                    >
                </div>
                <button class="bg-white hover:bg-green-300 rounded-r-sm">
                    P
                </button>
            </div>
        </div>
        <div class="my-2">
            <div class="grid grid-cols-12 gap-1">
                <div class="col-span-5 bg-white">
                    <div class="flex pr-1">
                        <input type="text" placeholder="min" class="w-1/2 px-0.5">
                        <div>~</div>
                        <input type="text" placeholder="max" class="w-1/2 px-0.5">
                        <div>¥</div>
                    </div>
                </div>
                <div class="col-span-4">
                    <div class="">
                        <input type="text" placeholder="area" class="w-full px-1">
                    </div>
                </div>
                <div class="col-span-2">
                    <div class="">
                        <input type="text" placeholder="layout" class="w-full px-1">
                    </div>
                </div>
                <div class="col-span-1">
                    <button class="bg-green-300 hover:bg-green-500">
                        >>
                    </button>
                </div>        
            </div>
            <button class="container mx-auto w-full my-1.5 bg-green-300 hover:bg-green-500" @click="search()">Search</button>        
        </div>
    </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';

const apartmentUrl = ref('')
const minPrice = ref(0)
const maxPrice = ref(0)
const area = ref(0)
const layout = ref('')

function search() {    
    const searchHouse = document.getElementById('search-url');
    console.log(searchHouse.value) 
}
</script>

<style scoped>
</style>

