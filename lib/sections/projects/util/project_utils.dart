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

List<ProjectUtils> getProjectUtils(String langCode) => [
  //////////////////////////////////////////////////////////////////////////////////////////////
  ProjectUtils(
    banners: 'assets/imgs/jawwi.png',
    name: 'Jawwek',
    image: '',
    color1: '',
    color2: '',
    icons: [
      'assets/imgs/flutter.png',
    ],
    titles: langCode == 'fr' ? 'Jawwek - Application Météo Algérienne' : 'Jawwek - Algerian Weather App',
    description: langCode == 'fr'
        ? 'Une application météo Flutter magnifiquement animée pour l\'Algérie avec des prévisions en temps réel, localisation GPS automatique, arrière-plans jour/nuit et vue calendrier.'
        : 'A beautifully animated Flutter weather app for Algeria with real-time forecasts, automatic GPS localization, day/night backgrounds, and a full calendar view.',
    links: 'https://jawwi-9c64a.web.app/',
    subtitle: langCode == 'fr' ? 'Application Météo Animée avec Flutter pour l\'Algérie' : 'Animated Flutter Weather App for Algeria',
    overview: langCode == 'fr' 
        ? "Jawwi est une application météo Flutter conçue spécifiquement pour les villes algériennes, fournissant des données météorologiques en temps réel via une interface richement animée. L'application récupère les prévisions en direct de l'API Open-Meteo et les mappe sur une interface personnalisée comprenant des cartes 'glassmorphism', des arrière-plans dégradés jour/nuit animés, et bien plus encore."
        : "Jawwi is a Flutter weather application built specifically for Algerian cities, delivering real-time weather data through a visually rich and animated interface. The app fetches live forecasts from the Open-Meteo API and maps them to a fully custom UI featuring glassmorphism cards, animated day/night gradient backgrounds, a star field animation, and Lottie splash sequences. Users can automatically detect their location via GPS (with smart permission handling and reverse-geocoding) or search any Algerian commune/wilaya to instantly get current conditions, hourly forecasts, a 14-day weekly breakdown, and a full calendar view. The project represents a strong focus on UI polish, clean data flow, native hardware integrations, and is accompanied by a custom-built, animated web landing page.",

    techStack: [
      "Flutter",
      "Provider (state management)",
      "Open-Meteo API",
      "Lottie (animations)",
      "HTML/CSS/JS (Web Landing Page)",
    ],
    features: langCode == 'fr' ? [
      "Vérification automatique des versions dans l'application avec boîte de dialogue personnalisée",
      "Vue calendrier complète associant les données météo quotidiennes à une grille mensuelle",
      "Mise en cache intelligente hors ligne des prévisions sur 14 jours",
      "Écran de démarrage professionnel avec animation Lottie",
      "Page d'atterrissage web reflétant l'esthétique dynamique de l'application",
    ] : [
      "Automated in-app version checking with a custom update dialog to seamlessly distribute new releases."
          "Full calendar view matching daily weather data to a month grid",
      "Smart offline caching of 14-day weather forecasts for faster load times and offline availability",
      "Professional splash screen with layered Lottie logo animation",
      "web landing page mirroring the app's dynamic aesthetic for APK downloads",
    ],
    challenges: langCode == 'fr' ? [
      "Coordination de plusieurs AnimationControllers",
      "Mise en œuvre d'une gestion d'état centralisée avec Provider",
      "Création de mises en page flexibles et adaptatives",
      "Conception d'un pipeline de données efficace pour gérer la synchronisation"
    ] : [
      "Coordinating multiple AnimationControllers for layered splash animations",
      "Implementing centralized state management using Provider to prevent redundant data fetching and ensure a single source of truth across the app.",
      "Implementing flexible, adaptive layouts to guarantee responsiveness across a wide range of mobile devices.",
      "Designing an efficient data pipeline to handle complex synchronization, strategic offline caching, and the precise execution order of multiple data fetches."
    ],
    learnings: langCode == 'fr' ? [
      "Intégration et mappage de réponses d'API REST",
      "Structuration d'une application Flutter avec séparation claire des couches",
      "Gestion des cas limites dans la logique UI basée sur le temps",
      "Gestion des services de localisation et mise en cache via SharedPreferences",
      "Publication de l'application et notifications de mises à jour"
    ] : [
      "Integrating and mapping third-party REST API responses into typed Dart models",
      "Structuring a Flutter app with a clear separation between data, state, and UI layers",
      "Handling edge cases in time-based UI logic (api data, cashed data expiration while offline,Date rollover handling)",
      "Handling device location services, permission lifecycles, and smart data caching via SharedPreferences.",
      "Releasing the app for public download and implementing in-app notifications for new updates."
    ],
    cta: {
      "live": "https://elwaliid.github.io/jawwi-landing/",
      "github": "https://github.com/Elwaliid/jawwi"
    },
  ),
  ///////////////////////////////////////////////////////////////////////////////////////////////
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
    titles: langCode == 'fr' ? 'Application de gestion CRM' : 'CRM Management App',
    description: langCode == 'fr'
        ? 'Une application CRM full-stack avec Flutter et Node.js pour gérer efficacement les clients, les tâches et le flux de travail avec une interface moderne.'
        : 'A full-stack CRM application built with Flutter and Node.js that helps manage clients, tasks, and workflow efficiently with a modern UI.',
    links: 'https://wilou-crm.web.app',
    subtitle: langCode == 'fr' ? 'Système complet de gestion CRM et Workflow' : 'Full-Stack CRM & Workflow Management System',
    overview: langCode == 'fr'
        ? "MyBusiness est une application CRM full-stack conçue pour simplifier la gestion des clients et le suivi des tâches. C'est mon deuxième projet majeur."
        : "MyBusiness is a full-stack CRM application designed to streamline client management, task tracking. Built as my second major project, this application represents a significant leap in both technical depth and architectural thinking. It integrates a custom Node.js backend with a Flutter frontend, delivering a more structured, maintainable, and production-oriented solution. The project focuses on solving real-world business needs such as client organization, activity tracking, scheduling, and communication — all within a clean and responsive user experience.",
    techStack: [
      "Flutter",
      "Node.js",
      "MongoDB (Mongoose)",
      "Firebase (for activity tracking & experiments)",
      "Postman (API testing)"
    ],
    features: langCode == 'fr' ? [
      "Système d'authentification sécurisé",
      "Système de gestion de clients (CRUD)",
      "Système de planification avancé",
      "Suivi de l'activité administrateur",
      "Envoi d'e-mails directement depuis l'application",
      "Tableau de bord analytique",
      "Système de widgets réutilisables",
      "Structure de projet évolutive"
    ] : [
      "Secure authentication system (Google OAuth + OTP password recovery)",
      "Client management system with full CRUD operations",
      "Advanced scheduling system (Day / Week / Month views)",
      "Admin activity tracking (logs for add, update, delete, email, navigation)",
      "Email sending functionality directly from the app",
      "Analytics dashboard with line charts and pie charts",
      "Reusable widget system for consistent UI components",
      "Improved and scalable project structure"
    ],
    challenges: langCode == 'fr' ? [
      "Conception et intégration d'un backend Node.js personnalisé",
      "Structuration des APIs",
      "Mise en œuvre des flux d'authentification (OAuth et OTP)",
      "Création de visualisations analytiques",
    ] : [
      "Designing and integrating a custom backend using Node.js and MongoDB",
      "Structuring APIs and handling data flow between frontend and backend",
      "Implementing secure authentication flows (OAuth and OTP)",
      "Building analytics visualizations without prior experience",
    ],
    learnings: langCode == 'fr' ? [
      "Développement Backend avec Node.js et MongoDB",
      "Conception et consommation d'APIs REST",
      "Tests et débogage d'APIs avec Postman",
      "Création d'architectures Flutter évolutives",
      "Amélioration de l'UI/UX",
    ] : [
      "Backend development with Node.js and MongoDB",
      "Designing and consuming REST APIs",
      "Testing and debugging APIs using Postman",
      "Building scalable Flutter architectures with reusable components",
      "Improving UI/UX design and consistency across the app",
    ],
    cta: {"live": "", "github": "https://github.com/Elwaliid/CRM"},
  ),
  ProjectUtils(
    banners: 'assets/imgs/hiky.png',
    name: 'Hiky',
    image: 'assets/hikyF.jpg',
    color1: '',
    color2: '',
    icons: ['assets/imgs/flutter.png'],
    titles: langCode == 'fr' ? 'Hiky – App de Découverte de Randonnée' : 'Hiky – Hiking Discovery App(in development)',
    description: langCode == 'fr'
        ? 'Application mobile permettant d\'explorer des lieux de randonnée, chercher des sentiers et découvrir des destinations naturelles.'
        : 'A Flutter mobile app that allows users to explore hiking locations, search trails, and discover nature destinations with a clean and intuitive interface.',
    links: 'https://hiky-wiky.web.app',
    subtitle: langCode == 'fr' ? 'Plateforme sociale pour l\'exploration en plein air' : 'Social Platform for Hiking & Outdoor Exploration',
    overview: langCode == 'fr'
        ? "Hiky est une plateforme sociale moderne pour les amateurs de randonnée, conçue pour découvrir, partager et explorer des expériences en pleine nature."
        : "Hiky is a modern social platform designed for hiking enthusiasts to discover, share, and explore nature experiences through an interactive and visually immersive mobile application. Currently in development, this project represents a shift toward building scalable, feature-rich products with a strong focus on user experience, performance, and real-world usability. Unlike previous projects, Hiky emphasizes advanced UI/UX design, smooth animations, and deeper backend integration. The platform aims to combine social media dynamics with location-based discovery, enabling users to interact with content, explore trails on maps, and stay informed with real-time environmental data.",
    techStack: [
      "Flutter",
      "Node.js (Backend)",
      "REST APIs",
      "Google Maps API",
      "Weather API"
    ],
    features: langCode == 'fr' ? [
      "Flux social avec publications, likes, commentaires",
      "Expérience de contenu type Reels",
      "Carte interactive pour explorer les lieux",
      "Données météo en temps réel",
      "Système de messagerie",
      "UI moderne avec animations fluides",
      "Design réactif et optimisé"
    ] : [
      "Social feed with posts, likes, comments, and save functionality",
      "Reels-style content experience for immersive browsing",
      "Interactive map integration to explore posts by location",
      "Real-time weather data for user location and hiking spots",
      "Messaging system for user communication",
      "Modern UI with smooth animations and transitions",
      "Responsive and optimized design for multiple device sizes"
    ],
    challenges: langCode == 'fr' ? [
      "Architecture évolutive pour une plateforme sociale",
      "Intégration de multiples APIs",
      "Animations fluides sans impact sur les performances",
      "Sécurisation des appels API"
    ] : [
      "Designing a scalable architecture for a social media platform",
      "Integrating multiple external APIs (Maps, Weather) efficiently",
      "Ensuring smooth animations without impacting performance",
      "Securing API calls and managing backend communication"
    ],
    learnings: langCode == 'fr' ? [
      "Techniques avancées d'UI/UX",
      "Manipulation de données asynchrones d'APIs",
      "Amélioration de l'intégration backend",
      "Conception pour l'évolutivité et la performance",
      "Construction avec une vision à long terme"
    ] : [
      "Advanced UI/UX design and animation techniques in Flutter",
      "Working with external APIs and handling asynchronous data",
      "Improving backend integration and secure communication",
      "Designing systems with scalability and performance in mind",
      "Building a product with a long-term vision and roadmap"
    ],
    cta: {"live": "", "github": "https://github.com/Elwaliid/Hiky"},
  ),
  ProjectUtils(
    banners: 'assets/imgs/gymfinder.png',
    name: 'GymFinder',
    image: 'assets/gymF.jpg',
    color1: '',
    color2: '',
    icons: ['assets/imgs/flutter.png', 'assets/imgs/firebase.png'],
    titles: langCode == 'fr' ? 'Application GymFinder' : 'GymFinder App',
    description: langCode == 'fr' 
        ? 'Application mobile aidant les utilisateurs à découvrir des salles de sport, consulter les détails et gérer leurs favoris.'
        : 'A Flutter and Firebase mobile app that helps users discover gyms, view details, and save favorites with authentication and real-time database integration.',
    links: 'https://gyms-9788e.web.app',
    subtitle: langCode == 'fr' ? 'Recherche et Réservation Intelligente de Salles de Sport' : 'Smart Gym Discovery & Booking App',
    overview: langCode == 'fr'
        ? "GymFinder est une application mobile conçue avec Flutter et Firebase pour découvrir des salles de sport et gérer des sessions."
        : "GymFinder is a mobile application built with Flutter and Firebase, designed to help users discover nearby gyms, explore details, and manage their fitness sessions. As my first full mobile application, this project marked the foundation of my journey in mobile development. It focuses on delivering a simple yet functional user experience while integrating real-world features like authentication, data management, and booking flows. The app reflects a hands-on approach to learning core development concepts, including UI composition, backend integration, and scalable project structure.",
    techStack: [
      "Flutter",
      "Firebase Authentication",
      "Cloud Firestore",
    ],
    features: langCode == 'fr' ? [
      "Authentification Firebase",
      "Parcourir et explorer les salles de sport",
      "Téléchargement d'images",
      "Système d'approbation d'administrateur",
      "Système de réservation de sessions",
      "Gestion de données en temps réel",
    ] : [
      "User authentication with Firebase (sign up / login)",
      "Browse and explore gym listings",
      "Upload gym posts with images",
      "Admin approval system before posts go live",
      "Session booking system (e.g. selecting specific days)",
      "Real-time data handling using Firestore",
    ],
    challenges: langCode == 'fr' ? [
      "Téléchargement d'images avec Firebase",
      "Structure de fichiers évolutive",
      "Logique d'approbation d'administrateur",
    ] : [
      "Handling image uploads with Firebase Storage (resolved by storing image data via Firestore)",
      "Designing a scalable file structure for the first time",
      "Implementing admin approval logic without prior backend experience",
    ],
    learnings: langCode == 'fr' ? [
      "Base solide sur les widgets Flutter",
      "Compréhension de l'écosystème Firebase",
      "Opérations CRUD",
      "Structuration de code",
    ] : [
      "Strong foundation in Flutter widgets and layout system",
      "Understanding of Firebase ecosystem (Auth, Firestore, Storage)",
      "CRUD operations and real-time data handling",
      "Structuring code using models and separated logic files",
    ],
    cta: {"live": "", "github": "https://github.com/Elwaliid/gym-finder"},
  ),
  ProjectUtils(
    banners: 'assets/portfF.png',
    name: 'Portfolio',
    image: 'assets/portfF.png',
    color1: '',
    color2: '',
    icons: ['assets/imgs/flutter.png'],
    titles: langCode == 'fr' ? 'Site Web Portfolio' : 'Portfolio website',
    description: langCode == 'fr'
        ? 'Mon premier site entièrement déployé avec Flutter, conçu pour présenter mes projets et mes compétences.'
        : 'My first fully deployed website built with Flutter, designed to showcase my projects, skills, and UI capabilities.',
    links: 'https://portfolio-50a83.web.app/',
    subtitle: langCode == 'fr' ? 'Site web Flutter réactif et interactif' : 'Responsive Flutter Web Showcase & Interactive UI',
    overview: langCode == 'fr' 
        ? "Mon premier site entièrement déployé avec Flutter, conçu pour présenter mes projets. Ce projet m'a permis d'apprendre le déploiement web et le design réactif."
        : "My first fully deployed website built with Flutter, designed to showcase my projects, skills, and UI capabilities. This project was focused on mastering responsive design across mobile, tablet, and desktop screens, achieved through a custom Responsive widget. I implemented advanced animations including fade, zoom, and floating effects to create a dynamic and engaging user experience. The website also incorporates an iframe-based mobile preview system, enabling visitors to interact with apps inside a realistic mobile frame. Through this project, I learned web deployment with Firebase, performance optimization for multiple devices, and polished my overall UI/UX skill set.",
    techStack: [
      "Flutter Web",
      "Firebase Hosting",
      "Custom Responsive System",
      "Advanced Animations (fade, zoom, floating)",
      "HTML & IFrame Integration for previews",
    ],
    features: langCode == 'fr' ? [
      "Design entièrement réactif",
      "Animations interactives",
      "Aperçu mobile flottant",
      "Optimisé pour la performance",
      "Déployé sur Firebase",
    ] : [
      "Fully responsive design for desktop, tablet, and mobile",
      "Interactive animations for engaging UI",
      "Floating mobile preview for live app demos instead of new tab",
      "Optimized for cross-device performance",
      "Deployed and hosted on Firebase",
    ],
    challenges: langCode == 'fr' ? [
      "Mise en œuvre d'une disposition réactive fluide",
      "Intégration d'animations avancées",
      "Création d'un aperçu mobile fluide avec iframe",
    ] : [
      "Implementing a responsive layout that adapts seamlessly across devices",
      "Integrating advanced animations",
      "Creating a smooth iframe mobile preview within Flutter Web",
    ],
    learnings: langCode == 'fr' ? [
      "Maîtrise de Flutter Web",
      "Déploiement avec Firebase Hosting",
      "Amélioration du sens du design",
    ] : [
      "Mastered Flutter Web and cross-device responsiveness",
      "Implemented iframe-based app previews for portfolio showcasing",
      "Learned deployment strategies with Firebase Hosting",
      "Improved overall design sense and UI consistency",
    ],
    cta: {"live": "", "github": "https://github.com/Elwaliid/walid_portfolio"},
  ),
];
