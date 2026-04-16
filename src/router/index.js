import { createRouter, createWebHistory } from 'vue-router'

// Import pages
import Home from '../pages/Home.vue'
import About from '../pages/About.vue'
import Products from '../pages/Products.vue'
import Gallery from '../pages/Gallery.vue'
import Contact from '../pages/Contact.vue'
import { createRouter, createWebHashHistory } from 'vue-router'
const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/products',
    name: 'Products',
    component: Products
  },
  {
    path: '/gallery',
    name: 'Gallery',
    component: Gallery
  },
  {
    path: '/contact',
    name: 'Contact',
    component: Contact
  }
]


const router = createRouter({
  history: createWebHashHistory(import.meta.env.BASE_URL),
  routes,
  scrollBehavior() {
    return { top: 0 }
  }
})


export default router
