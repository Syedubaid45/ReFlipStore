import 'package:flutter/material.dart';
import 'package:reflip_store/ui/views/payment/widgets/paymentcard_widget.dart';

class PaymentCardSelector extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const PaymentCardSelector({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return PaymentCardWidget(
            cardTitle: "Credit Card",
            cardNumber: "**** **** **** ${1234 + index}",
            expiry: "12/2${5 + index}",
            isSelected: selectedIndex == index,
            onTap: () => onSelect(index),
          );
        },
      ),
    );
  }
}
