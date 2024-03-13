import 'package:bookly/Features/home/presentation/widgets/books_details_section.dart';
import 'package:bookly/Features/home/presentation/widgets/custom_book_app_bar_details.dart';
import 'package:bookly/Features/home/presentation/widgets/similar_books_section.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 18,
                ),
                CustomBookAppBarDetails(),
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
