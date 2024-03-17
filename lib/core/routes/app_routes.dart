import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/get_fetch_similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_views.dart';
import 'package:bookly/Features/search/presentation/views/search_views.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/services/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailseView = '/detailsView';
  static const kSearchView = '/searchView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailseView,
         builder: (context, state) => BlocProvider(
          create: (context) => GetFetchSimilarBooksCubit(getIt.get<HomeRepoImp>()),
          child:  BookDetailsView(bookModel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => GetFetchSimilarBooksCubit(getIt.get<HomeRepoImp>()),
          child: const SearchViews(),
        ),
      ),
    ],
  );
}
