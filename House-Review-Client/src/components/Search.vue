<template>
  <div id="search-apartment" class="sm:w-2/3 sm:mx-auto md:w-1/2 xl:w-1/3 m-4">
    <div class="bg-white rounded border-solid border-2 border-gray-300 drop-shadow-lg">
      <div class="grid grid-cols-12">
        <div class="col-span-11">
            <input type="text"
              placeholder="apartment url"
              class="w-full rounded-l-sm px-1"
              id="search-url"
              v-model="apartmentUrl"
            >
        </div>
        <button>
          <font-awesome-icon icon="fa-solid fa-magnifying-glass" />
        </button>
      </div>
    </div>
    <div class="my-2 drop-shadow-md">
      <div class="mb-1">
          <div class="grid grid-cols-12">
              <SearchTextInput left-search="rent" middle-search="area" right-search="layout">
                  <template #leftSearchUnit>¥</template>
              </SearchTextInput>
              <div class="col-span-1">
                  <div class="bg-green-300 rounded-r border-solid border border-gray-200 drop-shadow-lg grid justify-center text-gray-400"
                  >
                      <button @click="toggleAdvancedSearch">
                          <font-awesome-icon icon="fa-solid fa-plus"
                              v-show="!advancedSearch"
                          />
                          <font-awesome-icon icon="fa-solid fa-minus"
                              v-show="advancedSearch"
                          />
                      </button>
                  </div>
              </div>
          </div>
      </div>
      <div class="mb-1" v-show="advancedSearch">
          <div class="grid grid-cols-12">
              <SearchTextInput left-search="size" middle-search="station" middle-search-unit="駅" right-search="1" right-search-unit="F">
                  <template #leftSearchUnit>
                      m<sup>2</sup>
                  </template>
              </SearchTextInput>
          </div>
      </div>
      <div class="grid grid-cols-12" v-show="advancedSearch">
          <div class="col-span-11">
              <div class="mb-1 px-1 rounded bg-white/75">
                  <SearchCheckBox inputOneName="foreign-friendly" inputOneId="foreign-friendly" checkboxOneTitle="Foreign friendly" inputTwoName="pet" inputTwoId="pet" checkboxTwoTitle="Pet"/>
                  <SearchCheckBox inputOneName="musical-instrument" inputOneId="musical-instrument" checkboxOneTitle="Musical instrument" inputTwoName="diy" inputTwoId="diy" checkboxTwoTitle="DIY"/>
              </div>
          </div>
      </div>
    </div>
    <button
        class="container mx-auto w-full mb-3 bg-green-300 rounded-md border-solid border border-gray-200 drop-shadow-lg"
        @click="search()"
    >
        Search
    </button>
    <div>
      <input type="text"
        placeholder="building name"
        class="w-full rounded-l-sm px-1"
        id="building-name"
        v-model="buildingName"
      >
      <input type="text"
        placeholder="municipality id"
        class="w-full rounded-l-sm px-1"
        id="municipality-id"
        v-model="municipalityId"
      >
      <button
        class="container mx-auto w-full mb-3 bg-green-300 rounded-md border-solid border border-gray-200 drop-shadow-lg"
        @click="createBuilding"
    >
        Create building
      </button>
      <div v-for="building in buildings" :key="building.id">
        <h3>Name: {{ building.building_name }}</h3>
        <p>{{ building.municipality_id }}</p>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, reactive, computed, inject } from 'vue';
import SearchTextInput from './SearchTextInput.vue';
import SearchCheckBox from './SearchCheckBox.vue';

const apartmentUrl = ref('')
const minPrice = ref(0)
const maxPrice = ref(0)
const area = ref(0)
const layout = ref('')
const minFloorArea = ref(0)
const maxFloorArea = ref(0)
const station = ref(0)
const floor = ref('')

const buildings = ref([])
const buildingName = ref('')
const municipalityId = ref(0)
const API_URL = 'http://127.0.0.1:3000/';

// const axios = inject('axios')
onMounted(async() => {
  const res = await fetch(API_URL + 'buildings')
  buildings.value = await res.json()
})

const search = async() => {
  const res = await fetch(API_URL + 'search_house/' , {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      url: apartmentUrl.value
    })
  })
  .then((res) => {
    if (!res.ok) {
      console.log(res)
      throw new Error ('Not ok');
    }
    console.log(res)
  }).catch((error) => {
      console.error('There has been a problem with your fetch operation:', error);
    })
}

const createBuilding = async() => {
  console.log(buildingName)
  const res = await fetch(API_URL, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      building_name: buildingName.value,
      municipality_id: municipalityId.value
    })
  })

  const data = await res.json()
  buildings.value.push(data)
  buildingName.value = ''
  municipalityId.value = ''
}

let advancedSearch = ref(false)
const toggleAdvancedSearch = () => {
    advancedSearch.value = !advancedSearch.value
}

</script>

<style scoped>
</style>
