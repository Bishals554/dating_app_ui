import 'package:flutter/material.dart';
import 'package:simple_date/models/user_model.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: (){}),
        title: const Text('Home Page', style: TextStyle(color: Colors.black),),
      ),

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(users[index].imageUrl, fit: BoxFit.fill,)),
            ),
            Positioned(
              bottom: 80,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(users[index].name, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                      SizedBox(width: 10,),
                      Text('19', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 10,),

                      Text('Recently Active', style: TextStyle(color: Colors.white),)
                    ],
                  )                  

                ],
              ),
            ),
            Positioned(
              bottom: 100,
              right: 40,
              child: IconButton(icon: Icon(Icons.favorite, color: Colors.white, size: 40,),onPressed: (){}, ))

          ]
          
        );
      }
      )
    );
  }
}