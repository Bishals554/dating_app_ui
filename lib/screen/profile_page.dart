import 'package:flutter/material.dart';




class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text('Profile', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Stack(
                children: [
                  Container(
                    color: Colors.amber,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network('https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/333447932_549671063631140_3746730517902871524_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=pKL18stN9DMAX-536CC&_nc_ht=scontent.fktm17-1.fna&oh=00_AfDS2LHQFm9QnUZKpl0aN9cCk9xLhHvlGp_BLaUqZVuixA&oe=6479E466', fit: BoxFit.cover,),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      height: 180,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ClipOval(
                          child: Image.network('https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/333447932_549671063631140_3746730517902871524_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=pKL18stN9DMAX-536CC&_nc_ht=scontent.fktm17-1.fna&oh=00_AfDS2LHQFm9QnUZKpl0aN9cCk9xLhHvlGp_BLaUqZVuixA&oe=6479E466', fit: BoxFit.cover,),
                        ),
                      )
                      ),
                      
                    ),
                 
                ],
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text('Rojan Parajuli', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const Text('3.7K', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  const SizedBox(width: 5,),
                  Text('followers', style: TextStyle(fontSize: 16,  color: Colors.black.withOpacity(0.7)),),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  const Text('1.2K', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  const SizedBox(width: 5,),
                  Text('following', style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.7)),),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ElevatedButton.icon(icon: const Icon(Icons.add),onPressed: (){},style: ElevatedButton.styleFrom(minimumSize: const Size(190, 35)), label:const Text('Add to story', style: TextStyle(fontSize: 16),)),
                  const SizedBox(width: 10,),
                  ElevatedButton.icon(icon: const Icon(Icons.insert_chart_outlined_outlined, color: Colors.black,
                  ),onPressed: (){}, style: ElevatedButton.styleFrom(minimumSize: const Size(190, 35), backgroundColor: Colors.grey), label: const Text('See dashboard', style: TextStyle(fontSize: 16, color: Colors.black),)),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(icon: Icon(Icons.edit), onPressed: (){}, label: Text('Edit Profile', style: TextStyle(fontSize: 16),), style: ElevatedButton.styleFrom(minimumSize: const Size(320, 35)),),
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.grey
                  ),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)))
              ],
            ),
            
          ],
        ),
      ),
      );
  }
}