import 'package:flutter/material.dart';
import '../../widgets/transaction_item.dart';
import '../../widgets/bottom_nav_bar.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7FB),
      appBar: AppBar(
        title: const Text("Transactions"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TransactionItem(
            title: "Starbucks",
            date: "Food & Drinks",
            amount: "\$8.50",
            icon: Icons.local_cafe,
          ),
          TransactionItem(
            title: "Gas Station",
            date: "Transportation",
            amount: "\$45.00",
            icon: Icons.local_gas_station,
          ),
          TransactionItem(
            title: "Salary",
            date: "Income",
            amount: "+\$2,500.00",
            icon: Icons.account_balance_wallet,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}
