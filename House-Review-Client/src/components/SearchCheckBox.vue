<template>
    <div class="grid grid-cols-4 gap-1">                  
        <div class="col-span-3">
            <input type="checkbox" 
                :name="inputName" 
                :id="inputId"
            >
            {{ checkboxOneTitle }}
        </div>
        <div class="col-span-1">
            <input type="checkbox" 
                :name="inputName" 
                :id="inputId"
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