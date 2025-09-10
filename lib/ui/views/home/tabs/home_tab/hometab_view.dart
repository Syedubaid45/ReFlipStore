import 'package:flutter/material.dart';
import 'package:reflip_store/ui/views/home/tabs/home_tab/widgets/hometab_header.dart';
import 'package:reflip_store/ui/views/home/tabs/home_tab/widgets/postcard_widget.dart';
import 'package:reflip_store/ui/widgets/searchbar_widget.dart';
import 'package:stacked/stacked.dart';
import '../../home_viewmodel.dart';

class HometabView extends StatelessWidget {
  final HomeViewModel homeViewModel;
  const HometabView({super.key, required this.homeViewModel});

  @override
  Widget build(BuildContext context) {
    final viewModel = homeViewModel;
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => homeViewModel,
      builder: (context, viewModel, child) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HometabHeader(
                    onMenuPressed: () {
                      viewModel.gotoSideBar();
                    },
                  ),
                  const SizedBox(height: 20),
                  SearchbarWidget(),
                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "New Arrivals",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel.products.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 16),
                      itemBuilder: (context, index) {
                        final product = viewModel.products[index];
                        return PostCard(
                          imageUrl: product.image,
                          title: product.title,
                          subtitle: product.subtitle,
                          price: product.price,
                          isFavorite: product.isFavorite,
                          onTap: () {
                            viewModel.onProductTapped(product);
                          },
                          onFavoriteTap: () =>
                              viewModel.toggleFavorite(product),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recently Viewed",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel.products.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 16),
                      itemBuilder: (context, index) {
                        final product = viewModel.products[index];
                        return PostCard(
                          imageUrl: product.image,
                          title: product.title,
                          subtitle: product.subtitle,
                          price: product.price,
                          isFavorite: product.isFavorite,
                          onTap: () {
                            viewModel.onProductTapped(product);
                          },
                          onFavoriteTap: () =>
                              viewModel.toggleFavorite(product),
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
