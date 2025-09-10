import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'account_viewmodel.dart';
import 'widgets/info_field.dart';

class AccountView extends StackedView<AccountViewModel> {
  const AccountView({super.key});

  @override
  Widget builder(
    BuildContext context,
    AccountViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Profile Image
                      const CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage("assets/profile.jpg"),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Alice Eve",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            "alice.eve@gmail.com",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: viewModel.closeView,
                    child: const Icon(Icons.close, size: 36),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                "My account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Info fields
              const InfoField(label: "Name:", value: "Alice Eve"),
              const SizedBox(height: 16),
              const InfoField(label: "Email:", value: "alice.eve@gmail.com"),
              const SizedBox(height: 16),
              const InfoField(label: "Phone:", value: "+1 561-230-0033"),
              const SizedBox(height: 16),
              const InfoField(
                label: "Address:",
                value:
                    "Alice Eve\n2074, Half and Half Drive\nHialeah, Florida - 33012\nPh: +1 561-230-0033",
                maxLines: 4,
              ),

              const SizedBox(height: 28),

              // Settings Button
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: OutlinedButton.icon(
                  onPressed: viewModel.goToSettings,
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 14,
                    ),
                  ),
                  icon: const Icon(Icons.settings_outlined),
                  label: const Text("Settings"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  AccountViewModel viewModelBuilder(BuildContext context) => AccountViewModel();
}
