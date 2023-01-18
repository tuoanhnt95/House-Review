<script setup>
import { ref } from 'vue';
const props = defineProps({
    searchObject: String
})

</script>
<template>
    <input type="text" v-model="aprtmtUrl" :placeholder="searchObject">
</template>