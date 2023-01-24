<template>
    <div class="col-span-11 grid grid-cols-11">        
        <div class="col-span-5">
            <div class="flex pr-1 bg-white rounded-l-sm border-solid border border-gray-200">
                <input type="text" 
                    :placeholder="leftSearch"                             
                    class="w-1/2 px-0.5 rounded-l-sm px-1"
                >
                <div>~</div>
                <input type="text"                                 
                    class="w-1/2 px-0.5 rounded-r-sm px-1"
                >
                <div>
                    <slot name="leftSearchUnit"></slot>
                </div>
            </div>
        </div>
        <div class="col-span-4">
            <div class="flex bg-white border-solid border border-gray-200">
                <input type="text" 
                    :placeholder="middleSearch" 
                    class="w-full px-1"
                >
                {{ middleSearchUnit }}
            </div>
        </div>
        <div class="col-span-2">
            <div class="flex bg-white border-solid border border-gray-200">
                <input type="text" 
                    :placeholder="rightSearch" 
                    class="w-full text-right pr-0.5">
                {{ rightSearchUnit }}
            </div>
        </div>
    </div>
</template>

<script setup>
const props = defineProps({
    leftSearch: String,
    middleSearch: String,
    middleSearchUnit: String,
    rightSearch: String,
    rightSearchUnit: String
})
</script>