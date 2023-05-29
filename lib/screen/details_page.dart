import 'package:flutter/material.dart';
import 'package:simple_date/models/user_model.dart';

class DetailsPage extends StatelessWidget {
  final User user;
  const DetailsPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Details', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                flex: 3,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(user.imageUrl, fit: BoxFit.fill,)),
                      ),
                      Positioned(
                        bottom: 30,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purple.withOpacity(0.5),
                                    Colors.pink.withOpacity(0.5)  
                                  ]
                                ),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const[
                                   Text('Match 80%', style: TextStyle(fontSize: 20, color: Colors.white),),
                                   SizedBox(width: 10,),
                                   Icon(Icons.emoji_emotions_sharp, color: Colors.amberAccent,)
                                ],
                              ),

                            ),
                            Text(user.name, style: const TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w500),),
                            Text('Age, ${user.age}', style: const TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w500),),
                          ],
                        ),),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Image.asset('assets/facebook.png', height: 45,),
                          const SizedBox(height: 5,),
                          const Text('Facebook')

                        ]),
                        Column(children: [
                          Image.asset('assets/instagram.png', height: 45,),
                          const SizedBox(height: 5,),

                          const Text('Instragram')

                        ]),
                         Column(children: [
                          Image.asset('assets/twitter.png', height: 45,),  
                          const SizedBox(height: 5,),
                          const Text('Twitter')

                        ]),
                        Column(children: [
                          Image.asset('assets/tik-tok.png', height: 45,),
                          const SizedBox(height: 5,),
                          const Text('Tik Tok')

                        ]),
                      ],
                    )
                  ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Center(
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purple)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text('ONLINE NOW ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('User Infromation', style: TextStyle(fontSize: 18, color: Colors.grey.shade800),),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            height: 100,
            width: MediaQuery.of(context).size.width,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 150, child: Text('Name :', style: TextStyle(fontSize: 18),)),
                    Text(user.name, style: const TextStyle(fontSize: 18)),
                  ],
                ),
                
                Row(
                  children: [
                    const SizedBox(width: 150, child: Text('Age :', style: TextStyle(fontSize: 18),)),
                    Text(user.age.toString(), style: const TextStyle(fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 150, child: Text('Gender :', style: TextStyle(fontSize: 18),)),
                    Text(user.gender, style: const TextStyle(fontSize: 18)),
                  ],
                ),
                
                
              ],
            ),
          )
        ],
      )
    );
  }
}
