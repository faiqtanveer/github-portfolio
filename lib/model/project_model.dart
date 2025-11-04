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


];