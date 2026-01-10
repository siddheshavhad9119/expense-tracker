import 'package:flutter/material.dart';

import '../../widgets/balance_card.dart';
import '../../widgets/expense_chart.dart';
import '../../widgets/transaction_item.dart';
import '../../widgets/bottom_nav_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, John",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              "Here's your summary",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: BalanceCard(
                    title: "Total Balance",
                    amount: "\$4,850.75",
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: BalanceCard(
                    title: "Monthly Spending",
                    amount: "\$1,240.50",
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ExpenseChart(),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Transactions",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            TransactionItem(
              title: "Groceries",
              date: "Apr 18",
              amount: "\$120.44",
              icon: Icons.shopping_cart,
            ),

            TransactionItem(
              title: "Uber Ride",
              date: "Apr 17",
              amount: "\$25.80",
              icon: Icons.directions_car,
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
    );
  }
}
