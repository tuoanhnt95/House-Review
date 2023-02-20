<template>
    <div class="container-review border-1 border border-red-300" >
        <div>
            Card image
        </div>
        <div class="w-screen flex">
            <div class="sidebar-info border-1 border border-black">
                Badge1
            </div>
            <div class="sidebar-info border-1 border border-black">
                Badge2
            </div>
        </div>
    </div>
</template>

<script setup>
const props = defineProps(['house']);
</script>