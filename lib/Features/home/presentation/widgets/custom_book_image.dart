import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: const DecorationImage(
              image: NetworkImage(
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQXcDlHNozqv7pTHrrHPQxnpzr11SHatJoolvMV0IHZxEgfEu3I",
              ),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
      ),
    );
  }
}
