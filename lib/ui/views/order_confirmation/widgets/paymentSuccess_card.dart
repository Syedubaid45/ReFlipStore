import 'package:flutter/material.dart';

class PaymentSuccessCard extends StatelessWidget {
  final int totalAmount;

  const PaymentSuccessCard({Key? key, required this.totalAmount})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: screenW * 0.8),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 80),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  const TextSpan(text: "Your payment for\n"),
                  TextSpan(
                    text: "₹ ${totalAmount.toString()}\n",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const TextSpan(text: "is successful"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
