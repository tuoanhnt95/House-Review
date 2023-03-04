import { createApp } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import router from './router'
// import axiosPlugin from './plugins/axios'

import './assets/main.css'

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'
/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
/* import specific icons */
import { faBaby } from '@fortawesome/free-solid-svg-icons'
import { faGlobe } from '@fortawesome/free-solid-svg-icons'
import { faGuitar } from '@fortawesome/free-solid-svg-icons'
import { faMagnifyingGlass } from '@fortawesome/free-solid-svg-icons'
import { faMinus } from '@fortawesome/free-solid-svg-icons'
import { faPaw } from '@fortawesome/free-solid-svg-icons'
import { faPlus } from '@fortawesome/free-solid-svg-icons'
import { faScrewdriverWrench } from '@fortawesome/free-solid-svg-icons'
/* add icons to the library */
library.add(
  faBaby
  ,faGlobe
  ,faGuitar
  ,faMagnifyingGlass
  ,faMinus
  ,faPaw
  ,faPlus
  ,faScrewdriverWrench
)
const pinia = createPinia()

createApp(App)
.use(pinia)
.use(router)
// .use(axiosPlugin, {
//   baseURL: 'http://127.0.0.1:3000/',
// })
.component('font-awesome-icon', FontAwesomeIcon)
.mount('#app')
