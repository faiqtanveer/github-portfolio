class Project {
  final String name;
  final String shortDescription;
  final String detailedDescription;
  final String thumbnailImage;
  final List<String> screenshots;
  final String githubLink;
  final List<String> technologies;

  Project({
    required this.name,
    required this.shortDescription,
    required this.detailedDescription,
    required this.thumbnailImage,
    required this.screenshots,
    required this.githubLink,
    this.technologies = const [],
  });
}

// Add projects one by one to this list
List<Project> projectList = [

  //SIGNER MOBILE APP
  Project(
    name: 'IamSigner Application',
    shortDescription: 'A state-of-the-art digital signature app for secure document signing and management.',
    detailedDescription: '''Introducing our state-of-the-art Digital Signature App, revolutionizing the way you sign and manage documents in the digital landscape. This robust application is designed to provide a seamless, secure, and efficient solution for individuals, professionals, and businesses alike.

Key Features:

• Advanced Encryption Technology
Our Digital Signature App employs cutting-edge encryption techniques to ensure the highest level of security for your digital signatures. Every signature is uniquely encoded, making it tamper-proof and safeguarding the authenticity and integrity of your documents.

• Legally Binding Signatures
Rest easy knowing that the signatures generated through our app hold legal validity. We adhere to industry standards to create signatures that meet the legal requirements for various documents, including contracts, agreements, and other essential paperwork.

• User-Friendly Interface
We understand the importance of simplicity in user interfaces. Our app boasts an intuitive design, making it easy for users of all levels of technical expertise to navigate and utilize its features effortlessly. Streamline your workflow with a few taps on your device.

• Multi-Platform Compatibility
Whether you're using a smartphone, tablet, or desktop computer, our Digital Signature App is optimized for a seamless experience across multiple platforms. Access your documents and sign with ease, regardless of your preferred device.

• Cloud Integration
Embrace the convenience of cloud storage by seamlessly integrating your signed documents with popular cloud services. Access your signed files from anywhere, collaborate with others, and maintain a centralized repository for all your important documents.

• Audit Trail and Document Tracking
Transparency is key, and our app includes a comprehensive audit trail feature. Track every step of the signing process, including who signed, when, and any changes made to the document. Stay in control and keep a detailed record of your transactions.

• Customizable Signature Styles
Personalize your digital signature to reflect your unique identity. Choose from a variety of styles and fonts to create a signature that aligns with your professional image.

• Offline Signing Capability
Enjoy the flexibility of signing documents even when offline. Our app allows you to sign documents without an internet connection, ensuring that you can complete transactions anytime, anywhere.

• Notification Alerts
Stay informed about the status of your documents with real-time notification alerts. Receive updates on when your document has been viewed, signed, or if any changes have occurred.

• Comprehensive Customer Support
Our commitment to customer satisfaction extends beyond the app itself. Benefit from responsive customer support ready to assist you with any queries, technical issues, or guidance on utilizing the app's features to their fullest potential.

In a world that demands efficiency, security, and flexibility, our Digital Signature App stands at the forefront, empowering users to sign documents confidently, securely, and with unparalleled convenience.''',
    thumbnailImage: 'assets/images/iamsigner.png',
    screenshots: [
      'assets/images/iamsigner_screen1.png',
      'assets/images/iamsigner_screen2.png',
      'assets/images/iamsigner_screen3.png',
      'assets/images/iamsigner_screen4.png',

    ],
    githubLink: 'https://iamsigner.com/',
    technologies: ['Flutter', 'Dart', 'Encryption', 'Cloud Integration', 'Digital Signatures'],
  ),

  // MOBILE-REPORT APP
  Project(
    name: 'MobileReport - PDF Reports',
    shortDescription: 'Professional PDF report creation tool for construction documentation with image annotations.',
    detailedDescription: '''Opret MobileReport nemt og hurtigt

Mobilereport.dk tilbyder et værktøj, der gør det muligt at oprette professionelle PDF-rapporter baseret på billeder med annoteringer, som kan anvendes til at forklare potentielle problemer på f.eks. byggesager.

About MobileReport:
Mobilereport.dk er skabt med et enkelt formål: at forenkle dokumentation og rapportering i byggebranchen. Vi ved, hvor udfordrende det kan være at holde styr på alle detaljer på en byggeplads, hvad enten det drejer sig om små reparationer eller store byggeprojekter. Med vores app får du et professionelt værktøj, der gør det nemt og hurtigt at oprette visuelle rapporter, forklare problemer og finde løsninger.

Key Features:
• Create professional PDF reports quickly and easily
• Add image annotations to explain issues clearly
• Perfect for construction site documentation
• Visual reporting for better communication
• Simplified workflow for construction professionals
• Track details on building projects efficiently
• Easy problem identification and explanation
• Professional documentation tool
• Streamlined reporting process
• Ideal for small repairs and large construction projects

MobileReport makes construction documentation efficient, professional, and accessible for everyone in the construction industry.''',
    thumbnailImage: 'assets/images/mobileReport.png',
    screenshots: [
      'assets/images/mobileReport_screen1.png',
      'assets/images/mobileReport_screen2.png',
      'assets/images/mobileReport_screen3.png',
    ],
    githubLink: 'https://mobilereport.dk/',
    technologies: ['Flutter', 'PDF Generation', 'Image Annotation', 'Construction Tech'],
  ),

  // SYLK-PRO APP
  Project(
    name: 'SylkPro - PrePostOpGuide',
    shortDescription: 'Revolutionary healthcare app for pre-operative planning and post-operative care management.',
    detailedDescription: '''PrePostOpGuide - Empowering Patient Care

About this app:
In today's digital age, technology has revolutionised various aspects of healthcare, including patient care before and after surgery. Pre-operative planning and post-operative care are crucial phases in a patient's surgical journey, significantly impacting their overall experience and outcomes. To streamline these processes and empower patients to take an active role in their healthcare, the development of a dedicated PrePostOpGuide app offers cutting-edge potential.

Key Features:
• Comprehensive Pre-Operative Planning
Guide patients through every step of their surgical preparation with detailed instructions, checklists, and educational materials.

• Post-Operative Care Management
Provide structured post-surgery care instructions, recovery timelines, and monitoring tools to ensure optimal healing.

• Patient Empowerment
Enable patients to take an active role in their healthcare journey with accessible information and self-management tools.

• Digital Healthcare Revolution
Leverage modern technology to streamline communication between healthcare providers and patients.

• Improved Patient Outcomes
Enhance the overall surgical experience through better preparation and follow-up care.

• Educational Resources
Access comprehensive medical information tailored to specific surgical procedures.

• Recovery Tracking
Monitor progress and milestones throughout the recovery journey.

• Healthcare Provider Communication
Seamless connection with medical professionals for questions and updates.

SylkPro's PrePostOpGuide transforms the surgical experience by putting essential care information at patients' fingertips, ensuring better preparation, smoother procedures, and faster recovery.''',
    thumbnailImage: 'assets/images/sylkpro.png',
    screenshots: [
      'assets/images/sylkpro_screen1.png',
      'assets/images/sylkpro_screen2.png',
      'assets/images/sylkpro_screen3.png',
    ],
    githubLink: 'https://sylkpro.com/',
    technologies: ['Flutter', 'Healthcare', 'Medical Tech', 'Patient Care', 'UI/UX'],
  ),

  //MySchoolElite
  Project(
    name: 'MySchoolElite - ERP Software',
    shortDescription: 'Comprehensive school management ERP system that transforms ordinary schools into smart institutions.',
    detailedDescription: '''What is SchoolElite ERP Software?

A school Enterprise Resource Planning software is a set of programs, specially designed to manage all the administrative tasks of a school in an effective manner. SchoolElite school management system is efficient software that converts the ordinary school into a smart one.

About MySchoolElite:
We offer easy to navigate, cost & time-efficient, error-free, and web-based school management solutions to tackle all the hurdles of students, parents, teachers, and institute faculty efficiently.

SchoolElite ERP software acts as a central dashboard where all the stakeholders- principals, management, teachers, and parents can access any important information, anytime. With this software, teachers can spend more time on teaching and student progress, parents can stay updated with their ward's performance, the management can easily manage all the intricate and time-taking administrative tasks, and principals can monitor and manage every single action being performed inside and out of the school premises.

Key Features:
• Attendance Management
Track and manage student attendance in real-time with automated reports and notifications.

• Online Fee Payment
Secure and convenient online payment system for school fees with instant receipts and transaction history.

• Academic Management
Complete control over curriculum, assignments, homework, and report cards accessible to all stakeholders.

• Communication Hub
Instant messaging and bulk notification system for seamless communication between school, parents, and teachers.

• Data Security & Recovery
Powered with cloud computing, machine learning, and data analytics ensuring absolute security and data recovery.

• Role-Based Access
Restrict access to sensitive data with role-based permissions for different stakeholders.

• Performance Tracking
Real-time monitoring of student performance, attendance, and overall development for parents and teachers.

Benefits of SchoolElite ERP Software:

• Technology Integration
Equipped with modern technologies such as cloud computing and machine learning for faster data management and enhanced security.

• Flexibility
Cloud-based access allows stakeholders to retrieve information anytime, anywhere, removing time and location constraints.

• Paperless Administration
Complete automation eliminates the need for pen and paper, making data management instant and efficient.

• Productivity Enhancement
Automation saves significant time, allowing staff to focus on improving education quality and student development.

• Holistic Development
Parents stay informed about their child's performance, enabling them to take necessary steps for holistic development.

• Centralized Management
Principals can manage overall school activities, send bulk messages, and monitor all operations with a single click.

SchoolElite ERP streamlines all back-office operations, enhancing the quality of education delivery while empowering all stakeholders in the educational ecosystem.''',
    thumbnailImage: 'assets/images/myschoolelite.png',
    screenshots: [
      'assets/images/myschoolelite_screen1.png',
      'assets/images/myschoolelite_screen2.png',
      'assets/images/myschoolelite_screen3.png',

    ],
    githubLink: 'https://myschoolelite.com/',
    technologies: ['Flutter', 'ERP', 'Cloud Computing', 'Machine Learning', 'Data Analytics', 'Education Tech'],
  ),

  //SALAH MATE
  Project(
    name: 'Salah Mate - Islamic Companion Suite',
    shortDescription: 'Complete Islamic ecosystem with mobile app, kiosk system, and TV companion for mosques and Muslims worldwide.',
    detailedDescription: '''Salah Mate: Your Essential Islamic Companion Suite

A comprehensive three-platform solution designed to connect Muslims with their faith and empower mosques with modern technology.

━━━━━━━━━━━━━━━━━━━━━━━━━━━
📱 SALAH MATE MOBILE APP
━━━━━━━━━━━━━━━━━━━━━━━━━━━

Connect with Your Faith:
• Accurate Prayer Times: Never miss a prayer with precise prayer times tailored to your location.
• Qibla Direction: Find the direction of the Kaaba effortlessly, ensuring your prayers are aligned correctly.
• Islamic Calendar: Stay informed about important Islamic dates and events.

Engage with Your Community:
• Mosque Finder: Easily locate nearby mosques with detailed maps and directions.
• Follow Local Mosques: Stay connected with your local mosque, receive updates, and contribute to the community.
• Secure Donations: Support your mosque and Islamic causes through secure and convenient donations.

Additional Features:
• Comprehensive mosque information, including contact details and facilities.
• User reviews to help you find the best mosques.
• Travel-friendly design for easy use on the go.

━━━━━━━━━━━━━━━━━━━━━━━━━━━
🏪 SALAH MATE KIOSK
━━━━━━━━━━━━━━━━━━━━━━━━━━━

Simplify and enhance your mosque's donation process with our cutting-edge kiosk solution offering a seamless, cashless experience.

Key Features:
• Easy Donations: Streamlined process for selecting donation campaigns and making payments.
• Cashless Payments: Accept card payments for secure and convenient transactions.
• Multiple Campaign Support: Create and manage various fundraising campaigns.
• Detailed Reporting: Track and analyze donation data for informed decision-making.

Benefits for Mosques:
• Increased donations through modern payment methods
• Operational efficiency and reduced manual work
• Enhanced donor engagement and transparency
• Broader donor base with cashless options

How it Works:
1. Register your mosque on the Salah Mate platform
2. Verify your email address
3. Login and update mosque information from control panel
4. Wait for verification
5. Configure bank account and payment gateway
6. Download and install Salah Mate Kiosk app

━━━━━━━━━━━━━━━━━━━━━━━━━━━
📺 SALAH MATE TV COMPANION
━━━━━━━━━━━━━━━━━━━━━━━━━━━

Transform your mosque into a dynamic hub of information and inspiration with our Smart TV app.

Key Features:
• Accurate Prayer Times: Display precise prayer times to keep your community informed.
• Upcoming Prayers: Show countdown to the next prayer, encouraging punctuality.
• Important Announcements: Broadcast essential messages directly to attendees.
• Event Listings: Promote upcoming mosque events and activities.
• Donation Feature: Facilitate effortless donations with QR code display.

Easy to Use:
Simply install the app on your mosque's Smart TV and log in with your Salah Mate credentials. The app automatically displays information based on your mosque's settings.

Benefits:
• Strengthen community engagement
• Enhance the overall mosque experience
• Facilitate efficient mosque management
• Create a modern, connected worship environment

━━━━━━━━━━━━━━━━━━━━━━━━━━━

Salah Mate is more than just an app suite; it's a comprehensive spiritual and community management ecosystem. Join the cashless revolution and embark on a journey of faith, community, and innovation.''',
    thumbnailImage: 'assets/images/salahmate.png',
    screenshots: [
      'assets/images/salahmate_screen1.png',
      'assets/images/salahmate_screen2.png',
      'assets/images/salahmate_screen3.png',
      'assets/images/salahmate_screen4.png',
      'assets/images/salahmatekiosk_screen1.png',
      'assets/images/salahmatekiosk_screen2.png',
      'assets/images/salahmatekiosk_screen3.png',
      'assets/images/salahmatetv_screen1.png',

    ],
    githubLink: 'https://salahmate.com/',
    technologies: ['Flutter', 'Smart TV', 'Payment Gateway', 'Geolocation', 'Islamic Tech', 'Community Platform'],
  ),

  //Bullseye
  Project(
    name: 'Bullseye - Unified Payment Platform',
    shortDescription: 'Revolutionary QR-code payment platform that eliminates payment app clutter with one universal solution.',
    detailedDescription: '''Bullseye - End Payment App Clutter Forever

Founded with a vision to end payment app clutter, Bullseye emerged as a revolutionary QR-code payment platform designed to unify transactions for everyone.

The Problem:
As digital payments surged, users were forced to juggle countless apps for different needs: in-store payments, online shopping, peer-to-peer transfers, and bill payments. This fragmentation created confusion, inefficiency, and a cluttered digital wallet experience.

Our Vision:
Recognizing this fragmentation, Bullseye set out to create a single, ubiquitous platform where one QR code could handle it all. We began as a simple idea between a visionary entrepreneur and a seasoned technologist: to make the smartphone camera the only tool needed for any payment.

The Solution:
They saw the QR code not just as a technology, but as a key to simplifying financial interactions. From this vision, they built a system that works anywhere, on any device, in any channel, with any form of currency.

What Sets Bullseye Apart:

• Universal Payment Solution
One QR code for all transactions - in-store, online, P2P, and bill payments. No more switching between multiple apps.

• Single-Scan Payment Flow
Prioritizing simplicity with a streamlined single-scan process that works every time, everywhere.

• Works Anywhere
Compatible with any device, any channel, and any form of currency. True payment universality.

• Seamless Partner Integrations
Built with robust integration capabilities to work with existing payment infrastructure and merchant systems.

• Enhanced Security
Enterprise-grade security measures protecting every transaction while maintaining ease of use.

• Smartphone Camera as Payment Tool
Your camera is all you need - no special hardware, no extra apps, just scan and pay.

• End Digital Clutter
Consolidate all payment needs into one trusted platform, eliminating the need for multiple payment apps.

• Consumer & Business Friendly
Designed for both everyday consumers tired of app overload and businesses seeking simplified payment solutions.

The Future of Payments:
Bullseye is becoming the trusted choice for consumers and businesses tired of digital clutter, paving the way for a unified payment future. Join us in revolutionizing how the world pays.

One QR Code. All Payments. Everywhere.''',
    thumbnailImage: 'assets/images/bullseye.png',
    screenshots: [
      'assets/images/bullseye_screen1.png',
      'assets/images/bullseye_screen2.png',
      'assets/images/bullseye_screen3.png',
      'assets/images/bullseye_screen4.png',
    ],
    githubLink: 'https://bullseyepay.io/',
    technologies: ['Flutter', 'QR Code', 'Payment Gateway', 'Fintech', 'Security', 'Multi-Currency'],
  ),

  //Mealsmash
  Project(
    name: 'MealSmash - Complete Restaurant Management System',
    shortDescription: 'Comprehensive 7-app ecosystem for complete restaurant operations, from customer ordering to kitchen management.',
    detailedDescription: '''MealSmash Apps: A Comprehensive Restaurant Management System

A complete end-to-end solution revolutionizing the restaurant industry with seven specialized applications working seamlessly together.

━━━━━━━━━━━━━━━━━━━━━━━━━━━
📱 MEALSMASH CUSTOMER
━━━━━━━━━━━━━━━━━━━━━━━━━━━

Your go-to app for discovering and ordering from nearby restaurants, grocery stores, pharmacies, bakeries, and more. Whether you're craving a quick bite, need fresh groceries, or want to refill your prescriptions, MealSmash makes it easy.

How it works:
• Browse food, grocery, and medical items from trusted local vendors
• Add top-quality products to your cart
• Place your order with a smooth, intuitive checkout process
• Track your rider in real-time for peace of mind

Why MealSmash?
• Multiple categories in one app: food, groceries, medicine, and more
• Nearby, high-quality vendors
• Real-time rider tracking
• Fast, secure delivery experience
• Clean UI and effortless ordering flow

Skip the stress. Get what you need, when you need it, with MealSmash.

━━━━━━━━━━━━━━━━━━━━━━━━━━━
⭐ MEALSMASH FEEDBACK
━━━━━━━━━━━━━━━━━━━━━━━━━━━

A customer feedback system designed to gather reviews and ratings to enhance restaurant services.

MealSmash Review helps you in getting your voice heard by other customers. Express your experience with ratings and comments, spread the word and let others know your preferences and likings. Give them suggestions or point out a mistake.

Features:
• Easy rating and review system
• Share detailed dining experiences
• Help other customers make informed decisions
• Direct feedback to restaurant owners
• Build trust within the community

━━━━━━━━━━━━━━━━━━━━━━━━━━━
👨‍🍳 MEALSMASH WAITER
━━━━━━━━━━━━━━━━━━━━━━━━━━━

A digital assistant for waiters to manage table orders, track service requests, and enhance customer dining experiences.

Experience the convenience and efficiency of ordering with ease. An all-in-one restaurant order management solution that simplifies operations, reduces errors, and elevates your restaurant's success.

Features:
• Manage table orders efficiently
• Track service requests in real-time
• Reduce ordering errors
• Streamlined communication with kitchen
• Enhanced customer service delivery
• Revolutionary order management process

━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 MEALSMASH ORDERING
━━━━━━━━━━━━━━━━━━━━━━━━━━━

A streamlined order management system for restaurants, ensuring efficient handling of dine-in, takeaway, and delivery requests.

MealSmash Ordering helps restaurants to view and monitor customer order status. It adds extra convenience to your employees in their daily tasks and workflow, making the overall experience worthwhile.

Features:
• View and monitor all customer orders
• Track dine-in, takeaway, and delivery orders
• Real-time order status updates
• Simplified employee workflow
• Enhanced operational efficiency
• Centralized order management

━━━━━━━━━━━━━━━━━━━━━━━━━━━
🔪 MEALSMASH KITCHEN
━━━━━━━━━━━━━━━━━━━━━━━━━━━

A smart kitchen display system that helps chefs and kitchen staff track incoming orders and optimize food preparation.

MealSmash Kitchen increases the overall efficiency of your restaurant by providing a powerful and efficient way to receive, view, monitor, and change order statuses with respect to specific tables.

Features:
• Real-time order display
• Table-specific order tracking
• Order status management
• Kitchen workflow optimization
• Reduce preparation time
• Minimize order confusion
• Enhanced kitchen efficiency

━━━━━━━━━━━━━━━━━━━━━━━━━━━
🖥️ MEALSMASH KIOSK
━━━━━━━━━━━━━━━━━━━━━━━━━━━

A self-service kiosk app enabling customers to browse menus, place orders, and make payments without waiter assistance.

MealSmash Kiosk provides a seamless ordering and transaction experience to your valuable customers. Enhance customer experience by providing a seamless and up-to-date ordering and checkout system. It handles everything from ordering to payment with ease and style.

Features:
• Self-service ordering system
• Browse complete menu catalog
• Contactless payment integration
• Reduce wait times
• Minimize staff workload
• Modern, stylish interface
• Complete ordering to payment flow

━━━━━━━━━━━━━━━━━━━━━━━━━━━
💼 MEALSMASH MERCHANT
━━━━━━━━━━━━━━━━━━━━━━━━━━━

A complete business management solution for restaurant owners to oversee orders, revenue, and staff operations.

MealSmash Merchant allows you to set up your own Restaurant, Bakery, and Pharmacy business with ease. Add, view, and manage products and orders with minimal to no effort. Look through your transaction history and manage your cash flow effortlessly.

Features:
• Complete business setup and management
• Product catalog management
• Order oversight and tracking
• Revenue monitoring and analytics
• Transaction history tracking
• Cash flow management
• Staff operations management
• Multi-business support (Restaurant, Bakery, Pharmacy)
• Minimal effort, maximum control

━━━━━━━━━━━━━━━━━━━━━━━━━━━

MealSmash is more than just an app suite; it's a complete ecosystem transforming how restaurants operate and serve their customers. From the first order to the final review, every touchpoint is optimized for efficiency, quality, and satisfaction.

Setting up and managing your business has never been this easy.''',
    thumbnailImage: 'assets/images/mealsmash.png',
    screenshots: [
      'assets/images/mealsmash_scren1.png',
      'assets/images/mealsmash_screen2.png',
      'assets/images/mealsmash_screen3.png',
      'assets/images/mealsmashordering_screen1.png',
      'assets/images/mealsmashordering_screen2.png',
      'assets/images/mealsmashordering_screen3.png',
      'assets/images/mealsmashmerchant_screen1.png',
      'assets/images/mealsmashmerchant_screen2.png',
      'assets/images/mealsmashwaiter_screen1.png',
      'assets/images/mealsmashwaiter_screen2.png',
      'assets/images/mealsmashkitchen_screen1.png',
      'assets/images/mealsmashkiosk_screen1.png',
      'assets/images/mealsmashreview_screen1.png',

    ],
    githubLink: 'https://mealsmash.com/',
    technologies: ['Flutter', 'Restaurant Management', 'POS System', 'Real-time Tracking', 'Payment Gateway', 'Multi-Platform'],
  ),

  //ELOAD
  Project(
    name: 'eLoad - Global Mobile TopUp',
    shortDescription: 'Revolutionary mobile top-up app with zero processing fees, supporting 150+ countries and 750+ operators.',
    detailedDescription: '''eLoad: Global Mobile TopUp - Stop Paying Crazy Processing Fees!

eLoad app is a NEW and truly INNOVATIVE mobile app that revolutionizes how you recharge prepaid mobile numbers worldwide.

🎊 STOP PAYING CRAZY PROCESSING FEES for mobile top-ups! It's always zero processing fee for mobile top-ups in eLoad app! 🥳

━━━━━━━━━━━━━━━━━━━━━━━━━━━
✨ KEY FEATURES
━━━━━━━━━━━━━━━━━━━━━━━━━━━

🟢 1) Three-at-once and Zero-fee Mobile Top-up
Recharge up to 3 prepaid numbers together in over 150 countries and across 750+ mobile operators. Do that without paying any processing fees! Save money on every transaction while topping up multiple numbers simultaneously.

🟢 2) Super Fast Top-up
Airtime and bundles delivered instantly for direct top-ups! No waiting, no delays - your mobile credit arrives in seconds.

🟢 3) Hide Your Phone Numbers
Have other people (eLoad users) directly recharge your prepaid phone numbers without seeing the numbers! Simply go to Account Settings > Privacy and switch it on! Maintain your privacy while receiving top-ups from family and friends.

🟢 4) Buy Green Credits (GCR)
Add money to your account by buying GCR — the in-app currency for eLoad — and use it anytime for all transactions within the app. This helps you hold more balance than you need for just 1 transaction and use your GCR anytime you wish.

Benefits of GCR:
• Pre-load your account for instant transactions
• Hold balance for multiple top-ups
• Use anytime without repeated payments
• Seamless transaction experience

🟢 5) Earn Green Points (GPT)
Earn and accumulate GPT for actions and transactions you make in the app. Convert your Green Points to Green Credits (GCR) or access different rewards like mobile top-up discounts, free greeting cards and more!

Rewards Include:
• Convert GPT to GCR
• Mobile top-up discounts
• Free greeting cards
• Exclusive offers and promotions
• Loyalty benefits

🟢 6) Secure and Safe
Encrypted payments and contacts. Set up and use your Fingerprint or PIN code to quickly verify yourself and keep your account safe from unauthorized access.

Security Features:
• End-to-end encryption
• Biometric authentication (Fingerprint)
• PIN code protection
• Secure payment processing
• Protected contact information
• Unauthorized access prevention

🟢 7) Multiple Payment Methods
Pay for GCR with debit cards, digital wallets/crypto, with more options to be added.

Supported Payment Options:
• Debit cards
• Digital wallets
• Cryptocurrency payments
• More options coming soon

━━━━━━━━━━━━━━━━━━━━━━━━━━━
🌍 GLOBAL COVERAGE
━━━━━━━━━━━━━━━━━━━━━━━━━━━

• 150+ Countries Supported
• 750+ Mobile Operators
• Instant International Top-ups
• Universal Compatibility

━━━━━━━━━━━━━━━━━━━━━━━━━━━
💡 WHY CHOOSE eLoad?
━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ Zero Processing Fees
✅ Recharge Multiple Numbers at Once
✅ Instant Delivery
✅ Privacy Protection
✅ Rewards & Points System
✅ Bank-level Security
✅ Global Coverage
✅ Multiple Payment Options
✅ User-Friendly Interface
✅ 24/7 Availability

━━━━━━━━━━━━━━━━━━━━━━━━━━━

eLoad is more than just a top-up app; it's a complete mobile recharge ecosystem designed to save you money, protect your privacy, and reward your loyalty. Join thousands of users worldwide who have already made the switch to smarter mobile top-ups.

Download eLoad today and experience the future of mobile recharging - where convenience meets savings!''',
    thumbnailImage: 'assets/images/eload.png',
    screenshots: [
      'assets/images/eload_screen1.png',
      'assets/images/eload_screen2.png',
      'assets/images/eload_screen3.png',

    ],
    githubLink: 'https://eload.app/',
    technologies: ['Flutter', 'Fintech', 'Payment Gateway', 'Cryptocurrency', 'Biometric Auth', 'Global API Integration'],
  ),
];