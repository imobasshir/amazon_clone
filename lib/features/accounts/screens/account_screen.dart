import 'package:amazon_clone/features/accounts/widgets/app_bar_account.dart';
import 'package:amazon_clone/features/accounts/widgets/below_app_bar.dart';
import 'package:amazon_clone/features/accounts/widgets/orders.dart';
import 'package:amazon_clone/features/accounts/widgets/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarAcc(),
        ),
      body: Column(
        children: const [
          BelowAppBar(),
          SizedBox(height: 10),
          TopButtons(),
          SizedBox(height: 20),
          Orders(),
        ],
      ),
    );
  }
}
