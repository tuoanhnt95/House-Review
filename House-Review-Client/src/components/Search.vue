<template>
    <div id="search-apartment" class="sm:w-2/3 sm:mx-auto md:w-1/2 xl:w-1/3 m-4">        
        <div class="bg-white rounded border-solid border-2 border-gray-300 drop-shadow-lg">
            <div class="grid grid-cols-12">
                <div class="col-span-11">
                    <input type="text" 
                        placeholder="apartment url" 
                        class="w-full rounded-l-sm px-1"                     
                        id="search-url"
                        v-model="apartmentUrl"
                    >
                </div>
                <button>
                    <font-awesome-icon icon="fa-solid fa-magnifying-glass" />
                </button>
            </div>
        </div>
        <div class="my-2 drop-shadow-md">
            <div class="mb-1">
                <div class="grid grid-cols-12">
                    <div class="col-span-5">
                        <div class="flex pr-1 bg-white rounded-l-sm border-solid border border-gray-200">
                            <input type="text" 
                                placeholder="rent"                               
                                class="w-1/2 px-0.5 rounded-l-sm px-1"
                            >
                            <div>~</div>
                            <input type="text"                                 
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
                        <div class="bg-green-300 grid rounded-r border-solid border border-gray-200 drop-shadow-lg justify-center text-gray-400">
                            <button>
                                <font-awesome-icon icon="fa-solid fa-plus"/>
                                <!-- <font-awesome-icon icon="fa-solid fa-minus"/> -->
                            </button>
                        </div>
                    </div>        
                </div>
            </div>                   
            <div class="mb-1">
                <div class="grid grid-cols-12">
                    <div class="col-span-5">
                        <div class="flex pr-1 bg-white rounded-l-sm border-solid border border-gray-200">
                            <input type="text"
                                placeholder="size"                              
                                class="w-1/2 px-0.5 rounded-l-sm px-1"
                            >
                            <div>~</div>
                            <input type="text"                             
                                class="w-1/2 px-0.5 rounded-r-sm px-1"
                            >
                            <div>m<sup>2</sup></div>
                        </div>
                    </div>
                    <div class="col-span-4">
                        <div class="flex bg-white border-solid border border-gray-200">
                            <input type="text" 
                                placeholder="station" 
                                class="w-full px-1"
                            >
                            駅
                        </div>
                    </div>
                    <div class="col-span-2">
                        <div class="flex bg-white rounded border-solid border-2 border-gray-300 px-1">
                            <input type="text" 
                                placeholder="1" 
                                class="w-full text-right pr-0.5"
                            >
                            F
                        </div>
                    </div>
                </div>
            </div>            
            <div class="grid grid-cols-12">
                <div class="col-span-11">
                    <div class="mb-1 px-1 rounded bg-white/75">
                        <div class="grid grid-cols-4 gap-1">                  
                            <div class="col-span-3">
                                <input type="checkbox" 
                                    name="foreign-friendly" 
                                    id="foreign-friendly"                            
                                >
                                Foreign friendly                       
                            </div>
                            <div class="col-span-1">
                                <input type="checkbox" 
                                    name="foreign-friendly" 
                                    id="foreign-friendly"                            
                                >
                                Pet 
                            </div>                                
                        </div>                        
                        <div class="grid grid-cols-4 gap-1">                  
                            <div class="col-span-3">                      
                                <input type="checkbox" 
                                name="foreign-friendly" 
                                id="foreign-friendly"                            
                                >
                                Musical instrument 
                            </div>
                            <div class="col-span-1">
                                <input type="checkbox" 
                                    name="foreign-friendly" 
                                    id="foreign-friendly"                            
                                >
                                DIY 
                            </div>                                
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <button 
            class="container mx-auto w-full mb-3 bg-green-300 rounded-md border-solid border border-gray-200 drop-shadow-lg" 
            @click="search()"
        >
            Search
        </button> 
    </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';

const apartmentUrl = ref('')
const minPrice = ref(0)
const maxPrice = ref(0)
const area = ref(0)
const layout = ref('')
const minFloorArea = ref(0)
const maxFloorArea = ref(0)
const station = ref(0)
const floor = ref('')

function search() {    
    const searchHouse = document.getElementById('search-url');
    console.log(searchHouse.value) 
}
</script>

<style scoped>
</style>

