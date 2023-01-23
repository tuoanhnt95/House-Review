<template>
  <main>
    <div>
      <Map />
      <Search />
      <RecentReviews />
      <ReviewRequests />
    </div>
  </main>
</template>
<script setup>
import Map from '../components/Map.vue';
import Search from '../components/Search.vue';
import RecentReviews from '../components/RecentReviews.vue';
import ReviewRequests from '../components/ReviewRequests.vue';
</script>
