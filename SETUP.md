# Setup Guide - Govind Metalloys Website

## 📋 Quick Start (5 minutes)

### Step 1: Install Node.js
If you don't have Node.js installed:
1. Visit [nodejs.org](https://nodejs.org/)
2. Download LTS version
3. Run the installer and follow the prompts
4. Verify installation by opening Command Prompt and typing:
   ```
   node --version
   npm --version
   ```

### Step 2: Install Dependencies
1. Open Command Prompt
2. Navigate to the project folder:
   ```bash
   cd Desktop\PulpProject
   ```
3. Install all required packages:
   ```bash
   npm install
   ```
   Wait for this to complete (1-2 minutes)

### Step 3: Run the Website
```bash
npm run dev
```

The website will automatically open in your browser at `http://localhost:5173`

## 🛠️ Available Commands

```bash
# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## 📁 Project Structure

- **index.html** - Main page template
- **package.json** - Project dependencies configuration
- **vite.config.js** - Build tool configuration
- **src/** - Source code
  - **main.js** - Application entry point
  - **App.vue** - Root component
  - **components/** - Reusable components (Navigation, Footer)
  - **pages/** - Page components (Home, About, Products, Gallery, Contact)
  - **router/** - Vue Router configuration
  - **styles/** - Global CSS and variables
- **WhatsApp Image...** - Hero section background image

## 📱 Pages Overview

| Page | URL | Features |
|------|-----|----------|
| Home | `/` | Hero section, company intro, features, CTA |
| About Us | `/about` | Company history, mission, values, infrastructure |
| Products | `/products` | Alloy specifications, comparison table, quality info |
| Gallery | `/gallery` | Photo gallery with categories, lightbox view |
| Contact | `/contact` | Contact form, company info, FAQ section |

## 📧 Contact Form

The contact form:
- ✅ Validates all inputs
- ✅ Shows error messages for invalid data
- ✅ Successfully submits form data
- ✅ Displays success confirmation
- ✅ Stores submissions in browser storage
- ✅ Ready for backend integration

**Form Fields:**
- Full Name (required)
- Email (required)
- Phone (required)
- Company Name (required)
- Industry Sector (required)
- Subject (required)
- Message (required)
- Terms Agreement (required)

## 🎨 Customization Tips

### Change Company Name
Edit these files:
- `src/components/Navigation.vue` - Logo text
- `src/components/Footer.vue` - Footer branding
- `state/pages/Home.vue` - Hero section title
- `index.html` - Page title tag

### Update Contact Information
Edit `src/components/Footer.vue` and `src/pages/Contact.vue`:
- Phone number
- Email address
- Company address

### Add New Content
1. Edit content in the respective Vue page files
2. Changes are saved automatically in dev mode
3. Refresh browser to see updates

### Modify Colors
Edit `src/styles/global.css` - Look for the `:root` section:
```css
:root {
    --primary-blue: #003d7a;
    --secondary-blue: #0052a3;
    --accent-blue: #1e88e5;
    --dark-grey: #2c3e50;
    --medium-grey: #4a5f7f;
    --light-grey: #e8ecf1;
}
```

## 🚀 Deployment

### Option 1: Netlify (Easiest)
1. Push code to GitHub
2. Connect to [Netlify](https://netlify.com)
3. Set build command: `npm run build`
4. Deploy automatically

### Option 2: Vercel
1. Push code to GitHub
2. Connect to [Vercel](https://vercel.com)
3. Deploy automatically

### Option 3: Traditional Hosting
1. Run: `npm run build`
2. Upload `dist` folder to web hosting
3. Configure server for SPA (single-page application)

## 🔧 Troubleshooting

### Issue: Port 5173 Already in Use
**Solution:**
```bash
npm run dev -- --port 3000
```

### Issue: npm command not found
**Solution:** Node.js not installed correctly. Reinstall from nodejs.org

### Issue: Styles not loading
**Solution:** Clear browser cache (Ctrl+Shift+Delete) and refresh

### Issue: Images not showing
**Solution:** Check that image URLs are correct or use local images

## 📊 Browser DevTools

To check form submissions in browser:
1. Open DevTools (F12)
2. Go to Console tab
3. Type: `JSON.parse(localStorage.getItem('contactSubmissions'))`
4. Press Enter to see all submissions

## 🔐 Production Checklist

Before deploying to production:
- [ ] Update company contact information
- [ ] Replace hero image with your own
- [ ] Update product specifications
- [ ] Configure backend API for form submission
- [ ] Set up email service (EmailJS, SendGrid, etc.)
- [ ] Test all links and forms
- [ ] Optimize images
- [ ] Set up SSL certificate
- [ ] Enable GZIP compression
- [ ] Configure CDN

## 💡 Next Steps

1. **Customize Content**: Edit each page with your specific information
2. **Replace Images**: Add your own facility and product photos
3. **Set Up Email**: Configure email service for contact form
4. **Add Analytics**: Integrate Google Analytics
5. **Deploy**: Choose hosting platform and deploy

## 📞 Support

For technical help:
- Check the README.md file
- Review Vue.js documentation: vue.dev
- Check Vite documentation: vitejs.dev

## 🎯 Feature Checklist

- [x] Responsive design (mobile, tablet, desktop)
- [x] Multi-page navigation
- [x] Professional styling (grey & blue theme)
- [x] Contact form with validation
- [x] Photo gallery with filters
- [x] About us section
- [x] Product showcase
- [x] FAQ section
- [x] Footer with links
- [x] Smooth animations

## 📈 Performance Tips

1. **Optimize Images**: Compress before uploading
2. **Enable Caching**: Configure browser caching
3. **Use CDN**: For faster image delivery
4. **Minify Code**: Automatically done during build
5. **Lazy Load**: Images load as needed

---

**Happy building! 🚀**
