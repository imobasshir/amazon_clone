import 'package:amazon_clone/features/accounts/services/account_services.dart';
import 'package:amazon_clone/features/accounts/widgets/account_button.dart';
import 'package:amazon_clone/features/order_details/screens/order_user_screen.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: 'Your Orders',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OrderUserScreen(),
                  ),
                );
              },
            ),
            AccountButton(
              text: 'Turn Seller',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(
              text: 'Log Out',
              onTap: () => AccountServices().logOut(context),
            ),
            AccountButton(
              text: 'Wish List',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
