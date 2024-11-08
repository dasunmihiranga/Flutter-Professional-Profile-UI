import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dasun'),
        backgroundColor: Color(0xFF111111),
      ),
      backgroundColor: Color(0xFF111111),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dasun',
                    style: TextStyle(
                      color: Color(0xFF00FFFF),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Color(0xFF00FFFF),
                        onPressed: () {
                          // Handle menu button press
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF00FFFF), width: 2.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 15.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF111111),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello I\'m Dasun Mihiranga',
                              style: TextStyle(
                                color: Color(0xFF00FFFF),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'A dedicated student on the path to becoming a full-stack developer. Passionate about technology and innovation, I\'m constantly learning and growing to create impactful web applications. Excited to connect and collaborate with fellow enthusiasts!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'Full Stack Developer',
                              style: TextStyle(
                                color: Color(0xFF00FFFF),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/projects/profile.jpg',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Tech Stack',
                    style: TextStyle(
                      color: Color(0xFF00FFFF),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Wrap(
                    spacing: 16.0,
                    runSpacing: 16.0,
                    children: [
                      TechButton(
                        imagePath: 'assets/projects/js.png',
                        label: 'JavaScript',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/java.png',
                        label: 'Java',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/spring.png',
                        label: 'Spring Boot',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/ts.png',
                        label: 'TypeScript',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/angular.png',
                        label: 'Angular',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/flutter.png',
                        label: 'Flutter',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/react.png',
                        label: 'React',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/tailwind.png',
                        label: 'Tailwind',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/mysql.png',
                        label: 'MySQL',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/bootstrap.png',
                        label: 'Bootstrap',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/express.png',
                        label: 'Express JS',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.0),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Tools',
                    style: TextStyle(
                      color: Color(0xFF00FFFF),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Wrap(
                    spacing: 16.0,
                    runSpacing: 16.0,
                    children: [
                      TechButton(
                        imagePath: 'assets/projects/git.png',
                        label: 'Git',
                      ),
                      TechButton(
                        imagePath: 'assets/projects/github.png',
                        label: 'GitHub',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TechButton extends StatelessWidget {
  final String imagePath;
  final String label;

  TechButton({
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tech button tap
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF00FFFF), width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
          color: Color(0xFF111111),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 48.0,
              height: 48.0,
            ),
            SizedBox(height: 8.0),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Portfolio',
    home: MyApp(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
  ));
}