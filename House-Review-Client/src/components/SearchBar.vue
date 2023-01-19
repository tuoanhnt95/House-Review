<template>
    <input type="text" 
        :placeholder="searchObject"
        class="searchBar"
    >
</template>

<script setup>
import { ref } from 'vue';
const props = defineProps({
    searchObject: String
})
// const emits = defineEmits({
    
// })
</script>
