import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AdminAppBar extends StatefulWidget {
  const AdminAppBar({super.key});

  @override
  State<AdminAppBar> createState() => _AdminAppBarState();
}

class _AdminAppBarState extends State<AdminAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: GlobalVariables.appBarGradient,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/images/amazon_in.png',
              width: 120,
              height: 45,
              color: Colors.black,
            ),
          ),
          const Text(
            'Admin',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/auth-screen');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
