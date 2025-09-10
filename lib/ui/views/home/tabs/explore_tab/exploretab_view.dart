import 'package:flutter/material.dart';
import 'package:reflip_store/ui/widgets/app_header.dart';
import 'package:reflip_store/ui/widgets/searchbar_widget.dart';
import 'package:stacked/stacked.dart';
import '../../home_viewmodel.dart';
import 'widgets/category_bar.dart';
import 'widgets/postcard.dart';

class ExploreTabView extends StatelessWidget {
  final HomeViewModel homeViewModel;
  const ExploreTabView({super.key, required this.homeViewModel});

  @override
  Widget build(BuildContext context) {
    final viewModel = homeViewModel;
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => homeViewModel,
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      AppHeader(
                        title: "Explore",
                        onBack: () {
                          viewModel.goBack();
                        },
                        onMenuTap: () {
                          viewModel.gotoSideBar();
                        },
                      ),
                      const SizedBox(height: 20),
                      SearchbarWidget(),
                      const SizedBox(height: 10),
                      CategoryBar(
                        categories: [
                          "Books",
                          "Music",
                          "Games",
                          "Electronics",
                          "Toys",
                          "Sports",
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 20),
                    itemCount: model.products.length,
                    itemBuilder: (context, index) {
                      final item = model.products[index];
                      return VerticalPostCard(
                        imageUrl: item.image,
                        title: item.title,
                        subtitle: item.subtitle,
                        price: item.price,
                        userName: item.userName,
                        userAvatar: item.userAvatar,
                        isFavorite: item.isFavorite,
                        onFavoriteTap: () => model.toggleFavorite(item),
                        onMoreTap: () => print("More tapped"),
                        onTap: () => model.onProductTapped(item),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
