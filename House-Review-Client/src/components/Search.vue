<script setup>
import { ref } from 'vue';
import SearchBar from './SearchBar.vue';

//test
const msg = 'Hello'
function log() {
console.log(msg)
}

const count = ref(0)
const url = ref('')

</script>

<template>
    <SearchBar searchObject="url"/>
    <SearchBar searchObject="price"/>
    <SearchBar searchObject="area"/>
    <SearchBar searchObject="layout"/>
    <h1>Lalala</h1>
    <button @click="log">{{ msg }}</button>
    <button @click="count++">{{ count }}</button>
</template>