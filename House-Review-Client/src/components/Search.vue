<template>
    <div>
        <h1>Lalala</h1>
        <SearchBar searchObject="apartment url"/>
        <SearchBar searchObject="price"/>
        <SearchBar searchObject="area"/>
        <SearchBar searchObject="layout"/>
        <button @click="search">Search</button>
        <button @click="count++">{{ count }}</button>
    </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import SearchBar from './SearchBar.vue';

const aptmtUrl = ref('')
const price = ref(0)
const area = ref(0)
const layout = ref('')

function search() {
    console.log(aptmtUrl)
}

//test
// const search = async() => {
//     return true;
// }

const count = ref(0)
const url = ref('')

</script>

<style scoped>
</style>