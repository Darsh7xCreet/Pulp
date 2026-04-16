<template>
  <header class="navbar">
    <div class="container-lg">
      <div class="navbar-content flex-between">
        <RouterLink to="/" class="logo">
          <span class="logo-icon">⚙️</span>
          <span class="logo-text">
            GOVIND RECYCLERS AND METALLOYS</span>
        </RouterLink>

        <button class="mobile-menu-btn" @click="toggleMenu" v-if="isMobile">
          <span></span>
          <span></span>
          <span></span>
        </button>

        <nav class="nav-menu" :class="{ active: menuOpen }">
          <RouterLink to="/" class="nav-link" @click="closeMenu">Home</RouterLink>
          <RouterLink to="/about" class="nav-link" @click="closeMenu">About Us</RouterLink>
          <RouterLink to="/products" class="nav-link" @click="closeMenu">Products</RouterLink>
          <RouterLink to="/gallery" class="nav-link" @click="closeMenu">Gallery</RouterLink>
          <RouterLink to="/contact" class="nav-link nav-cta" @click="closeMenu">Contact Us</RouterLink>
        </nav>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'Navigation',
  data() {
    return {
      menuOpen: false,
      isMobile: false
    }
  },
  methods: {
    toggleMenu() {
      this.menuOpen = !this.menuOpen
    },
    closeMenu() {
      this.menuOpen = false
    },
    checkMobile() {
      this.isMobile = window.innerWidth <= 768
    }
  },
  mounted() {
    this.checkMobile()
    window.addEventListener('resize', this.checkMobile)
  },
  beforeUnmount() {
    window.removeEventListener('resize', this.checkMobile)
  }
}
</script>

<style scoped>
.navbar {
  background: white;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
  position: sticky;
  top: 0;
  z-index: 1000;
}

.navbar-content {
  padding: 1rem 0;
}

.logo {
  display: flex;
  align-items: center;
  gap: 0.8rem;
  font-size: 1.5rem;
  font-weight: 800;
  color: var(--primary-blue);
  transition: color 0.3s ease;
}

.logo:hover {
  color: var(--accent-blue);
}

.logo-icon {
  font-size: 2rem;
}

.logo-text {
  letter-spacing: -0.5px;
}

.nav-menu {
  display: flex;
  align-items: center;
  gap: 2rem;
}

.nav-link {
  font-weight: 600;
  color: var(--dark-grey);
  transition: all 0.3s ease;
  padding: 0.5rem 0;
  border-bottom: 2px solid transparent;
}

.nav-link:hover {
  color: var(--accent-blue);
  border-bottom-color: var(--accent-blue);
}

.nav-cta {
  background-color: var(--accent-blue);
  color: white;
  padding: 0.7rem 1.5rem;
  border-radius: 6px;
  border-bottom: none;
}

.nav-cta:hover {
  background-color: var(--primary-blue);
  border-bottom: none;
}

.mobile-menu-btn {
  display: none;
  flex-direction: column;
  background: none;
  border: none;
  cursor: pointer;
  gap: 5px;
}

.mobile-menu-btn span {
  width: 25px;
  height: 3px;
  background-color: var(--primary-blue);
  border-radius: 3px;
  transition: all 0.3s ease;
}

@media (max-width: 768px) {
  .mobile-menu-btn {
    display: flex;
  }

  .nav-menu {
    position: absolute;
    top: 70px;
    left: 0;
    right: 0;
    background: white;
    flex-direction: column;
    gap: 1rem;
    padding: 2rem 1.5rem;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s ease;
  }

  .nav-menu.active {
    max-height: 400px;
  }

  .nav-link {
    display: block;
    padding: 0.8rem 0;
    border-bottom: 1px solid var(--light-grey);
  }

  .nav-cta {
    margin-top: 0.5rem;
  }

  .logo-text {
    font-size: 1.2rem;
  }
}
</style>
