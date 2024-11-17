import 'package:flutter/material.dart';
import 'package:hotelsapp/model/hotels_place.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(place.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(
                      8), // Tambahkan padding jika ingin jarak antara teks dan border
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
                        style: const TextStyle(color: Colors.orange),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.calendar_today),
                        const SizedBox(height: 8.0),
                        Text(
                          place.openDays,
                          style: informationTextStyle,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow
                              .ellipsis, // Tambahkan ini untuk menghindari overflow
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.access_time),
                        const SizedBox(height: 8.0),
                        Text(
                          place.openTime,
                          style: informationTextStyle,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow
                              .ellipsis, // Tambahkan ini untuk menghindari overflow
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.monetization_on),
                        const SizedBox(height: 8.0),
                        Text(
                          place.ticketPrice,
                          style: informationTextStyle,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow
                              .ellipsis, // Tambahkan ini untuk menghindari overflow
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
