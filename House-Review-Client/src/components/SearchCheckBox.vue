<template>
    <div class="grid grid-cols-4 gap-1">                  
        <div class="col-span-3">
            <input type="checkbox" 
                :name="inputOneName" 
                :id="inputOneId"
            >
            {{ checkboxOneTitle }}
        </div>
        <div class="col-span-1">
            <input type="checkbox" 
                :name="inputTwoName" 
                :id="inputTwoId"
            >
            {{ checkboxTwoTitle }}
        </div>                                
    </div>    
</template>

<script setup>
const props = defineProps({
    inputOneName: String,
    inputOneId: String,
    checkboxOneTitle: String,
    inputTwoName: String,
    inputTwoId: String,
    checkboxTwoTitle: String
})
</script>