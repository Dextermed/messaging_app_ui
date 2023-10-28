import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    //controller for the search bar =======
    TextEditingController? myController;

    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: 0 ,
        iconSize: 30,
        height: 55,
        items: [
          FlashyTabBarItem(icon: const Icon(Icons.home), title: const Text('Home') , activeColor: const Color(0xff2a1fdf), inactiveColor: const Color.fromARGB(255, 98, 92, 212),),
          FlashyTabBarItem(icon: const Icon(Icons.person), title: const Text('Friends') , activeColor: const Color(0xff2a1fdf), inactiveColor: const Color.fromARGB(255, 98, 92, 212)),
          FlashyTabBarItem(icon: const Icon(Icons.group_add), title: const Text('Groups') , activeColor: const Color(0xff2a1fdf), inactiveColor: const Color.fromARGB(255, 98, 92, 212)),
        ],
        onItemSelected: (value) {
          
        },


      ),
        

      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                      color: Color(0xff2a1fdf),
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chat_bubble_outline,
                      color: Color(0xff2a1fdf),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Notification UI',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MySearch(
                myController: myController,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  PersonChat(imgLink: "assets/images/hijab.png" , message: "Heyy! can we talk ? 😇 " , name: 'Sofia Ben' , time: '13:00'),
                  PersonChat(imgLink: "assets/images/dude.png" , message: "Hi Imad! are you in town ?" , name: 'Adam Benbrahim' , time: '11:07'),
                  PersonChat(imgLink: "assets/images/man.png" , message: "Mohammed is asking if you can help him with his math exam" , name: 'Alex Jones' , time: '08:32'),
                  PersonChat(imgLink: "assets/images/guy.png" , message: "Fadi Abderahman has sent you a video" , name: 'Fadi Abderahman' , time: '2d ago'),
                  PersonChat(imgLink: "assets/images/M.png" , message: "🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣" , name: 'Midou Dexter' , time: '5d ago'),
                  PersonChat(imgLink: "assets/images/goblin.png" , message: "See you later then." , name: 'Goblin Slayer' , time: '7d ago'),
            
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// your friends messages ===============================================

class PersonChat extends StatelessWidget {
  final String imgLink;
  final String name;
  final String message;
  final String time;
  const PersonChat({
    required this.imgLink,
    required this.name,
    required this.message,
    required this.time,
    
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        imgLink,
                        fit: BoxFit.fill,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    SizedBox(
                      width: 220,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 4.0),
                              child: Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                message,
                                overflow:TextOverflow.ellipsis ,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Divider(thickness: 1.5),
        )
      ],
    );
  }
}

// Search bar ==========================================================

class MySearch extends StatelessWidget {
  final TextEditingController? myController;
  const MySearch({
    required this.myController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),

          )),
      controller: myController,
    );
  }
}
