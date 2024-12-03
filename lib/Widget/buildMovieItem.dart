import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String imagePath;
  final String movie;

  const MovieItem({
    super.key,
    required this.imagePath,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}




 

