import 'package:flutter/material.dart';
import 'package:hotelsapp/detail_screen.dart';
import 'package:hotelsapp/model/hotels_place.dart';
import 'package:hotelsapp/profile_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels Bandung'),
      ),
      body: Column(
        children: [
          // Baris untuk profil
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                    radius: 25,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Muhamad Arabi Rizki',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(Icons.notifications),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Grid View untuk hotel
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              children: tourismPlaceList.map((place) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(place: place),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Gambar hotel
                        Expanded(
                          flex: 6,
                          child: Image.asset(
                            place.imageAsset,
                            fit: BoxFit.cover, // Mengisi ruang gambar
                          ),
                        ),
                        // Informasi hotel
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    place.name,
                                    style: const TextStyle(fontSize: 16.0),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1, // Batasi ke 1 baris
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        place.location,
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 155, 155, 154),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1, // Batasi ke 1 baris
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.orange,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            place.rating,
                                            style: const TextStyle(
                                                color: Colors.orange),
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        color: Colors.grey[800], // Customize navigation bar color
        activeColor: Colors.white, // Customize active tab color
        tabBackgroundColor: Colors.grey[900]!, // Customize tab background color
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        duration: const Duration(milliseconds: 800),
        tabs: [
          const GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            onPressed: () {
              // Tambahkan log untuk debugging
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
            icon: Icons.account_circle,
            text: 'Profile',
            active: true,
          ),
          const GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
      ),
    );
  }
}
