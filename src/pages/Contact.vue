<template>
  <div class="contact-page">
    <!-- Page Hero -->
    <section class="page-hero">
      <div class="container-lg">
        <h1>Get In Touch</h1>
        <p>We're Here to Support Your Industrial Manufacturing Needs</p>
      </div>
    </section>

    <!-- Contact Information -->
    <section class="section section-bg-white">
      <div class="container-lg">
        <div class="grid grid-3">
          <div class="contact-info-card">
            <div class="info-icon">📞</div>
            <h3>phone</h3>
            <p>
              <a href="tel:+918460064395">+91 84600 64395</a>
            </p>
            <p class="info-subtitle">Available Monday - Friday, 9 AM - 6 PM IST</p>
          </div>

          <div class="contact-info-card">
            <div class="info-icon">✉️</div>
            <h3>Email</h3>
            <p>
              <a href="mailto:govindrecyclersandmetalloys@gmail.com">govindrecyclersandmetalloys@gmail.com</a>
            </p>
            <p class="info-subtitle">We respond within 24 hours</p>
          </div>

          <div class="contact-info-card">
            <div class="info-icon">📍</div>
            <h3>Location</h3>
            <p>
              Govind Recyclers and Metalloys<br>
              Premium Metallurgical Facility
            </p>
            <p class="info-subtitle">India</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Form Section -->
    <section class="section section-bg-light">
      <div class="container-lg">
        <div class="form-container">
          <div class="form-header">
            <h2>Send us a Message</h2>
            <p>Fill out the form below and we'll get back to you as soon as possible</p>
          </div>

          <form @submit.prevent="submitForm" class="contact-form" v-if="!formSubmitted">
            <div class="form-row">
              <div class="form-group">
                <label for="name">Full Name *</label>
                <input
                  v-model="form.name"
                  type="text"
                  id="name"
                  placeholder="Your Full Name"
                  required
                >
                <span v-if="errors.name" class="error-message">{{ errors.name }}</span>
              </div>

              <div class="form-group">
                <label for="email">Email Address *</label>
                <input
                  v-model="form.email"
                  type="email"
                  id="email"
                  placeholder="your.email@company.com"
                  required
                >
                <span v-if="errors.email" class="error-message">{{ errors.email }}</span>
              </div>
            </div>

            <div class="form-row">
              <div class="form-group">
                <label for="phone">Phone Number *</label>
                <input
                  v-model="form.phone"
                  type="tel"
                  id="phone"
                  placeholder="+91 XXXXX XXXXX"
                  required
                >
                <span v-if="errors.phone" class="error-message">{{ errors.phone }}</span>
              </div>

              <div class="form-group">
                <label for="company">Company Name *</label>
                <input
                  v-model="form.company"
                  type="text"
                  id="company"
                  placeholder="Your Company Name"
                  required
                >
                <span v-if="errors.company" class="error-message">{{ errors.company }}</span>
              </div>
            </div>

            <div class="form-row">
              <div class="form-group">
                <label for="industry">Industry/Sector *</label>
                <select v-model="form.industry" id="industry" required>
                  <option value="">Select Industry</option>
                  <option value="Automotive">Automotive</option>
                  <option value="Aerospace">Aerospace</option>
                  <option value="Electrical">Electrical & Electronics</option>
                  <option value="Energy">Energy & Power</option>
                  <option value="Machinery">Machinery & Equipment</option>
                  <option value="Other">Other</option>
                </select>
                <span v-if="errors.industry" class="error-message">{{ errors.industry }}</span>
              </div>

              <div class="form-group">
                <label for="subject">Subject *</label>
                <input
                  v-model="form.subject"
                  type="text"
                  id="subject"
                  placeholder="What is this regarding?"
                  required
                >
                <span v-if="errors.subject" class="error-message">{{ errors.subject }}</span>
              </div>
            </div>

            <div class="form-group full-width">
              <label for="message">Message *</label>
              <textarea
                v-model="form.message"
                id="message"
                placeholder="Tell us about your requirements, project details, or any questions you have..."
                rows="6"
                required
              ></textarea>
              <span v-if="errors.message" class="error-message">{{ errors.message }}</span>
            </div>

            <div class="form-group full-width">
              <label class="checkbox-label">
                <input
                  v-model="form.agreeTerms"
                  type="checkbox"
                  required
                >
                <span>I agree to be contacted and share my information with Govind Metalloys</span>
              </label>
              <span v-if="errors.agreeTerms" class="error-message">{{ errors.agreeTerms }}</span>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn btn-primary submit-btn" :disabled="isSubmitting">
                {{ isSubmitting ? 'Sending...' : 'Send Message' }}
              </button>
              <p class="form-note">We respect your privacy. Your data is secure with us.</p>
            </div>
          </form>

          <!-- Success Message -->
          <div v-if="formSubmitted" class="success-message">
            <div class="success-icon">✓</div>
            <h3>Thank You!</h3>
            <p>Your message has been received successfully.</p>
            <p class="success-detail">
              We've received your inquiry and our team will contact you within 24 hours at the provided phone number or email address.
            </p>
            <button @click="resetForm" class="btn btn-primary mt-4">Send Another Message</button>
          </div>
        </div>
      </div>
    </section>

    <!-- Map & Additional Info -->
    <section class="section section-bg-white">
      <div class="container-lg">
        <h2 class="text-center mb-5">Why Choose Us</h2>
        <div class="grid grid-3">
          <div class="feature-box">
            <div class="feature-icon">⚡</div>
            <h3>Fast Response</h3>
            <p>We respond to all inquiries within 24 hours, ensuring your questions are addressed promptly.</p>
          </div>
          <div class="feature-box">
            <div class="feature-icon">💼</div>
            <h3>Expert Support</h3>
            <p>Our technical team has 20+ years of metallurgical expertise to support your needs.</p>
          </div>
          <div class="feature-box">
            <div class="feature-icon">🌍</div>
            <h3>Global Reach</h3>
            <p>We serve industrial corporations worldwide with reliable shipping and logistics support.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- FAQ Section -->
    <section class="section section-bg-light">
      <div class="container-lg">
        <h2 class="text-center mb-5">Frequently Asked Questions</h2>
        <div class="faq-container">
          <div v-for="(faq, index) in faqs" :key="index" class="faq-item">
            <button @click="toggleFaq(index)" class="faq-question">
              <span>{{ faq.question }}</span>
              <span class="faq-icon" :class="{ active: faq.open }">+</span>
            </button>
            <div v-show="faq.open" class="faq-answer">
              <p>{{ faq.answer }}</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA -->
    <section class="section cta-section">
      <div class="container-lg text-center">
        <h2>Ready to Partner With Us?</h2>
        <p>Let's discuss how we can support your industrial manufacturing requirements</p>
        <a href="tel:+918460064395" class="btn btn-primary">Call Us Today</a>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'Contact',
  data() {
    return {
      form: {
        name: '',
        email: '',
        phone: '',
        company: '',
        industry: '',
        subject: '',
        message: '',
        agreeTerms: false
      },
      errors: {},
      isSubmitting: false,
      formSubmitted: false,
      faqs: [
        {
          question: 'What is the minimum order quantity?',
          answer: 'We handle orders of various sizes starting from small batches to large industrial quantities. Contact our sales team for specific requirements.',
          open: false
        },
        {
          question: 'Do you offer custom alloy compositions?',
          answer: 'Yes, we can work with you to develop custom alloy compositions tailored to your specific manufacturing requirements.',
          open: false
        },
        {
          question: 'What are your quality certifications?',
          answer: 'Our facilities are ISO-certified and all products undergo rigorous testing with complete mill certificates provided.',
          open: false
        },
        {
          question: 'How long does delivery typically take?',
          answer: 'Delivery timeframes depend on order size and destination. Typically 2-4 weeks for standard orders. Expedited shipping available.',
          open: false
        },
        {
          question: 'Do you provide technical support?',
          answer: 'Absolutely! Our technical team provides comprehensive support including specifications, processing guidance, and troubleshooting.',
          open: false
        },
        {
          question: 'What payment methods do you accept?',
          answer: 'We accept bank transfers, letters of credit, and other standard industrial payment methods. Terms available for established customers.'
        }
      ]
    }
  },
  methods: {
    validateForm() {
      this.errors = {}
      let isValid = true

      if (!this.form.name || this.form.name.trim().length < 2) {
        this.errors.name = 'Please enter a valid name'
        isValid = false
      }

      if (!this.form.email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(this.form.email)) {
        this.errors.email = 'Please enter a valid email address'
        isValid = false
      }

      if (!this.form.phone || this.form.phone.trim().length < 10) {
        this.errors.phone = 'Please enter a valid phone number'
        isValid = false
      }

      if (!this.form.company || this.form.company.trim().length < 2) {
        this.errors.company = 'Please enter company name'
        isValid = false
      }

      if (!this.form.industry) {
        this.errors.industry = 'Please select an industry'
        isValid = false
      }

      if (!this.form.subject || this.form.subject.trim().length < 3) {
        this.errors.subject = 'Please enter a subject'
        isValid = false
      }

      if (!this.form.message || this.form.message.trim().length < 10) {
        this.errors.message = 'Please enter a message (at least 10 characters)'
        isValid = false
      }

      if (!this.form.agreeTerms) {
        this.errors.agreeTerms = 'You must agree to be contacted'
        isValid = false
      }

      return isValid
    },
    async submitForm() {
      if (!this.validateForm()) {
        return
      }

      this.isSubmitting = true

      try {
        // Prepare the data
        const formData = {
          timestamp: new Date().toISOString(),
          ...this.form
        }

        // Log the submission (in a real app, this would send to a backend)
        console.log('Form Submitted:', formData)

        // Store in localStorage for demonstration
        const submissions = JSON.parse(localStorage.getItem('contactSubmissions') || '[]')
        submissions.push(formData)
        localStorage.setItem('contactSubmissions', JSON.stringify(submissions))

        // Simulate API call delay
        await new Promise(resolve => setTimeout(resolve, 1000))

        // Show success message
        this.formSubmitted = true

        // Optional: Send email via EmailJS or similar service
        // In production, you would integrate with a backend service
        console.log('Contact form submission successful')

      } catch (error) {
        console.error('Form submission error:', error)
        this.errors.general = 'An error occurred. Please try again.'
      } finally {
        this.isSubmitting = false
      }
    },
    resetForm() {
      this.form = {
        name: '',
        email: '',
        phone: '',
        company: '',
        industry: '',
        subject: '',
        message: '',
        agreeTerms: false
      }
      this.errors = {}
      this.formSubmitted = false
    },
    toggleFaq(index) {
      this.faqs[index].open = !this.faqs[index].open
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

/* Contact Info Cards */
.contact-info-card {
  background: white;
  padding: 40px;
  border-radius: 12px;
  text-align: center;
  box-shadow: var(--shadow);
  transition: all 0.3s ease;
}

.contact-info-card:hover {
  box-shadow: var(--shadow-lg);
  transform: translateY(-10px);
}

.info-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.contact-info-card h3 {
  color: var(--primary-blue);
  margin-bottom: 1rem;
  text-transform: uppercase;
  font-size: 1rem;
}

.contact-info-card p {
  margin-bottom: 0.5rem;
}

.contact-info-card a {
  color: var(--accent-blue);
  font-weight: 600;
}

.info-subtitle {
  font-size: 0.9rem;
  color: var(--text-light);
  margin-top: 0.5rem;
}

/* Form Container */
.form-container {
  background: white;
  padding: 50px;
  border-radius: 12px;
  box-shadow: var(--shadow);
  max-width: 900px;
  margin: 0 auto;
}

.form-header {
  text-align: center;
  margin-bottom: 3rem;
}

.form-header h2 {
  color: var(--primary-blue);
  margin-bottom: 0.5rem;
}

.form-header p {
  color: var(--text-light);
  font-size: 1.1rem;
}

/* Form Elements */
.contact-form {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.form-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 2rem;
}

.form-group {
  display: flex;
  flex-direction: column;
}

.form-group.full-width {
  grid-column: 1 / -1;
}

label {
  font-weight: 600;
  color: var(--text-dark);
  margin-bottom: 0.5rem;
  font-size: 0.95rem;
}

input[type="text"],
input[type="email"],
input[type="tel"],
select,
textarea {
  padding: 12px 16px;
  border: 1px solid var(--border-color);
  border-radius: 8px;
  font-family: inherit;
  font-size: 1rem;
  transition: all 0.3s ease;
  background: white;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="tel"]:focus,
select:focus,
textarea:focus {
  outline: none;
  border-color: var(--accent-blue);
  box-shadow: 0 0 0 3px rgba(30, 136, 229, 0.1);
}

textarea {
  resize: vertical;
  font-family: 'Segoe UI', sans-serif;
}

select {
  cursor: pointer;
}

/* Checkbox */
.checkbox-label {
  display: flex;
  align-items: center;
  gap: 0.8rem;
  font-weight: 500;
  cursor: pointer;
  margin-top: 0;
}

.checkbox-label span {
  font-size: 0.95rem;
}

input[type="checkbox"] {
  width: 18px;
  height: 18px;
  cursor: pointer;
  accent-color: var(--accent-blue);
}

/* Error Message */
.error-message {
  color: #e74c3c;
  font-size: 0.85rem;
  margin-top: 0.3rem;
}

/* Form Actions */
.form-actions {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
  margin-top: 1rem;
}

.submit-btn {
  width: 100%;
  max-width: 300px;
  padding: 14px 30px;
  font-size: 1.05rem;
}

.submit-btn:disabled {
  opacity: 0.6;
  cursor: not-allowed;
}

.form-note {
  font-size: 0.9rem;
  color: var(--text-light);
  text-align: center;
  margin: 0;
}

/* Success Message */
.success-message {
  text-align: center;
  padding: 4rem 2rem;
}

.success-icon {
  width: 80px;
  height: 80px;
  background: linear-gradient(135deg, var(--accent-blue), var(--primary-blue));
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-size: 3rem;
  margin: 0 auto 2rem;
}

.success-message h3 {
  color: var(--primary-blue);
  font-size: 2rem;
  margin-bottom: 1rem;
}

.success-message p {
  color: var(--text-light);
  max-width: 500px;
  margin: 0 auto 1rem;
}

.success-detail {
  font-size: 1rem;
  line-height: 1.7;
}

/* Feature Boxes */
.feature-box {
  background: white;
  padding: 30px;
  border-radius: 12px;
  text-align: center;
  box-shadow: var(--shadow);
  transition: all 0.3s ease;
}

.feature-box:hover {
  transform: translateY(-10px);
  box-shadow: var(--shadow-lg);
}

.feature-icon {
  font-size: 2.5rem;
  margin-bottom: 1rem;
}

.feature-box h3 {
  color: var(--primary-blue);
  margin-bottom: 1rem;
}

/* FAQ */
.faq-container {
  max-width: 700px;
  margin: 0 auto;
}

.faq-item {
  background: white;
  border-radius: 12px;
  margin-bottom: 1rem;
  overflow: hidden;
  box-shadow: var(--shadow);
  transition: all 0.3s ease;
}

.faq-item:hover {
  box-shadow: var(--shadow-lg);
}

.faq-question {
  width: 100%;
  padding: 1.5rem;
  background: white;
  border: none;
  text-align: left;
  cursor: pointer;
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-weight: 600;
  color: var(--text-dark);
  font-size: 1.05rem;
  transition: all 0.3s ease;
}

.faq-question:hover {
  background: var(--light-blue);
  color: var(--accent-blue);
}

.faq-icon {
  font-size: 1.5rem;
  color: var(--accent-blue);
  transition: transform 0.3s ease;
}

.faq-icon.active {
  transform: rotate(45deg);
}

.faq-answer {
  padding: 0 1.5rem 1.5rem;
  color: var(--text-light);
  line-height: 1.7;
  background: var(--light-blue);
  animation: slideDown 0.3s ease;
}

@keyframes slideDown {
  from {
    opacity: 0;
    max-height: 0;
  }
  to {
    opacity: 1;
    max-height: 500px;
  }
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

@media (max-width: 768px) {
  .page-hero {
    padding: 50px 0;
  }

  .form-container {
    padding: 30px;
  }

  .form-row {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }

  .submit-btn {
    max-width: 100%;
  }

  .contact-info-card {
    padding: 25px;
  }

  .faq-question {
    font-size: 1rem;
    padding: 1rem;
  }

  .faq-answer {
    padding: 0 1rem 1rem;
  }
}
</style>
