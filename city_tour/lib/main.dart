import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'City Tour',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: const HomeScreen(),
);
}
}

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});


final List images = const [
'https://images.unsplash.com/photo-1533105079780-92b9be482077?w=500',
'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=500',
'https://images.unsplash.com/photo-1519501025264-65ba15a82390?w=500',
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('City Tour'),
backgroundColor: Colors.blue,
foregroundColor: Colors.white,
centerTitle: true,
),

body: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(15),

child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [


const Text(
'Welcome to City Tour',
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 10),

const Text(
'Discover beautiful places around the world.',
style: TextStyle(fontSize: 16),
),

const SizedBox(height: 20),


const Text(
'Gallery Wisata',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 10),

SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
children: images.map((image) {
return Padding(
padding: const EdgeInsets.only(right: 10),

child: ClipRRect(
borderRadius: BorderRadius.circular(15),

child: Image.network(
image,
width: 150,
height: 200,
fit: BoxFit.cover,
),
),
);
}).toList(),
),
),

const SizedBox(height: 25),


const Text(
'Explore the city , hidden gems, and unique experiences.',
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
color: Colors.blue,
),
),

const SizedBox(height: 12),

const Text(
'Explore the charm of our city’s hidden gems '
'and embark on a journey to discover the rich '
'cultural heritage, breathtaking landscapes, '
'and unique experiences that await you. '
'From historical landmarks to vibrant markets '
'and serene natural wonders, our city offers '
'something for everyone. Join us in exploring '
'the beauty and excitement that will captivate '
'your senses. Come and visit our city!',

style: TextStyle(
fontSize: 16,
height: 1.6,
),
textAlign: TextAlign.justify,
),

const SizedBox(height: 25),

// Informasi tambahan
const Text(
'Discover Our Destination',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 10),

const Text(
'Nikmati perjalanan wisata dan temukan '
'pengalaman baru bersama City Tour.',
style: TextStyle(
fontSize: 15,
height: 1.5,
),
),

const SizedBox(height: 25),

const Center(
child: Text(
'© 2026 City Tour',
style: TextStyle(color: Colors.grey),
),
),

],
),
),
),
);
}
}