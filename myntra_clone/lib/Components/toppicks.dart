import 'package:flutter/material.dart';
import 'package:myntra_clone/widgets/theme.dart';

class topPicks extends StatelessWidget {
  const topPicks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 1.8;
    final double itemWidth = size.width / 1.5;
    return Container(
      color:Colors.white,
     child: GridView.count(
  // Create a grid with 2 columns. If you change the scrollDirection to
  // horizontal, this produces 2 rows.
  crossAxisCount: 2,
  childAspectRatio: (itemWidth / itemHeight),
  // crossAxisSpacing: 10,
  // mainAxisSpacing: 10,
  // Generate 100 widgets that display their index in the List.
  children: [
    
    Material(
      child: InkWell(
        
        child: Image.asset('assets/images/sarees.jpg'),
        
      ),
    ),
     Material(
      child: InkWell(
        
        child: Image.asset('assets/images/kurtas.jpg'),
        
      ),
    ),
     Material(
      child: InkWell(
        
        child: Image.asset('assets/images/Dresses.jpg'),
        
      ),
    ),
     Material(
      child: InkWell(
        child: Image.asset('assets/images/jeans.jpg'),
        
      ),
    ),
  ],
),
    

    );
  }
}
