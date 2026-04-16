<template>
  <div class="home-page">
    <!-- Hero Section -->
    <section class="hero">
      <div class="hero-background">
        <img src="/WhatsApp Image 2026-04-12 at 7.21.40 AM.jpeg" alt="Molten Metal" class="hero-image">
        <div class="hero-overlay"></div>
      </div>
      <div class="container-lg hero-content">
        <h1 class="hero-title">GOVIND RECYCLERS AND METALLOYS</h1>
        <p class="hero-tagline">Where Metal Gets a Second Life</p>
        <div class="hero-buttons">
          <RouterLink to="/products" class="btn btn-primary">Explore Products</RouterLink>
          <RouterLink to="/contact" class="btn btn-secondary">Get In Touch</RouterLink>
        </div>
      </div>
    </section>

    <!-- Introduction Section -->
    <section class="section section-bg-white">
      <div class="container-lg">
        <div class="intro-content">
          <div class="intro-text">
            <h2>Excellence in Metallurgical Engineering</h2>
            <p class="intro-description">
              With over 20 years of industry-leading expertise, Govind Recyclers and Metalloys specializes in transforming aluminum scrap into high-performance aluminum alloys tailored for the world's most demanding industrial corporations. We bridge the gap between sustainability and precision, utilizing advanced chemical testing and rigorous quality control to ensure our alloys meet the highest global manufacturing standards.
            </p>
            <p class="intro-description">
              Committed to professional excellence, we provide our partners with a strategic advantage through market-leading rates, transparent logistics, and a reliable supply chain. At Govind Recyclers and Metalloys, we don't just recycle—we engineer the essential materials that power global industry with integrity and technical mastery.
            </p>
            <RouterLink to="/about" class="btn btn-primary mt-3">Learn More About Us</RouterLink>
          </div>
          <div class="intro-stats">
            <div class="stat-card">
              <h3 class="stat-number">20+</h3>
              <p class="stat-label">Years of Industry Expertise</p>
            </div>
            <div class="stat-card">
              <h3 class="stat-number">10,000</h3>
              <p class="stat-label">Tons Annual Capacity</p>
            </div>
            <div class="stat-card">
              <h3 class="stat-number">4</h3>
              <p class="stat-label">Premium Alloy Types</p>
            </div>
            <div class="stat-card">
              <h3 class="stat-number">100%</h3>
              <p class="stat-label">Quality Certified</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section class="section section-bg-light">
      <div class="container-lg">
        <h2 class="text-center mb-5">Why Choose Govind Metalloys?</h2>
        <div class="grid grid-3">
          <div class="feature-card">
            <div class="feature-icon">🔬</div>
            <h3>Advanced Precision</h3>
            <p>State-of-the-art chemical testing and quality control ensures every alloy meets global manufacturing standards.</p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">⚡</div>
            <h3>Industry Leadership</h3>
            <p>Over 20 years of proven expertise transforming aluminum scrap into high-performance alloys for global corporations.</p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">🌍</div>
            <h3>Sustainable Solutions</h3>
            <p>Bridging sustainability and precision engineering, we reduce waste while delivering superior metallurgical products.</p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">💼</div>
            <h3>Transparent Logistics</h3>
            <p>Market-leading rates with complete supply chain transparency, ensuring reliability for your business operations.</p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">✅</div>
            <h3>Quality Assurance</h3>
            <p>Every product undergoes rigorous testing to meet the highest global manufacturing and certification requirements.</p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">🤝</div>
            <h3>Strategic Partnerships</h3>
            <p>Dedicated support for your industrial needs with customized solutions tailored to specific manufacturing requirements.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="section cta-section">
      <div class="container-lg text-center">
        <h2 class="cta-title">Ready to Transform Your Manufacturing?</h2>
        <p class="cta-description">Partner with industry leaders in precision metallurgical engineering</p>
        <RouterLink to="/contact" class="btn btn-primary">Start Your Project Today</RouterLink>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Home'
}
</script>

<style scoped>
.home-page {
  flex: 1;
}

/* Hero Section */
.hero {
  position: relative;
  height: 100vh;
  min-height: 600px;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}

.hero-background {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}

.hero-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.hero-overlay {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
}

.hero-content {
  position: relative;
  z-index: 2;
  text-align: center;
  color: white;
}

.hero-title {
  font-size: 4rem;
  font-weight: 900;
  color: white;
  text-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
  margin-bottom: 1rem;
  letter-spacing: 2px;
  text-transform: uppercase;
}

.hero-tagline {
  font-size: 1.8rem;
  color: rgba(255, 255, 255, 0.95);
  margin-bottom: 2rem;
  text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
  font-weight: 300;
}

.hero-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

/* Introduction Section */
.intro-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
}

.intro-text h2 {
  color: var(--primary-blue);
  margin-bottom: 1.5rem;
}

.intro-description {
  font-size: 1.05rem;
  color: var(--text-light);
  line-height: 1.9;
  margin-bottom: 1.5rem;
}

.intro-stats {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.5rem;
}

.stat-card {
  background: linear-gradient(135deg, var(--light-blue), rgba(30, 136, 229, 0.05));
  padding: 30px;
  border-radius: 12px;
  text-align: center;
  border-left: 4px solid var(--accent-blue);
}

.stat-number {
  font-size: 2.5rem;
  font-weight: 800;
  color: var(--accent-blue);
  margin-bottom: 0.5rem;
}

.stat-label {
  color: var(--text-light);
  font-weight: 600;
  margin: 0;
}

/* Features Section */
.feature-card {
  background: white;
  padding: 2rem;
  border-radius: 12px;
  text-align: center;
  box-shadow: var(--shadow);
  transition: all 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-10px);
  box-shadow: var(--shadow-lg);
  border-top: 4px solid var(--accent-blue);
}

.feature-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.feature-card h3 {
  color: var(--primary-blue);
  margin-bottom: 1rem;
}

/* CTA Section */
.cta-section {
  background: linear-gradient(135deg, var(--primary-blue) 0%, var(--secondary-blue) 100%);
  color: white;
  text-align: center;
  padding: 80px 0;
}

.cta-title {
  color: white;
  margin-bottom: 1rem;
}

.cta-description {
  font-size: 1.3rem;
  color: rgba(255, 255, 255, 0.9);
  margin-bottom: 2rem;
}

@media (max-width: 768px) {
  .hero-title {
    font-size: 2.5rem;
    letter-spacing: 1px;
  }

  .hero-tagline {
    font-size: 1.3rem;
  }

  .hero-buttons {
    gap: 0.5rem;
  }

  .intro-content {
    grid-template-columns: 1fr;
    gap: 2rem;
  }

  .intro-stats {
    grid-template-columns: 1fr;
  }

  .feature-card h3 {
    font-size: 1.3rem;
  }

  .cta-section {
    padding: 50px 0;
  }

  .cta-title {
    font-size: 1.8rem;
  }
}
</style>
