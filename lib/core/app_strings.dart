/// Bilingual strings for EN / FR.
/// Usage: AppStrings.of(context).hellotag
class AppStrings {
  final String langCode;

  const AppStrings._(this.langCode);

  factory AppStrings.of(String langCode) => AppStrings._(langCode);

  // ── Home ──────────────────────────────────────────────────────────
  String get hellotag => langCode == 'fr'
      ? 'Salam, Bienvenue dans ma zone  '
      : 'Salam, Welcome to My Zone  ';

  String get yourname => "I'm Walid Boubaidja,";

  String get animationtxt1 => langCode == 'fr'
      ? ' Développeur d\'applications mobiles'
      : ' Mobile Application Developer';

  String get animationtxt2 => langCode == 'fr'
      ? ' Étudiant en génie logiciel'
      : ' Software Engineer Student';

  String get animationtxt3 => langCode == 'fr'
      ? ' Développeur Web'
      : ' Web Developer';

  // ── Mini description ──────────────────────────────────────────────
  String get miniDescription => langCode == 'fr'
      ? 'Freelancer proposant des services de programmation et de design. Rejoignez-moi ci-dessous et commençons !'
      : 'Freelancer providing services for programming and design content needs. Join me down below and let\'s get started!';

  // ── Services ──────────────────────────────────────────────────────
  String get whatICanDo => langCode == 'fr' ? '\nCe que je sais faire ?' : '\nWhat I can do?';
  String get servicesSubHeading => langCode == 'fr'
      ? 'Étudiant en génie logiciel passionné par la création de produits numériques pratiques. Je développe des applications full-stack avec Flutter pour le frontend et des technologies comme Node.js et MongoDB pour le backend. Mon travail inclut la mise en œuvre de systèmes d\'authentification et la gestion de bases de données, voici quelques-uns des outils que j\'utilise.'
      : 'I\'m a software engineering student focused on building practical digital products. I develop full-stack applications using Flutter for the frontend and technologies like Node.js and MongoDB for the backend. My work includes implementing authentication systems and managing databases, and here\'s some of the Tools I use.';

  // ── Projects ──────────────────────────────────────────────────────
  String get projects => langCode == 'fr' ? '\nProjets' : '\nProjects';

  String get protfolioSubHeading => langCode == 'fr'
      ? 'Depuis le début de mon parcours de développeur, j\'ai réalisé des projets incluant les applications mobiles Gym Finder, CRM, Hiky et Jawwi, ainsi que mon site portfolio. Je me concentre sur le développement full-stack et le design UI/UX moderne avec Flutter, Node.js et MongoDB.'
      : 'Since starting my journey as a developer, I\'ve built projects including the Gym Finder, CRM, Hiky and jawwi mobile apps, as well as my portfolio website. I focus on full-stack development and modern UI/UX design using technologies like Flutter, Node.js, and MongoDB.';

  String get less => langCode == 'fr' ? 'Moins' : 'Less';
  String get more => langCode == 'fr' ? 'Plus' : 'More';
  String get viewPreviews => langCode == 'fr' ? 'Voir les aperçus' : 'View Previews';
  String get launch => langCode == 'fr' ? 'Lancer' : 'Launch';
  String get details => langCode == 'fr' ? 'Détails' : 'Details';
  String get techStack => langCode == 'fr' ? 'Technologies' : 'Tech Stack';
  String get features => langCode == 'fr' ? 'Fonctionnalités' : 'Features';
  String get challenges => langCode == 'fr' ? 'Défis' : 'Challenges';
  String get learnings => langCode == 'fr' ? 'Apprentissages' : 'Learnings';
  String get download => langCode == 'fr' ? 'Télécharger' : 'Download';
  String get github => 'GitHub';

  // ── Contact ──────────────────────────────────────────────────────
  String get contactHeading => langCode == 'fr'
      ? 'Essayez mon service maintenant !'
      : 'Let\'s try my service now!';

  String get contactSubHeading => langCode == 'fr'
      ? 'Travaillons ensemble pour rendre tout super beau et super utile.'
      : 'Let\'s work together and make everything super cute and super useful.';

  // ── About me ──────────────────────────────────────────────────────
  String get aboutMeHeadline => langCode == 'fr'
      ? 'Je suis Walid Boubaidja, développeur d\'applications mobiles, développeur web et designer UI.'
      : 'I\'m Walid Boubaidja, a Mobile App developer, Web developer and UI designer.';

  String get aboutMeDetail => langCode == 'fr'
      ? 'Étudiant en génie logiciel à l\'Université de Souk Ahras, Algérie. Je développe des applications mobiles depuis un an. J\'ai travaillé en équipe sur mon premier projet. Je suis actuellement membre du club Data Vision, une communauté étudiante axée sur l\'intelligence artificielle et l\'informatique.'
      : 'I\'m a Software Engineer student from Souk Ahras University, Algeria. I have been developing mobile apps for a year now. I have worked in a team for my first project. I\'m in data vision club currently A student community focused on Artificial Intelligence and Computer Science.';

  // ── Navbar items ──────────────────────────────────────────────────
  List<String> get navItems => langCode == 'fr'
      ? ['ACCUEIL', 'SERVICES', 'Projets', 'CONTACT']
      : ['HOME', 'SERVICES', 'Projects', 'CONTACT'];
}
