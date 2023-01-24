<template>
    <div id="search-apartment" class="sm:w-2/3 sm:mx-auto md:w-1/2 xl:w-1/3 m-4">        
        <div class="rounded">
            <div class="grid grid-cols-12">
                <div class="col-span-11">
                    <input type="text" 
                        placeholder="apartment url" 
                        class="w-full rounded-l-sm px-1 border-solid border-2 border-r-0 border-gray-300 drop-shadow-lg"                     
                        id="search-url"
                        v-model="apartmentUrl"
                    >
                </div>
                <button class="bg-white rounded-r-md drop-shadow-lg border-solid border-2 border-l-0 border-gray-300">
                    <font-awesome-icon icon="fa-solid fa-magnifying-glass" />
                </button>
            </div>
        </div>
        <div class="my-2 drop-shadow-md">
            <div class="grid grid-cols-12 gap-1">
                <div class="col-span-5">
                    <div class="flex pr-1 bg-white rounded-l-sm border-solid border border-gray-200">
                        <input type="text" 
                            placeholder="min" 
                            class="w-1/2 px-0.5 rounded-l-sm px-1"
                        >
                        <div>~</div>
                        <input type="text" 
                            placeholder="max" 
                            class="w-1/2 px-0.5 rounded-r-sm px-1"
                        >
                        <div>¥</div>
                    </div>
                </div>
                <div class="col-span-4">
                    <div class="">
                        <input type="text" 
                            placeholder="area" 
                            class="w-full px-1 border-solid border border-gray-200">
                    </div>
                </div>
                <div class="col-span-2">
                    <div class="">
                        <input type="text" 
                            placeholder="layout" 
                            class="w-full px-1 rounded-r-sm border-solid border border-gray-200">
                    </div>
                </div>
                <div class="col-span-1">
                    <button>
                        <font-awesome-icon icon="fa-solid fa-caret-right"
                            class="text-green-300 drop-shadow-lg"    
                        />
                    </button>
                </div>        
            </div>
            <button 
                class="container mx-auto w-full my-1.5 bg-green-300 rounded-md border-solid border border-gray-200 drop-shadow-lg" 
                @click="search()"
            >
                Search
            </button>        
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

