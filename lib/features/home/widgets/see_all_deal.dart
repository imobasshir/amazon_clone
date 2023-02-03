import 'package:amazon_clone/features/home/widgets/app_bar_home.dart';
import 'package:flutter/material.dart';

class SeeAllDeal extends StatefulWidget {
  static const String routeName = '/see_all_deal';
  const SeeAllDeal({super.key});

  @override
  State<SeeAllDeal> createState() => _SeeAllDealState();
}

class _SeeAllDealState extends State<SeeAllDeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MyAppBar(),
      ),body: ListView(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10.0, top: 15.0),
            child: const Text(
              'Deal of the Day',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Image.network(
            'https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Fuji/2020/May/Hero/Fuji_TallHero_45M_v2_1x._CB432458380_.jpg',
            height: 235,
            fit: BoxFit.fitHeight,
            width: double.infinity,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15),
            child: const Text(
              '\$50',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
            child: const Text(
              'Name Of Product',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1512054502232-10a0a035d672?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1512054502232-10a0a035d672?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1512054502232-10a0a035d672?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1512054502232-10a0a035d672?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1512054502232-10a0a035d672?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1512054502232-10a0a035d672?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1512054502232-10a0a035d672?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                  fit: BoxFit.fitWidth,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
