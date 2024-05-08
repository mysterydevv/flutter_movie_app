import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie/list_item.dart';
import 'package:movie/slider_item.dart';
import 'package:movie/actor1.dart';
import 'package:movie/actor2.dart';
import 'package:movie/actor3.dart';
import 'package:movie/actor4.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixApp(),
    );
  }
}

class NetflixApp extends StatefulWidget {
  @override
  _NetflixAppState createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {
  List<String> movieCarousselUrl = [
    "https://uhdwallpapers.org/uploads/cache/2304409865/episode-ix-star-wars-the-rise-of-skywalker_400x225-lm-90.webp",
    "https://uhdwallpapers.org/uploads/cache/3174554657/star-wars-the-rise-of-skywalker-new-poster_400x225-mm-90.webp",
    "https://uhdwallpapers.org/uploads/cache/4037679902/star-wars-the-rise-of-skywalker_400x225-mm-90.webp",
    "https://uhdwallpapers.org/uploads/cache/481703579/star-wars-jedi-fallen-order-screenshot_400x225-mm-90.webp",
  ];
  List<String> movieImageUrl = [
    " ",
    "https://media1.popsugar-assets.com/files/thumbor/_Y6oB0T-CGM5NdIEq6rnMm9Amzw/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2016/02/25/897/n/1922398/0c3085a3_edit_img_image_39413828_1450206428_DaisyRidley/i/Daisy-Ridley.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Mark_Hamill_by_Gage_Skidmore_2.jpg/372px-Mark_Hamill_by_Gage_Skidmore_2.jpg",
    "https://media.newyorker.com/photos/5ee699d1044afe4ecdbf6784/1:1/w_1600,h_1600,c_limit/Ross-JohnWilliams01.jpg",
    " ",
  ];

  double userReviewRating = 0;
  String userReviewComment = "";

  List<Review> reviews = [];

  void submitReview() {
    Review review = Review(rating: userReviewRating, comment: userReviewComment);

    setState(() {
      reviews.add(review);
    });

    setState(() {
      userReviewRating = 0;
      userReviewComment = "";
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Review submitted successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text("M T R B", style: TextStyle(color: Colors.red)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Star Wars: Episode IX",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 12.0),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  height: 280.0,
                  enlargeCenterPage: true,
                ),
                items: [
                  sliderItem(movieCarousselUrl[0], " "),
                  sliderItem(movieCarousselUrl[1], " "),
                  sliderItem(movieCarousselUrl[2], " "),
                  sliderItem(movieCarousselUrl[3], " "),
                ],
              ),
              Text(
                "Actors and Stuff",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 360.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ActorPage("Mark Richard Hamill")),
                        );
                      },
                      child: listItem(movieImageUrl[2], "Mark Richard Hamill"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Actor2Page()),
                        );
                      },
                      child: listItem(movieImageUrl[0], "Jeffrey Jacob Abrams"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Actor3Page()),
                        );
                      },
                      child: listItem(movieImageUrl[1], "Daisy Ridley"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Actor4Page()),
                        );
                      },
                      child: listItem(movieImageUrl[3], "John Williams"),
                    ),
                  ]
                ),
              ),
              SizedBox(height: 20),
              // Review section
              Text(
                "Add Your Review",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Slider(
                value: userReviewRating,
                min: 0,
                max: 5,
                divisions: 5,
                onChanged: (value) {
                  setState(() {
                    userReviewRating = value;
                  });
                },
                label: userReviewRating.toString(),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  setState(() {
                    userReviewComment = value;
                  });
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Enter your review comments (optional)',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Button to submit review
              ElevatedButton(
                onPressed: () {
                  submitReview();
                },
                child: Text("Submit Review", style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
              ),
              SizedBox(height: 20),
              // Display submitted reviews
              Text(
                "Reviews",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              // Display list of reviews
              Container(
                height: 200, // Set a fixed height to contain the reviews
                child: ListView(
                  // Use a ListView to make the reviews scrollable
                  children: reviews.map((review) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Rating: ${review.rating}, Comment: ${review.comment}',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Review {
  final double rating;
  final String comment;

  Review({required this.rating, required this.comment});
}
