# Govind Recyclers and Metalloys - Professional Corporate Website

A modern, fully-functional Vue.js website for Govind Recyclers and Metalloys. This professional-grade website showcases our aluminum alloy manufacturing excellence with a premium design and comprehensive functionality.

## 🎨 Design Features

- **Modern Professional Design**: Clean, modern UI inspired by premium corporate websites ($5000+ level design philosophy)
- **Color Scheme**: Professional grey and blue theme with excellent contrast and readability
- **Responsive Design**: Fully responsive across all devices (mobile, tablet, desktop)
- **Performance Optimized**: Fast loading and smooth interactions
- **Professional Imagery**: High-quality product and facility showcase images

## 📄 Page Structure

### 1. **Home Page**
   - **Hero Section**: Industrial background with company branding
   - Inspiring tagline: "Where Metal Gets a Second Life"
   - Company overview and key statistics
   - Feature highlights showcasing competitive advantages
   - Call-to-action sections

### 2. **About Us Page**
   - Company history and journey since 2011
   - Mission and vision statements
   - Core values and company culture
   - Infrastructure overview
   - Trust and expertise highlights

### 3. **Products Page**
   - Comprehensive product catalog:
     - **ADC12 Alloy**: Die-casting applications
     - **LM6 Alloy**: Precision casting
     - **LM12 Alloy**: High-temperature applications
     - **98.5% Pure Aluminum**: Electrical and specialty applications
   - Detailed specifications for each alloy
   - Quality assurance and testing information
   - Product comparison table
   - Sustainability commitments

### 4. **Gallery Page**
   - Professional photo gallery with categories:
     - Facilities
     - Equipment
     - Products
     - Manufacturing Process
   - Interactive lightbox with image details
   - Filter functionality by category
   - Manufacturing process overview
   - Infrastructure showcase

### 5. **Contact Us Page**
   - **Fully Functional Contact Form** with:
     - Name, email, phone, company validation
     - Industry sector selection
     - Subject and detailed message input
     - Agreement confirmation
     - Form validation and error handling
     - Success confirmation
   - **Contact Information**:
     - Phone: +91 84600 64395
     - Email: govindrecyclersandmetalloys@gmail.com
   - FAQ section with 6 common questions
   - Quick response indicators

## 🚀 Getting Started

### Prerequisites
- Node.js (v14 or higher)
- npm or yarn

### Installation

1. **Navigate to the project directory**
   ```bash
   cd path/to/PulpProject
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start the development server**
   ```bash
   npm run dev
   ```
   The website will automatically open in your browser at `http://localhost:5173`

### Building for Production

```bash
npm run build
```

This creates a `dist` folder with optimized production files ready for deployment.

## 📱 Features

### ✨ Technical Features
- **Vue.js 3**: Latest Vue.js framework with composition API support
- **Vue Router**: Multi-page navigation
- **Responsive Grid System**: Custom CSS grid utilities
- **Form Validation**: Comprehensive client-side validation
- **Local Storage**: Contact form submissions saved locally for demonstration
- **Smooth Animations**: Professional transitions and hover effects
- **Accessibility**: Semantic HTML, proper ARIA labels, keyboard navigation

### 📧 Contact Form Features
The contact form includes:
- Full form validation with error messages
- Field requirements:
  - Name (minimum 2 characters)
  - Email (valid email format)
  - Phone (minimum 10 digits)
  - Company name
  - Industry selection
  - Subject line
  - Detailed message (minimum 10 characters)
  - Terms agreement checkbox
- Success confirmation with submission details
- Data stored in localStorage for demonstration
- Ready integration with backend email services

### 🎯 Navigation
- **Sticky Navigation Bar**: Always accessible header with logo and links
- **Mobile Menu**: Responsive hamburger menu for mobile devices
- **Footer**: Comprehensive footer with quick links, contact info, and social media

## 🎨 Customization

### Updating Company Information
Edit footer and contact information in:
- `src/components/Footer.vue`
- `src/pages/Contact.vue`

### Changing Colors
Modify the color variables in `src/styles/global.css`:
```css
:root {
    --primary-blue: #003d7a;
    --secondary-blue: #0052a3;
    --accent-blue: #1e88e5;
    --dark-grey: #2c3e50;
    /* ... more colors */
}
```

### Adding New Products
Edit the products array in `src/pages/Products.vue`

### Updating Images
Replace image URLs with your own. Currently using Unsplash API for demonstration.

## 📊 Form Submission Storage

Contact form submissions are stored in:
- **Browser localStorage**: `contactSubmissions` key
- **View submissions**: Open browser DevTools → Application → Local Storage

Example to retrieve submissions in console:
```javascript
JSON.parse(localStorage.getItem('contactSubmissions'))
```

## 🔧 Integration Guide

### Backend API Integration
To connect to a backend service, update the `submitForm` method in `src/pages/Contact.vue`:

```javascript
// Replace the axios call with your API endpoint
const response = await axios.post('YOUR_API_ENDPOINT', formData)
```

### Email Service Integration
For sending emails, integrate services like:
- **EmailJS**: No-code solution
- **SendGrid**: Scalable email service
- **AWS SES**: AWS email service
- **Custom API**: Your own backend

## 📈 SEO & Performance

- Semantic HTML structure
- Mobile-first responsive design
- Fast load times with optimized assets
- Meta tags for social sharing
- Structured data ready

## 🔒 Security Notes

- Form inputs are validated client-side
- Implement server-side validation for production
- Never expose sensitive information in frontend code
- Use HTTPS in production
- Implement CSRF protection for forms

## 📱 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 📝 File Structure

```
PulpProject/
├── index.html              # Main HTML entry point
├── package.json            # Project dependencies
├── vite.config.js          # Vite configuration
├── src/
│   ├── main.js             # Vue app bootstrap
│   ├── App.vue             # Root component
│   ├── components/
│   │   ├── Navigation.vue   # Header/Navigation
│   │   └── Footer.vue       # Footer component
│   ├── pages/
│   │   ├── Home.vue         # Home page
│   │   ├── About.vue        # About us page
│   │   ├── Products.vue     # Products showcase
│   │   ├── Gallery.vue      # Photo gallery
│   │   └── Contact.vue      # Contact form
│   ├── router/
│   │   └── index.js         # Vue Router configuration
│   └── styles/
│       └── global.css       # Global styles & variables
├── WhatsApp Image...        # Hero section image
├── .gitignore              # Git ignore file
└── README.md               # This file
```

## 🚀 Deployment

### Deploy to Netlify
1. Push code to GitHub
2. Connect repository to Netlify
3. Set build command: `npm run build`
4. Set publish directory: `dist`

### Deploy to Vercel
1. Push code to GitHub
2. Connect repository to Vercel
3. Vercel auto-detects Vue.js and configures automatically

### Deploy to Traditional Hosting
1. Run `npm run build`
2. Upload `dist` folder contents to your web server
3. Configure your server to route all requests to `index.html`

## 📞 Support

For technical support or customization needs:
- **Phone**: +91 84600 64395
- **Email**: govindrecyclersandmetalloys@gmail.com

## 📜 License

This website is proprietary to Govind Recyclers and Metalloys.

## ✨ Features Checklist

- ✅ Responsive Design (Mobile-first)
- ✅ Multi-page Navigation
- ✅ Professional Hero Section
- ✅ Product Showcase with Specs
- ✅ Interactive Gallery with Lightbox
- ✅ Fully Functional Contact Form with Validation
- ✅ About Us with Company Story
- ✅ FAQ Section
- ✅ Professional Styling (Grey & Blue Theme)
- ✅ Modern Animations & Transitions
- ✅ Form Data Storage
- ✅ Premium Design Quality
- ✅ SEO Optimized
- ✅ Fast Performance
- ✅ Cross-browser Compatible

---

**Developed with ❤️ for Govind Recyclers and Metalloys**
