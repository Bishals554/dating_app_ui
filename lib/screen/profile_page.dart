import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Stack(
                children: [
                  Container(
                    color: Colors.amber,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/333447932_549671063631140_3746730517902871524_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=pKL18stN9DMAX-536CC&_nc_ht=scontent.fktm17-1.fna&oh=00_AfDS2LHQFm9QnUZKpl0aN9cCk9xLhHvlGp_BLaUqZVuixA&oe=6479E466',
                      fit: BoxFit.cover,
                    ),
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
                            child: Image.network(
                              'https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/333447932_549671063631140_3746730517902871524_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=pKL18stN9DMAX-536CC&_nc_ht=scontent.fktm17-1.fna&oh=00_AfDS2LHQFm9QnUZKpl0aN9cCk9xLhHvlGp_BLaUqZVuixA&oe=6479E466',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Rojan Parajuli',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        const Text(
                          '3.7K',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'followers',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          '1.2K',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'following',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        ElevatedButton.icon(
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(190, 35)),
                            label: const Text(
                              'Add to story',
                              style: TextStyle(fontSize: 16),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton.icon(
                            icon: const Icon(
                              Icons.insert_chart_outlined_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(190, 35),
                                backgroundColor: Colors.grey),
                            label: const Text(
                              'See dashboard',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          label: const Text(
                            'Edit Profile',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(330, 35),
                              backgroundColor: Colors.grey.shade400),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: TabBar(
                          controller: _tabController,
                          indicatorPadding: EdgeInsets.zero,
                          labelPadding: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.black,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue.withOpacity(0.2)),
                          tabs: [
                            Tab(
                              child: Text(
                                'Post',
                                style: TextStyle(
                                  color: _tabController.index == 0
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'About',
                                style: TextStyle(
                                  color: _tabController.index == 1
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Video',
                                style: TextStyle(
                                  color: _tabController.index == 2
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                              ),
                            ),
                            Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'More',
                                    style: TextStyle(
                                      color: _tabController.index == 3
                                          ? Colors.blue
                                          : Colors.black,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: _tabController.index == 3
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                          onTap: (index) {
                            setState(() {
                              _tabController.index = index;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),

                  Flexible(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                  ),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),


                ],
              ),
            ),
            

            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
