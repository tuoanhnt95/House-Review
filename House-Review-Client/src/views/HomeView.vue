<template>
  <main>
    <div>
      <UpperCard />
      <HouseCardSlider title="Recent reviews" content="recent-reviews"/>
      <HouseCardSlider title="Popular reviews" content="popular-reviews" />
      <HouseCardSlider title="Review requests" content="review-requests" />
      <ReviewRequests />
    </div>
  </main>
</template>
<script setup>
import HouseCardSlider from '../components/HouseCardSlider.vue';
import UpperCard from '../components/UpperCard.vue';
import ReviewRequests from '../components/ReviewRequests.vue';
</script>
