# Go Deeper Podcast Website 🎙️

A static website for the Go Deeper Podcast, built with HTML, CSS, and JavaScript. The website is hosted on GitHub Pages and features a responsive design, dynamic episode loading, and embedded YouTube videos.

## 📋 Features

- 🎨 Modern and responsive design
- 📱 Mobile-friendly interface
- 🎵 Dynamic episode loading from JSON
- 📺 YouTube video integration
- 🔗 Social media links
- 📄 About section
- 🎯 Fixed navigation header
- 🖼️ Hero section with background image
- 📱 Grid layout for episodes
- ✨ Hover effects and animations

## 🛠️ Technologies Used

- HTML5
- CSS3
- JavaScript (ES6+)
- GitHub Pages
- Font Awesome Icons
- JSON for data management

📁 Project Structure
GoDeeper_Podcast/
├── index.html          # Main HTML file
├── style.css          # Stylesheet
├── script.js          # JavaScript functionality
├── README.md          # Project documentation
└── data/
    └── iframe.json    # Episode data

    📝 Usage
Adding New Episodes
* Open data/iframe.json
* Add a new episode object following this 
```
format:
{
    "title": "Episode Title",
    "description": "Episode Description",
    "iframe": "YouTube Embed Code"
}
```
Customization
* Update colors in style.css
* Modify content in index.html
* Add your social media links
* Change the hero background image
* Update the About section content

🤝 Contributing
* Fork the repository
* Create your feature branch (git checkout -b feature/AmazingFeature)
* Commit your changes (git commit -m 'Add some AmazingFeature')
* Push to the branch (git push origin feature/AmazingFeature)
* Open a Pull Request

👥 Authors
[Pule Mathikha](https://theekingza.github.io/Portfolio)

🙏 Acknowledgments
Font Awesome for icons
Unsplash for the hero background image
YouTube for video embedding capabilities