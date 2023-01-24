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
                    <SearchTextInput left-search="rent" middle-search="area" right-search="layout">
                        <template #leftSearchUnit>¥</template>
                    </SearchTextInput>
                    <div class="col-span-1">
                        <div class="bg-green-300 rounded-r border-solid border border-gray-200 drop-shadow-lg grid justify-center text-gray-400">
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
                    <SearchTextInput left-search="size" middle-search="station" middle-search-unit="駅" right-search="1" right-search-unit="F">
                        <template #leftSearchUnit>
                            m<sup>2</sup>
                        </template>
                    </SearchTextInput>                    
                </div>
            </div>            
            <div class="grid grid-cols-12">
                <div class="col-span-11">
                    <div class="mb-1 px-1 rounded bg-white/75">
                        <SearchCheckBox inputOneName="foreign-friendly" inputOneId="foreign-friendly" checkboxOneTitle="Foreign friendly" inputTwoName="pet" inputTwoId="pet" checkboxTwoTitle="Pet"/>
                        <SearchCheckBox inputOneName="musical-instrument" inputOneId="musical-instrument" checkboxOneTitle="Musical instrument" inputTwoName="diy" inputTwoId="diy" checkboxTwoTitle="DIY"/>
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
import SearchTextInput from './SearchTextInput.vue';
import SearchCheckBox from './SearchCheckBox.vue';

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

