<template>
  <main>
    <div>      
      <UpperCard />
      <HouseCardSlider title="Recent reviews" />
      <HouseCardSlider title="Popular reviews" />
      <HouseCardSlider title="Review requests" />
      <ReviewRequests />
    </div>
  </main>
</template>
<script setup>
import HouseCardSlider from '../components/HouseCardSlider.vue';
import UpperCard from '../components/UpperCard.vue';
import ReviewRequests from '../components/ReviewRequests.vue';
</script>
