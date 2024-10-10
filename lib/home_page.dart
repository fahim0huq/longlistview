import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final products=List<String>.generate(100,(index)=>"Products $index");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long_listview"),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index)
          {
            return ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(products[index]),
              onTap: (){
                Fluttertoast.showToast(msg: "product $index");
              },
            );
          }
      ),
    );
  }
}
