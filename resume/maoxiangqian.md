Contact
Phone: +86 17315522050 (Mobile)
Email: maoxq324@gmail.com
LinkedIn: www.linkedin.com/in/maoxiangqian (linkedin.com in Bing)

Top Skills
fluter; Web Engineering; Software Systems Engineering

Languages
English: Professional Working
Chinese: Native or Bilingual

Certifications
Software Designer (Intermediate Level)

Name and Title
xiangqian mao  
Senior C++ & Qt Developer | 7+ Years Experience | Linux & Full-Stack Web | Remote Worldwide  
Suzhou, Jiangsu, China

Summary
I am a senior Software Developer focused on C++ and Qt, with 7 years of experience developing embedded instruments and industrial machines (such as vision measurement systems and medical devices) for Linux and Windows environments, and 2 years of experience in full-stack web development. I have developed real-world projects including desktop applications using Qt and web applications with JavaScript, working across both frontend and backend. I am comfortable working in Linux and Windows environments and handling databases such as MySQL, PostgreSQL, and SQLite. My technical skills include C, C++, Qt, JavaScript, Python, Linux, and SQL. I enjoy building practical systems and continuously improving code quality and performance. I am currently seeking opportunities as a C++ Developer or Full-Stack Engineer, and I am open to remote roles worldwide or international positions.

Excerpt from the original document: "I am a senior Software Developer focused on C++ and Qt, with 7 years of experience developing embedded instruments and industrial machines (such as vision measurement systems and medical devices) for Linux and Windows environments, and 2 years of experience in full-stack web development."

Experience
Suzhou Vinno Technology — Software Engineer
March 2023 - March 2024 (1 year 1 month) — Suzhou

Designed and developed software systems for ultrasound endoscope devices, including system architecture, modular design and implementation, device integration, and database design (SQLite).

Designed and implemented core modules: patient management; user management; medical record management; system configuration; device management.

Compiled C++ libraries from source and performed cross-compilation to produce ARM Linux and Windows binaries from an x86 Linux build environment.

Led UX/UI design and development across Qt, Flutter, and web platforms.

Optimized image processing pipelines with GPU and multithreading for large-scale data.

Designed and implemented inter-process communication mechanisms for multi-process coordination.

Conducted code reviews, maintained technical documentation, and developed unit tests.

Wuxi Research Institute of Huazhong University of Science and Technology (HUST) — Senior Software Engineer
October 2020 - March 2023 (2 years 6 months) — Wuxi

Designed and developed a 2D contour measurement tool for 3D point cloud processing (C++, Qt): contour detection, extraction, and analysis.

Led system and architecture design; defined modular structure, data flow, and component interactions.

Built a cross-platform (Windows/Linux) graphics system supporting interactive editing, geometric primitives, and real-time visualization.

Implemented fully interactive UI features with movable graphics and real-time measurement updates.

Developed 2D contour measurement and feature extraction (length, radius, area, centroid) for industrial inspection.

Designed data persistence supporting JSON; TXT; XML; databases.

Integrated with real-time 3D scanning systems and deployed to production.

Suzhou Huaxing Yuanchuang Technology Co., Ltd. — Software Engineer
July 2019 - October 2020 (1 year 4 months) — Suzhou

Designed and developed a suite of Qt-based tools for semiconductor testing.

Built a high-performance data management tool for handling and visualizing large-scale test data (millions of rows).

Processed and analyzed large-scale semiconductor test data; designed efficient extraction methods.

Produced and maintained technical documentation: system design documents, API specifications, and user manuals.

Education
Daqing Petroleum Institute  
Bachelor's degree, Electronic Information Engineering (September 2015 - June 2019)

东北石油大学 (2015 - 2019)

Technical Skills (inferred / consolidated)
Languages & Frameworks: C; C++; Qt; JavaScript; Python; Flutter
Platforms & OS: Linux; Windows; ARM cross-compilation
Databases: MySQL; PostgreSQL; SQLite
Other: GPU acceleration; multithreading; IPC; 3D point cloud processing; UI/UX design; full-stack web development

Projects

2D Contour Measurement Tool for 3D Point Cloud Processing

Summary  
Production‑grade C++/Qt application that extracts, measures, and analyzes 2D contours from 3D point clouds for industrial inspection. Combines noise‑tolerant contour detection, real‑time measurement (length, radius, area, centroid), interactive cross‑platform graphics, and low‑latency scanner integration. Designed for maintainability, extensibility, and production deployment.

Key responsibilities and features

Modular pipeline: ingestion → preprocessing → 2D projection → contour extraction → measurement → visualization → persistence.

Algorithms: outlier removal, voxel downsampling, adaptive smoothing; depth‑map edge detection + graph tracing with subpixel refinement.

Measurements: length, radius (RANSAC circle/arc fit), area (shoelace), centroid; confidence metrics and incremental recompute.

Performance: thread pool, lock‑free queues, KD‑tree spatial indexing for low latency and per‑frame incremental updates.

UI and graphics: OpenGL/SceneGraph overlays, movable primitives, snapping, undo/redo, live recalculation, contextual tools.

Persistence and integration: JSON/TXT/XML exports, SQL backends; TCP/UDP, shared memory, and vendor SDK plugins for real‑time scanner feeds.

Deployment: headless or operator console modes; installers and service scripts for production lines.

Tech stack
C++ · Qt (widgets/QML) · OpenGL / Qt · Windows · Google Test / Catch2 · CI pipelines

Full-Stack Development of an Ultrasound Endoscopy Software System

I designed and developed a complete software system for medical ultrasound endoscope devices, covering system architecture, modular design, and full implementation.

The system includes core modules such as patient management, user management, medical records, device management, and system configuration, with a reliable database layer built on SQLite.

I handled cross-platform development by compiling C++ libraries from source and performing cross-compilation to generate ARM Linux and Windows binaries, ensuring portability across different hardware environments.

On the frontend, I led UX/UI design and implementation using Qt, Flutter, and web technologies, delivering responsive and user-friendly interfaces.

I also optimized image processing pipelines using GPU acceleration and multithreading, enabling efficient handling of large-scale medical data.

Additionally, I designed inter-process communication mechanisms for coordinated multi-process systems, and ensured code quality through reviews, documentation, and unit testing.

Skills: C++, Cascading Style Sheets (CSS), +4 skills

SaaS Blogging Platform (Full-Stack Development)

I designed and developed a full-stack SaaS blogging platform inspired by modern content platforms like Medium, focusing on scalable architecture and clean system design.

The backend was built using Flask, where I implemented RESTful APIs to handle user authentication, content management, and business logic. The system supports user registration, login, and secure session handling.

For the database layer, I designed relational schemas in MySQL, including posts, users, comments, and categories, with proper indexing and relationships to ensure efficient data access and consistency.

On the frontend, I developed dynamic and responsive interfaces for content creation, editing, and browsing, providing a smooth user experience.

I also implemented a management dashboard for administrative control, including user management and content moderation.

The application was deployed on AWS EC2, where I configured a Linux server environment and used Nginx as a reverse proxy to serve requests and route traffic to the Flask application, ensuring reliable and production-ready performance.

Skills: JavaScript, Cascading Style Sheets (CSS), +4 skills