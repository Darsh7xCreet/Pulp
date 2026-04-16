<template>
  <div class="gallery-page">
    <!-- Page Hero -->
    <section class="page-hero">
      <div class="container-lg">
        <h1>Gallery</h1>
        <p>Showcasing Our Facilities, Operations & Expertise</p>
      </div>
    </section>

    <!-- Gallery Section -->
    <section class="section section-bg-white">
      <div class="container-lg">
        <h2 class="text-center mb-3">Our Facilities & Operations</h2>
        <p class="text-center intro-text mb-5">
          Explore our state-of-the-art manufacturing facilities, precision equipment, and quality control laboratories that ensure every product meets world-class standards.
        </p>

        <!-- Filter Tabs -->
        <div class="filter-tabs">
          <button 
            v-for="category in categories" 
            :key="category"
            @click="selectedCategory = category"
            :class="['filter-btn', { active: selectedCategory === category }]"
          >
            {{ category }}
          </button>
        </div>

        <!-- Gallery Grid -->
        <div class="gallery-grid">
          <div 
            v-for="image in filteredImages" 
            :key="image.id"
            class="gallery-item"
            @click="openLightbox(image)"
          >
            <img :src="image.src" :alt="image.alt" class="gallery-image">
            <div class="gallery-overlay">
              <h3>{{ image.title }}</h3>
              <p>{{ image.description }}</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Lightbox Modal -->
    <div v-if="lightboxOpen" class="lightbox" @click="lightboxOpen = false">
      <button class="lightbox-close" @click="lightboxOpen = false">✕</button>
      <div class="lightbox-container">
        <img :src="selectedImage.src" :alt="selectedImage.alt" class="lightbox-image">
        <div class="lightbox-info">
          <h2>{{ selectedImage.title }}</h2>
          <p>{{ selectedImage.description }}</p>
          <p class="lightbox-category">Category: <span>{{ selectedImage.category }}</span></p>
        </div>
      </div>
    </div>

    <!-- Stats Section -->
    <section class="section section-bg-light">
      <div class="container-lg">
        <h2 class="text-center mb-5">Our Manufacturing Excellence</h2>
        <div class="grid grid-2">
          <div class="stat-box">
            <img src="https://images.unsplash.com/photo-1581092162384-8987c1d64718?w=300&h=250&fit=crop" alt="Facility">
            <h3>10,000 Ton Annual Capacity</h3>
            <p>State-of-the-art facility with advanced processing equipment producing premium aluminum alloys continuously.</p>
          </div>
          <div class="stat-box">
            <img src="https://images.unsplash.com/photo-1581092165854-915ec1ba38db?w=300&h=250&fit=crop" alt="Lab">
            <h3>Advanced Quality Labs</h3>
            <p>Complete testing infrastructure with chemical analysis, metallography, and mechanical testing capabilities.</p>
          </div>
          <div class="stat-box">
            <img src="https://images.unsplash.com/photo-1581092162384-8987c1d64718?w=300&h=250&fit=crop" alt="Processing">
            <h3>Precision Processing</h3>
            <p>Computer-controlled melting, casting, and processing systems ensure consistent quality across all batches.</p>
          </div>
          <div class="stat-box">
            <img src="https://images.unsplash.com/photo-1581092918056-0c4c3acd3789?w=300&h=250&fit=crop" alt="Logistics">
            <h3>Secure Logistics</h3>
            <p>Climate-controlled storage with efficient material handling and international shipping capabilities.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Process Section -->
    <section class="section section-bg-white">
      <div class="container-lg">
        <h2 class="text-center mb-5">Our Manufacturing Process</h2>
        <div class="process-flow">
          <div class="process-step">
            <div class="process-icon">1️⃣</div>
            <h3>Raw Material Selection</h3>
            <p>Premium aluminum scrap sourced and segregated for purity and quality requirements.</p>
          </div>
          <div class="arrow">→</div>
          <div class="process-step">
            <div class="process-icon">2️⃣</div>
            <h3>Advanced Melting</h3>
            <p>Controlled furnace operation at precise temperatures with alloying element addition.</p>
          </div>
          <div class="arrow">→</div>
          <div class="process-step">
            <div class="process-icon">3️⃣</div>
            <h3>Casting</h3>
            <p>Molten metal cast into ingots using controlled cooling and solidification processes.</p>
          </div>
          <div class="arrow">→</div>
          <div class="process-step">
            <div class="process-icon">4️⃣</div>
            <h3>Quality Testing</h3>
            <p>Comprehensive chemical and mechanical testing to verify specification compliance.</p>
          </div>
          <div class="arrow">→</div>
          <div class="process-step">
            <div class="process-icon">5️⃣</div>
            <h3>Certification</h3>
            <p>Documentation and certification with full traceability for client confidence.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA -->
    <section class="section cta-section">
      <div class="container-lg text-center">
        <h2>Interested in Our Capabilities?</h2>
        <p>Schedule a facility visit or request detailed technical documentation</p>
        <div class="cta-buttons">
          <RouterLink to="/contact" class="btn btn-primary">Request Facility Tour</RouterLink>
          <a href="tel:+918460064395" class="btn btn-secondary">Call Us</a>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Gallery',
  data() {
    return {
      selectedCategory: 'All',
      lightboxOpen: false,
      selectedImage: null,
      categories: ['All', 'Facilities', 'Equipment', 'Products', 'Process'],
      images: [
        // Facilities
        {
          id: 1,
          src: 'https://images.unsplash.com/photo-1581092162384-8987c1d64718?w=500&h=500&fit=crop',
          alt: 'Production Facility',
          title: 'Main Production Facility',
          description: 'State-of-the-art manufacturing facility with 10,000 ton annual capacity.',
          category: 'Facilities'
        },
        {
          id: 2,
          src: 'https://images.unsplash.com/photo-1581092918056-0c4c3acd3789?w=500&h=500&fit=crop',
          alt: 'Storage Facility',
          title: 'Climate-Controlled Storage',
          description: 'Secure warehousing with temperature and humidity control for optimal material preservation.',
          category: 'Facilities'
        },
        // Equipment
        {
          id: 3,
          src: 'https://images.unsplash.com/photo-1581092165854-915ec1ba38db?w=500&h=500&fit=crop',
          alt: 'Testing Equipment',
          title: 'Advanced Testing Laboratory',
          description: 'Complete chemical analysis and mechanical testing equipment for quality verification.',
          category: 'Equipment'
        },
        {
          id: 4,
          src: 'https://images.unsplash.com/photo-1581092162384-8987c1d64718?w=500&h=500&fit=crop',
          alt: 'Melting Furnace',
          title: 'Precision Melting System',
          description: 'Computer-controlled furnace operation ensuring consistent alloy composition.',
          category: 'Equipment'
        },
        // Products
        {
          id: 5,
          src: 'https://images.unsplash.com/photo-1581092165854-915ec1ba38db?w=500&h=500&fit=crop',
          alt: 'Aluminum Ingots',
          title: 'Premium Aluminum Ingots',
          description: 'High-quality aluminum alloy ingots ready for industrial processing.',
          category: 'Products'
        },
        {
          id: 6,
          src: 'https://images.unsplash.com/photo-1581092918056-0c4c3acd3789?w=500&h=500&fit=crop',
          alt: 'ADC12 Ingots',
          title: 'ADC12 Alloy Ingots',
          description: 'Specialized alloy ingots for die-casting automotive and industrial components.',
          category: 'Products'
        },
        // Process
        {
          id: 7,
          src: 'https://images.unsplash.com/photo-1581092162384-8987c1d64718?w=500&h=500&fit=crop',
          alt: 'Casting Process',
          title: 'Controlled Casting Process',
          description: 'Precision casting with real-time temperature monitoring and control.',
          category: 'Process'
        },
        {
          id: 8,
          src: 'https://images.unsplash.com/photo-1581092165854-915ec1ba38db?w=500&h=500&fit=crop',
          alt: 'Quality Control',
          title: 'Quality Control Operations',
          description: 'Comprehensive testing and verification ensuring specification compliance.',
          category: 'Process'
        },
        // Additional
        {
          id: 9,
          src: 'https://images.unsplash.com/photo-1581092918056-0c4c3acd3789?w=500&h=500&fit=crop',
          alt: 'Material Handling',
          title: 'Automated Material Handling',
          description: 'Efficient logistics system for safe product movement and storage.',
          category: 'Facilities'
        },
        {
          id: 10,
          src: 'https://images.unsplash.com/photo-1581092162384-8987c1d64718?w=500&h=500&fit=crop',
          alt: 'Production Line',
          title: 'Modern Production Line',
          description: 'Integrated manufacturing system for consistent and reliable production.',
          category: 'Equipment'
        },
        {
          id: 11,
          src: 'https://images.unsplash.com/photo-1581092165854-915ec1ba38db?w=500&h=500&fit=crop',
          alt: 'Finished Products',
          title: 'Finished Alloy Products',
          description: 'Ready-to-ship premium aluminum alloys meeting international standards.',
          category: 'Products'
        },
        {
          id: 12,
          src: 'https://images.unsplash.com/photo-1581092918056-0c4c3acd3789?w=500&h=500&fit=crop',
          alt: 'Laboratory Analysis',
          title: 'Detailed Analysis Testing',
          description: 'Microscopic analysis and advanced testing for material verification.',
          category: 'Process'
        }
      ]
    }
  },
  computed: {
    filteredImages() {
      if (this.selectedCategory === 'All') {
        return this.images
      }
      return this.images.filter(img => img.category === this.selectedCategory)
    }
  },
  methods: {
    openLightbox(image) {
      this.selectedImage = image
      this.lightboxOpen = true
      document.body.style.overflow = 'hidden'
    },
    closeLightbox() {
      this.lightboxOpen = false
      document.body.style.overflow = 'auto'
    }
  },
  watch: {
    lightboxOpen(val) {
      if (!val) {
        document.body.style.overflow = 'auto'
      }
    }
  }
}
</script>

<style scoped>
.page-hero {
  background: linear-gradient(135deg, var(--primary-blue) 0%, var(--secondary-blue) 100%);
  color: white;
  padding: 80px 0;
  text-align: center;
}

.page-hero h1 {
  color: white;
  margin-bottom: 1rem;
}

.page-hero p {
  font-size: 1.3rem;
  color: rgba(255, 255, 255, 0.9);
}

.intro-text {
  max-width: 800px;
  margin: 0 auto;
  font-size: 1.1rem;
  color: var(--text-light);
}

.filter-tabs {
  display: flex;
  justify-content: center;
  gap: 1rem;
  flex-wrap: wrap;
  margin-bottom: 3rem;
}

.filter-btn {
  padding: 0.8rem 1.5rem;
  border: 2px solid var(--border-color);
  background: white;
  color: var(--text-dark);
  border-radius: 25px;
  cursor: pointer;
  font-weight: 600;
  transition: all 0.3s ease;
}

.filter-btn:hover {
  border-color: var(--accent-blue);
  color: var(--accent-blue);
}

.filter-btn.active {
  background: var(--accent-blue);
  color: white;
  border-color: var(--accent-blue);
}

.gallery-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 2rem;
}

.gallery-item {
  position: relative;
  overflow: hidden;
  border-radius: 12px;
  box-shadow: var(--shadow);
  cursor: pointer;
  aspect-ratio: 1;
  group: item;
  transition: transform 0.3s ease;
}

.gallery-item:hover {
  transform: scale(1.05);
}

.gallery-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.gallery-item:hover .gallery-image {
  transform: scale(1.1);
}

.gallery-overlay {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: linear-gradient(135deg, rgba(0, 61, 122, 0.8), rgba(30, 136, 229, 0.8));
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  padding: 2rem;
  color: white;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.gallery-item:hover .gallery-overlay {
  opacity: 1;
}

.gallery-overlay h3 {
  color: white;
  margin-bottom: 0.5rem;
  font-size: 1.3rem;
}

.gallery-overlay p {
  color: rgba(255, 255, 255, 0.9);
  font-size: 0.9rem;
  margin: 0;
}

/* Lightbox */
.lightbox {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.9);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 2000;
  padding: 2rem;
  animation: fadeIn 0.3s ease;
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

.lightbox-container {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  max-width: 900px;
  width: 100%;
  display: grid;
  grid-template-columns: 1fr 1fr;
  box-shadow: var(--shadow-lg);
  animation: slideUp 0.3s ease;
}

@keyframes slideUp {
  from {
    transform: translateY(50px);
    opacity: 0;
  }
  to {
    transform: translateY(0);
    opacity: 1;
  }
}

.lightbox-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.lightbox-info {
  padding: 3rem;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.lightbox-info h2 {
  margin-bottom: 1rem;
  color: var(--primary-blue);
}

.lightbox-info p {
  margin-bottom: 1rem;
}

.lightbox-category {
  font-weight: 600;
  color: var(--text-light);
}

.lightbox-category span {
  color: var(--accent-blue);
  background: var(--light-blue);
  padding: 0.3rem 0.8rem;
  border-radius: 4px;
  display: inline-block;
  margin-left: 0.5rem;
}

.lightbox-close {
  position: absolute;
  top: 2rem;
  right: 2rem;
  background: white;
  border: none;
  font-size: 1.5rem;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: var(--shadow-lg);
  transition: all 0.3s ease;
  z-index: 2001;
}

.lightbox-close:hover {
  background: var(--accent-blue);
  color: white;
  transform: scale(1.1);
}

/* Stats Section */
.stat-box {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: var(--shadow);
  transition: all 0.3s ease;
}

.stat-box:hover {
  box-shadow: var(--shadow-lg);
  transform: translateY(-10px);
}

.stat-box img {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.stat-box h3 {
  padding: 1.5rem 1.5rem 0.5rem;
  color: var(--primary-blue);
}

.stat-box p {
  padding: 0 1.5rem 1.5rem;
  font-size: 0.95rem;
}

/* Process Flow */
.process-flow {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1rem;
  align-items: center;
}

.process-step {
  background: white;
  padding: 2rem 1.5rem;
  border-radius: 12px;
  text-align: center;
  box-shadow: var(--shadow);
  transition: all 0.3s ease;
}

.process-step:hover {
  box-shadow: var(--shadow-lg);
  transform: translateY(-5px);
  border-top: 4px solid var(--accent-blue);
}

.process-icon {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.process-step h3 {
  color: var(--primary-blue);
  font-size: 1.1rem;
  margin-bottom: 0.5rem;
}

.process-step p {
  font-size: 0.9rem;
  margin: 0;
}

.arrow {
  text-align: center;
  font-size: 1.5rem;
  color: var(--accent-blue);
  display: none;
}

/* CTA Section */
.cta-section {
  background: linear-gradient(135deg, var(--primary-blue) 0%, var(--secondary-blue) 100%);
  color: white;
  padding: 80px 0;
}

.cta-section h2 {
  color: white;
  margin-bottom: 1rem;
}

.cta-section p {
  color: rgba(255, 255, 255, 0.9);
  font-size: 1.2rem;
  margin-bottom: 2rem;
}

.cta-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

@media (max-width: 768px) {
  .page-hero {
    padding: 50px 0;
  }

  .filter-tabs {
    margin-bottom: 2rem;
  }

  .gallery-grid {
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 1rem;
  }

  .lightbox-container {
    grid-template-columns: 1fr;
  }

  .lightbox-info {
    padding: 2rem;
  }

  .process-flow {
    grid-template-columns: 1fr;
  }

  .arrow {
    display: none;
  }

  .cta-buttons {
    flex-direction: column;
  }

  .cta-buttons .btn {
    width: 100%;
  }
}
</style>
