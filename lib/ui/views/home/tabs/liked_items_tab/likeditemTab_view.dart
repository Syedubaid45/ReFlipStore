import 'package:flutter/material.dart';
import 'package:reflip_store/ui/widgets/app_header.dart';
import 'package:stacked/stacked.dart';
import '../../home_viewmodel.dart';
import 'widgets/likeditem_card.dart';

class LikedItemsView extends StatelessWidget {
  final HomeViewModel homeViewModel;
  const LikedItemsView({super.key, required this.homeViewModel});

  @override
  Widget build(BuildContext context) {
    final viewModel = homeViewModel;
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => homeViewModel,
      builder: (context, model, child) {
        final likedProducts = model.likedProducts;

        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  AppHeader(
                    title: "Liked Items",
                    onBack: () {
                      viewModel.goBack();
                    },
                    onMenuTap: () {
                      viewModel.gotoSideBar();
                    },
                  ),
                  const SizedBox(height: 20),
                  likedProducts.isEmpty
                      ? const Expanded(
                          child: Center(child: Text("No liked items yet")),
                        )
                      : Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.all(16),
                            itemCount: likedProducts.length,
                            itemBuilder: (context, index) {
                              final item = likedProducts[index];
                              return LikedItemCard(
                                imageUrl: item.image,
                                title: item.title,
                                subtitle: item.subtitle,
                                price: item.price,
                                isFavorite: item.isFavorite,
                                onFavoriteTap: () => model.toggleFavorite(item),
                                onTap: () => model.onProductTapped(item),
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
