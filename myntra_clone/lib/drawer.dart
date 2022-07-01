
import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xfff5f5f5),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Awnish Kumar"), 
              accountEmail: Text("awnishsinha462@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"), ),),
              
              Padding(
                padding: EdgeInsets.all(6),
                child: const ListTile(
                  leading: Icon(
                    Icons.category,
                  ),
                  title: Text("Shop by Category",textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.bold),),
                  
                ),
              ),
              Divider(height: 2,thickness: 2,),
              ListTile(
                leading: Icon(Icons.book_online_outlined
              ),
              title:Text("Order",textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.bold),)
              ),
              Divider(thickness: 2,),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Contact Us",textScaleFactor: 1.2,),),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("Legal",textScaleFactor: 1.2,),
                )
              

            
          ],
        ),
      ),
    );
  }
}
