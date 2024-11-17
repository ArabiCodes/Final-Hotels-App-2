class TourismPlace {
  String name;
  String location;
  String rating;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.rating,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Asia Afrika Hotels',
    rating: '5.0',
    location: 'Lembang',
    description:
        'Stay comfortably and affordably at [Hotel Name], your home away from home. Our clean and comfortable rooms offer everything you need for a pleasant stay. Enjoy easy access to local attractions, restaurants, and shopping.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: '800.000/Night',
    imageAsset: 'assets/images/Image-1.png',
    imageUrls: [
      'https://images.unsplash.com/photo-1454388683759-ee76c15fee26?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHwwg',
    ],
  ),
  TourismPlace(
    name: 'Dago Hotels',
    location: 'Lembang',
    rating: '5.0',
    description:
        'Stay comfortably and affordably at [Hotel Name], your home away from home. Our clean and comfortable rooms offer everything you need for a pleasant stay. Enjoy easy access to local attractions, restaurants, and shopping.',
    openDays: 'Open Tuesday - Saturday',
    openTime: '09:00 - 14:30',
    ticketPrice: '800.000/Night',
    imageAsset: 'assets/images/Image-2.png',
    imageUrls: [
      'https://images.unsplash.com/photo-1454388683759-ee76c15fee26?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHwwg',
    ],
  ),
  TourismPlace(
    name: 'Asia Hotels',
    location: 'Kota Bandung',
    rating: '5.0',
    description:
        'Stay comfortably and affordably at [Hotel Name], your home away from home. Our clean and comfortable rooms offer everything you need for a pleasant stay. Enjoy easy access to local attractions, restaurants, and shopping.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: '800.000/Night',
    imageAsset: 'assets/images/Image-3.png',
    imageUrls: [
      'https://images.unsplash.com/photo-1454388683759-ee76c15fee26?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHwwg',
    ],
  ),
  TourismPlace(
    name: 'Astina Hotels',
    location: 'Padalarang',
    rating: '5.0',
    description:
        'Stay comfortably and affordably at [Hotel Name], your home away from home. Our clean and comfortable rooms offer everything you need for a pleasant stay. Enjoy easy access to local attractions, restaurants, and shopping.',
    openDays: 'Open Everyday',
    openTime: '06:00 - 17:00',
    ticketPrice: '800.000/Night',
    imageAsset: 'assets/images/Image-4.png',
    imageUrls: [
      'https://images.unsplash.com/photo-1454388683759-ee76c15fee26?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHwwg',
    ],
  ),
  TourismPlace(
    name: 'Pasteur Hotels',
    location: 'Kota Bandung',
    rating: '5.0',
    description:
        'Stay comfortably and affordably at [Hotel Name], your home away from home. Our clean and comfortable rooms offer everything you need for a pleasant stay. Enjoy easy access to local attractions, restaurants, and shopping.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: '800.000/Night',
    imageAsset: 'assets/images/Image-5.png',
    imageUrls: [
      'https://images.unsplash.com/photo-1454388683759-ee76c15fee26?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHwwg',
    ],
  ),
  TourismPlace(
    name: 'Kopo',
    location: 'Kota Bandung',
    rating: '5.0',
    description:
        'Stay comfortably and affordably at [Hotel Name], your home away from home. Our clean and comfortable rooms offer everything you need for a pleasant stay. Enjoy easy access to local attractions, restaurants, and shopping.',
    openDays: 'Open Saturday - Thursday',
    openTime: '09:00 - 15:30',
    ticketPrice: '800.000/Night',
    imageAsset: 'assets/images/Image-6.jpg',
    imageUrls: [
      'https://images.unsplash.com/photo-1454388683759-ee76c15fee26?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1524932563317-9962c267d8bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWxzfGVufDB8fDB8fHwwg',
    ],
  ),
];
