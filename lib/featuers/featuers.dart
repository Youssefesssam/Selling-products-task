
import 'package:flutter/material.dart';
import 'package:selling_products_task/api/apiManager.dart';
import 'package:selling_products_task/model/SourceRsesponceProduct.dart';
import 'package:selling_products_task/utilities/appTheme.dart';

class Features extends StatelessWidget {
  static const String routeName ="Features";
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FutureBuilder<SourceResponseProduct?>(
        future:ApiManager.getScources() ,
        builder:(context,snapshot){
          if (snapshot.connectionState==ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(backgroundColor: AppTheme.green,)
            );
          }else if(snapshot.hasError){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Something went wrong")),
                Center(child: ElevatedButton(onPressed: (){}, child: Text("TryAgain")))
              ],
            );
          }else if (snapshot.hasData) {
            var product = snapshot.data?.products;
            if (product!= null && product.isNotEmpty) {
              return ListView.builder(
                itemCount: product.length,
                itemBuilder: (context, index) {
                  return ListTile(

                    title: Text(product[index].title ?? "No Name"),
                    subtitle: Text(product[index].description?? "No Description"),
                  );
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
        }
        ,)
    );
  }
}
