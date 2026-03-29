class ProjectUtils {
  final String banners;
  final String name;
  final String image;
  final String color1;
  final String color2;
  final List<String> icons;
  final String titles;
  final String description;
  final String links;

  // New detailed fields
  final String subtitle;
  final String overview;
  final List<String> techStack;
  final List<String> features;
  final List<String> challenges;
  final List<String> learnings;
  final Map<String, String> cta;

  ProjectUtils({
    required this.banners,
    required this.name,
    required this.image,
    required this.color1,
    required this.color2,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
    required this.subtitle,
    required this.overview,
    required this.techStack,
    required this.features,
    required this.challenges,
    required this.learnings,
    required this.cta,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/crm.png',
    name: 'MyBusiness',
    image: 'assets/crmF.jpeg',
    color1: '',
    color2: '',
    icons: [
      'assets/imgs/flutter.png',
      'assets/imgs/nodejs.png',
      'assets/imgs/firebase.png'
    ],
    titles: 'CRM Management App',
    description:
        'A full-stack CRM application built with Flutter and Node.js that helps manage clients, tasks, and workflow efficiently with a modern UI.',
    links: 'https://wilou-crm.web.app',
    subtitle: 'Full-Stack CRM & Workflow Management System',
    overview: """
MyBusiness is a full-stack CRM application designed to streamline client management, task tracking. Built as my second major project, this application represents a significant leap in both technical depth and architectural thinking. It integrates a custom Node.js backend with a Flutter frontend, delivering a more structured, maintainable, and production-oriented solution. The project focuses on solving real-world business needs such as client organization, activity tracking, scheduling, and communication — all within a clean and responsive user experience.
""",
    techStack: [
      "Flutter",
      "Node.js",
      "MongoDB (Mongoose)",
      "Firebase (for activity tracking & experiments)",
      "Postman (API testing)"
    ],
    features: [
      "Secure authentication system (Google OAuth + OTP password recovery)",
      "Client management system with full CRUD operations",
      "Advanced scheduling system (Day / Week / Month views)",
      "Admin activity tracking (logs for add, update, delete, email, navigation)",
      "Email sending functionality directly from the app",
      "Analytics dashboard with line charts and pie charts",
      "Reusable widget system for consistent UI components",
      "Improved and scalable project structure"
    ],
    challenges: [
      "Designing and integrating a custom backend using Node.js and MongoDB",
      "Structuring APIs and handling data flow between frontend and backend",
      "Implementing secure authentication flows (OAuth and OTP)",
      "Building analytics visualizations without prior experience",
    ],
    learnings: [
      "Backend development with Node.js and MongoDB",
      "Designing and consuming REST APIs",
      "Testing and debugging APIs using Postman",
      "Building scalable Flutter architectures with reusable components",
      "Improving UI/UX design and consistency across the app",
    ],
    cta: {
      "live": "https://wilou-crm.web.app",
      "github": "https://github.com/Elwaliid/CRM"
    },
  ),
  ProjectUtils(
    banners: 'assets/imgs/hiky.png',
    name: 'Hiky',
    image: 'assets/hikyF.jpg',
    color1: '',
    color2: '',
    icons: ['assets/imgs/flutter.png'],
    titles: 'Hiky – Hiking Discovery App(in development)',
    description:
        'A Flutter mobile app that allows users to explore hiking locations, search trails, and discover nature destinations with a clean and intuitive interface.',
    links: 'https://hiky-wiky.web.app',
    subtitle: 'Social Platform for Hiking & Outdoor Exploration',
    overview: """
Hiky is a modern social platform designed for hiking enthusiasts to discover, share, and explore nature experiences through an interactive and visually immersive mobile application. Currently in development, this project represents a shift toward building scalable, feature-rich products with a strong focus on user experience, performance, and real-world usability. Unlike previous projects, Hiky emphasizes advanced UI/UX design, smooth animations, and deeper backend integration. The platform aims to combine social media dynamics with location-based discovery, enabling users to interact with content, explore trails on maps, and stay informed with real-time environmental data.
""",
    techStack: [
      "Flutter",
      "Node.js (Backend)",
      "REST APIs",
      "Google Maps API",
      "Weather API"
    ],
    features: [
      "Social feed with posts, likes, comments, and save functionality",
      "Reels-style content experience for immersive browsing",
      "Interactive map integration to explore posts by location",
      "Real-time weather data for user location and hiking spots",
      "Messaging system for user communication",
      "Modern UI with smooth animations and transitions",
      "Responsive and optimized design for multiple device sizes"
    ],
    challenges: [
      "Designing a scalable architecture for a social media platform",
      "Integrating multiple external APIs (Maps, Weather) efficiently",
      "Ensuring smooth animations without impacting performance",
      "Securing API calls and managing backend communication"
    ],
    learnings: [
      "Advanced UI/UX design and animation techniques in Flutter",
      "Working with external APIs and handling asynchronous data",
      "Improving backend integration and secure communication",
      "Designing systems with scalability and performance in mind",
      "Building a product with a long-term vision and roadmap"
    ],
    cta: {
      "live": "https://hiky-wiky.web.app",
      "github": "https://github.com/Elwaliid/Hiky"
    },
  ),
  ProjectUtils(
    banners: 'assets/imgs/gymfinder.png',
    name: 'GymFinder',
    image: 'assets/gymF.jpg',
    color1: '',
    color2: '',
    icons: ['assets/imgs/flutter.png', 'assets/imgs/firebase.png'],
    titles: 'GymFinder App',
    description:
        'A Flutter and Firebase mobile app that helps users discover gyms, view details, and save favorites with authentication and real-time database integration.',
    links: 'https://gyms-9788e.web.app',
    subtitle: 'Smart Gym Discovery & Booking App',
    overview: """
GymFinder is a mobile application built with Flutter and Firebase, designed to help users discover nearby gyms, explore details, and manage their fitness sessions. As my first full mobile application, this project marked the foundation of my journey in mobile development. It focuses on delivering a simple yet functional user experience while integrating real-world features like authentication, data management, and booking flows. The app reflects a hands-on approach to learning core development concepts, including UI composition, backend integration, and scalable project structure.
""",
    techStack: [
      "Flutter",
      "Firebase Authentication",
      "Cloud Firestore",
    ],
    features: [
      "User authentication with Firebase (sign up / login)",
      "Browse and explore gym listings",
      "Upload gym posts with images",
      "Admin approval system before posts go live",
      "Session booking system (e.g. selecting specific days)",
      "Real-time data handling using Firestore",
    ],
    challenges: [
      "Handling image uploads with Firebase Storage (resolved by storing image data via Firestore)",
      "Designing a scalable file structure for the first time",
      "Implementing admin approval logic without prior backend experience",
    ],
    learnings: [
      "Strong foundation in Flutter widgets and layout system",
      "Understanding of Firebase ecosystem (Auth, Firestore, Storage)",
      "CRUD operations and real-time data handling",
      "Structuring code using models and separated logic files",
    ],
    cta: {
      "live": "https://gyms-9788e.web.app",
      "github": "https://github.com/Elwaliid/gym-finder"
    },
  ),
  ProjectUtils(
    banners: 'assets/portfF.png',
    name: 'Portfolio',
    image: 'assets/portfF.png',
    color1: '',
    color2: '',
    icons: ['assets/imgs/flutter.png'],
    titles: 'Portfolio website',
    description:
        'My first fully deployed website built with Flutter, designed to showcase my projects, skills, and UI capabilities.',
    links: 'https://portfolio-50a83.web.app/',
    subtitle: 'Responsive Flutter Web Showcase & Interactive UI',
    overview: """
My first fully deployed website built with Flutter, designed to showcase my projects, skills, and UI capabilities. This project was focused on mastering responsive design across mobile, tablet, and desktop screens, achieved through a custom Responsive widget. I implemented advanced animations including fade, zoom, and floating effects to create a dynamic and engaging user experience. The website also incorporates an iframe-based mobile preview system, enabling visitors to interact with apps inside a realistic mobile frame. Through this project, I learned web deployment with Firebase, performance optimization for multiple devices, and polished my overall UI/UX skill set.
""",
    techStack: [
      "Flutter Web",
      "Firebase Hosting",
      "Custom Responsive System",
      "Advanced Animations (fade, zoom, floating)",
      "HTML & IFrame Integration for previews",
    ],
    features: [
      "Fully responsive design for desktop, tablet, and mobile",
      "Interactive animations for engaging UI",
      "Floating mobile preview for live app demos instead of new tab",
      "Optimized for cross-device performance",
      "Deployed and hosted on Firebase",
    ],
    challenges: [
      "Implementing a responsive layout that adapts seamlessly across devices",
      "Integrating advanced animations",
      "Creating a smooth iframe mobile preview within Flutter Web",
    ],
    learnings: [
      "Mastered Flutter Web and cross-device responsiveness",
      "Implemented iframe-based app previews for portfolio showcasing",
      "Learned deployment strategies with Firebase Hosting",
      "Improved overall design sense and UI consistency",
    ],
    cta: {"live": "https://portfolio-50a83.web.app", "github": ""},
  ),
];
