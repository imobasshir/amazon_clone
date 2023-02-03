import 'package:amazon_clone/features/admin/screens/add_product_screen.dart';
import 'package:amazon_clone/features/admin/services/admin_services.dart';
import 'package:amazon_clone/models/product.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Product>? products;
  final AdminServices adminServices = AdminServices();

  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  fetchAllProducts() async {
    products = await adminServices.fetchAllProducts(context);
    setState(() {});
  }

  // void deleteProduct(Product product, int index) {
  //   adminServices.deleteProduct(
  //     context: context,
  //     product: product,
  //     onSuccess: () {
  //       products!.removeAt(index);
  //       setState(() {});
  //     },
  //   );
  // }

  void navigateToAddProduct() {
    Navigator.pushNamed(context, AddProductScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    // return products == null
    // ? const Center(child: CircularProgressIndicator())
    // :
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AddProductScreen.routeName);
        },
        tooltip: 'Add Product',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // body: GridView.builder(
      //   itemCount: products!.length,
      //   gridDelegate:
      //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   itemBuilder: (context, index) {
      //     final productData = products![index];
      //     return Column(
      //       children: [
      //         // SizedBox(
      //         //   height: 140,
      //         //   child: SingleProduct(
      //         //     image: productData.images[0],
      //         //   ),
      //         // ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Expanded(
      //               child: Text(
      //                 productData.name,
      //                 overflow: TextOverflow.ellipsis,
      //                 maxLines: 2,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               // onPressed: () => deleteProduct(productData, index),
      //               icon: const Icon(
      //                 Icons.delete_outline,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     );
      //   },
      // ),
      body: const Center(
        child: Text('Product Screen'),
      ),
    );
  }
}
