import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/ShoppingAppProvider.dart';
import '../Widgets/ProductWidget.dart';
import 'ProductdetailsScreen.dart';

class E_CommerceScreen extends StatelessWidget {
  const E_CommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ShoppingAppProvider>(builder: (context, value, child)
      {
        if(value.shoppingAppModel == null)
          {
            value.GetDataProvider();
            return Center(child: CircularProgressIndicator());
          }
        else
          {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: value.shoppingAppModel!.response.length,
              itemBuilder: (context, index) =>
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductdetailsScreen(
                    name:value.shoppingAppModel!.response[index]['name']??"",
                    description:value.shoppingAppModel!.response[index]['description']??"" ,
                    imageUrl:value.shoppingAppModel!.response[index]['imageUrl'] ??"" ,
                    price: value.shoppingAppModel!.response[index]['price']??"",
                  ),));
                },
                child: ProductWidget(
                  imageUrl:value.shoppingAppModel!.response[index]['imageUrl'] ??"" ,
                  description:value.shoppingAppModel!.response[index]['description']??"" ,
                  name:value.shoppingAppModel!.response[index]['name']??"" ,
                  price:value.shoppingAppModel!.response[index]['price']??"" ,
                ),
              ),
            );
          }
      },),
    );
  }
}
