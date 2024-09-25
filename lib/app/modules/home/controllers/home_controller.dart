import 'package:get/get.dart';
import 'package:movie_app/app/modules/home/views/movies_view.dart';
import 'package:movie_app/app/modules/home/views/search_view.dart';
import 'package:movie_app/app/modules/home/views/show_view.dart';
import 'package:movie_app/app/modules/home/views/watchlist_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var currentIndex = 0.obs;
  var subviews = [   
    const MoviesView(),
    const WatchlistView(),
    const ShowView(),
    const SearchView(),

    
  ].obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
