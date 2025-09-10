import 'package:flutter/material.dart';
import 'package:reflip_store/ui/views/sidebar/widgets/sidebar_items.dart';
import 'package:stacked/stacked.dart';
import 'sidebar_viewmodel.dart';

class SidebarView extends StackedView<SidebarViewModel> {
  const SidebarView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SidebarViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "ReFlip Store",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: viewModel.closeSidebar,
                    child: const Icon(Icons.close, size: 36),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            SidebarItem(
              icon: Icons.person_outline,
              title: "My Account",
              subtitle: "Edit your details, account settings",
              onTap: viewModel.goToAccount,
            ),
            SidebarItem(
              icon: Icons.shopping_bag_outlined,
              title: "My Orders",
              subtitle: "View all your orders",
              onTap: viewModel.goToOrders,
            ),
            SidebarItem(
              icon: Icons.list_alt_outlined,
              title: "My Listings",
              subtitle: "View your product listing for sale",
              onTap: viewModel.goToListings,
            ),
            SidebarItem(
              icon: Icons.favorite_border,
              title: "Liked Items",
              subtitle: "See the products you have wishlisted",
              onTap: viewModel.goToLiked,
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: viewModel.giveFeedback,
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: const Text("Feedback"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: viewModel.signOut,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: const Text("Sign out"),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Color(0xFFF65E5E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        alignment: Alignment.center,
        child: const Text(
          "ReBuy Inc. Version 1.0",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }

  @override
  SidebarViewModel viewModelBuilder(BuildContext context) => SidebarViewModel();
}
