import 'package:flutter/material.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 190, 150, 194),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bhargavi Gantasala!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
 
              // TextField with prefix and suffix icon
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your username',
                    prefixIcon: const Icon(Icons.verified_user, color: Colors.teal),
                    suffixIcon: const Icon(Icons.check_circle, color: Colors.green),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
 
              const SizedBox(height: 20),
 
              Image.network(
                'https://th.bing.com/th/id/OIP.tiCPmYbtYF2AHXVAGpfLYQHaEK?w=313&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
                width: 200,
              ),
 
              // Broken image with errorBuilder and fallback asset
              Image.network(
                'https://this-url-does-not-exist.com/image.jpg',
                width: 100,
                errorBuilder: (context, error, stackTrace) {
                  return Column(
                    children: [
                      const Text('Could not load image'),
                      Image.asset(
                        'assets/download.jpg', // Your fallback image
                        width: 90,
                      ),
                    ],
                  );
                },
              ),
 
              const SizedBox(height: 20),
 
              // Working network image
              Image.asset('assets/download1.webp', width: 100),
 
              const SizedBox(height: 20),
              const Icon(Icons.verified, color: Colors.blue, size: 50),
            ],
          ),
        ),
      ),
    );
  }
}