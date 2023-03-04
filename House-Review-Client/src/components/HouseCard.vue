<template>
  <div class="border border-red-300">
    <div class="h-20 bg-contain bg-center bg-no-repeat bg-[url('../assets/images/house-placeholder.jpeg')] relative">
      <div class="flex absolute top-0 right-0">
        <div v-for="(badgeId, i) in house.badgeIds" :key="i">
          <div class="border-1 border border-black">
            <font-awesome-icon :icon=getBadgeById(badgeId) />
          </div>
        </div>
      </div>
    </div>
    <div class="h-11">
      {{ house.name }}
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';
const props = defineProps(['house']);

// get badge
const badges = ref([
  {
    badgeId: 1
    ,badgeName: 'foreigner friendly'
    ,displayName: 'foreign'
    ,icon: 'fa-solid fa-globe'
  }
  ,{
    badgeId: 2
    ,badgeName: 'pet friendly'
    ,displayName: 'pet'
    ,icon: 'fa-solid fa-paw'
  }
  ,{
    badgeId: 3
    ,badgeName: 'musical instrument friendly'
    ,displayName: 'instrm'
    ,icon: 'fa-solid fa-guitar'
  }
  ,{
    badgeId: 4
    ,badgeName: 'kid friendly'
    ,displayName: 'kid'
    ,icon: 'fa-solid fa-baby'
  }
  ,{
    badgeId: 5
    ,badgeName: 'DIY friendly'
    ,displayName: 'DIY'
    ,icon: 'fa-solid fa-screwdriver-wrench'
  }
])
function getBadgeById(id) {
  return badges.value.find(badge => badge.badgeId === id).icon
}
</script>
