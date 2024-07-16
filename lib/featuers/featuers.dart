import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:selling_products_task/featuers/productItem.dart';
import 'package:selling_products_task/utilities/appAssets.dart';

import '../api/apiManager.dart';
import '../model/SourceRsesponceProduct.dart';
import '../utilities/appTheme.dart';

class Features extends StatefulWidget {
  static const String routeName = "Features";

  Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<SourceResponseProduct?>(
              future: ApiManager.getSources(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(
                      backgroundColor: AppTheme.green,
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(child: Text("Something went wrong")),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            ApiManager.getSources();
                            setState(() {});
                          },
                          child: const Text("Try Again"),
                        ),
                      ),
                    ],
                  );
                } else if (snapshot.hasData) {
                  var productList = snapshot.data?.products;
                  if (productList != null && productList.isNotEmpty) {
                    return MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 2,
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        var product = productList[index];
                        int imageIndex = 0;
                        return ProuductItem(product: product, index: imageIndex);
                      },
                    );
                  } else {
                    return const Center(
                      child: Text("No data found"),
                    );
                  }
                } else {
                  return const Center(
                    child: Text("No data found"),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
