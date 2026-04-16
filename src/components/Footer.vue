<template>
  <footer class="footer">
    <div class="container-lg">
      <div class="footer-content">
        <div class="footer-section">
          <h4 class="footer-title">Quick Links</h4>
          <nav class="footer-links">
            <RouterLink to="/">Home</RouterLink>
            <RouterLink to="/about">About Us</RouterLink>
            <RouterLink to="/products">Products</RouterLink>
            <RouterLink to="/gallery">Gallery</RouterLink>
            <RouterLink to="/contact">Contact Us</RouterLink>
          </nav>
        </div>

        <div class="footer-section">
          <h4 class="footer-title">Get In Touch</h4>
          <div class="contact-info">
            <div class="info-item">
              <span class="icon">📞</span>
              <a href="tel:+918460064395">+91 84600 64395</a>
            </div>
            <div class="info-item">
              <span class="icon">✉️</span>
              <a href="mailto:govindrecyclersandmetalloys@gmail.com">govindrecyclersandmetalloys@gmail.com</a>
            </div>
            <div class="info-item">
              <span class="icon">📍</span>
              <p>Govind Recyclers and Metalloys<br>Premium Metallurgical Facility</p>
            </div>
          </div>
        </div>

        <div class="footer-section">
          <h4 class="footer-title">Our Services</h4>
          <nav class="footer-links">
            <a href="#products">Aluminum Alloys</a>
            <a href="#products">ADC12 Alloy</a>
            <a href="#products">LM6 & LM12</a>
            <a href="#products">98.5% Aluminum</a>
          </nav>
        </div>

        <div class="footer-section">
          <h4 class="footer-title">About Us</h4>
          <p class="footer-desc">
            With over 20 years of industry expertise, we transform aluminum scrap into high-performance alloys for global industrial leaders. Excellence, integrity, and precision in every ingot.
          </p>
        </div>
      </div>

      <div class="footer-bottom">
        <div class="footer-divider"></div>
        <div class="footer-bottom-content flex-between">
          <p>&copy; 2026 Govind Recyclers and Metalloys. All rights reserved.</p>
          <div class="social-links">
            <a href="#" title="LinkedIn" class="social-link">in</a>
            <a href="#" title="Twitter" class="social-link">tw</a>
            <a href="#" title="Facebook" class="social-link">fb</a>
          </div>
        </div>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'Footer'
}
</script>

<style scoped>
.footer {
  background: linear-gradient(135deg, var(--primary-blue) 0%, var(--dark-grey) 100%);
  color: white;
  padding: 60px 0 20px;
  margin-top: 60px;
}

.footer-content {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 3rem;
  margin-bottom: 3rem;
}

.footer-section {
  padding: 0;
}

.footer-title {
  font-size: 1.2rem;
  margin-bottom: 1.5rem;
  color: white;
  font-weight: 700;
}

.footer-links {
  display: flex;
  flex-direction: column;
  gap: 0.8rem;
}

.footer-links a {
  color: rgba(255, 255, 255, 0.8);
  transition: all 0.3s ease;
  text-decoration: none;
}

.footer-links a:hover {
  color: white;
  padding-left: 0.5rem;
}

.contact-info {
  display: flex;
  flex-direction: column;
  gap: 1.2rem;
}

.info-item {
  display: flex;
  gap: 0.8rem;
  align-items: flex-start;
  color: rgba(255, 255, 255, 0.9);
}

.icon {
  font-size: 1.3rem;
  min-width: 1.5rem;
}

.info-item a {
  color: rgba(255, 255, 255, 0.9);
}

.info-item a:hover {
  color: white;
  text-decoration: underline;
}

.info-item p {
  color: rgba(255, 255, 255, 0.8);
  font-size: 0.95rem;
  margin: 0;
}

.footer-desc {
  color: rgba(255, 255, 255, 0.8);
  font-size: 0.95rem;
  line-height: 1.6;
}

.footer-divider {
  height: 1px;
  background: rgba(255, 255, 255, 0.1);
  margin-bottom: 2rem;
}

.footer-bottom-content {
  padding: 1.5rem 0;
}

.footer-bottom-content p {
  font-size: 0.9rem;
  color: rgba(255, 255, 255, 0.7);
  margin: 0;
}

.social-links {
  display: flex;
  gap: 1rem;
}

.social-link {
  width: 40px;
  height: 40px;
  display: flex-center;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 50%;
  color: white;
  font-weight: 600;
  text-decoration: none;
  transition: all 0.3s ease;
}

.social-link:hover {
  background: rgba(255, 255, 255, 0.2);
  transform: translateY(-3px);
}

@media (max-width: 768px) {
  .footer {
    padding: 40px 0 20px;
    margin-top: 40px;
  }

  .footer-content {
    gap: 2rem;
    margin-bottom: 2rem;
  }

  .footer-bottom-content {
    flex-direction: column;
    gap: 1rem;
    text-align: center;
  }

  .social-links {
    justify-content: center;
  }
}
</style>
