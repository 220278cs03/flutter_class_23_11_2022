import 'package:flutter/material.dart';

import 'model/model.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  // List listOfAvatar = [
  //   "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
  //   "https://media.istockphoto.com/id/1351147752/photo/studio-portrait-of-attractive-20-year-old-bearded-man.jpg?b=1&s=170667a&w=0&k=20&c=N-Uwgbn8qhGypoXFB6keEEC3mW0qhNynAqBqd8oNJw0=",
  //   "https://image.shutterstock.com/image-photo/stock-photo-head-shot-young-attractive-businessman-in-glasses-standing-in-modern-office-pose-for-camera-250nw-1854697390.jpg"
  // ];
  //
  // List listOfImage = [
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY17vSrb5T72H_SYlCWiDuVFtDmzjxNINcAXkE6j2VLXAW5Wz65e1ye9VnjAKWNnodAVg&usqp=CAU",
  //   "https://www.advantour.com/img/uzbekistan/cuisine/pilaf.jpg",
  //   "https://cdn.dribbble.com/userupload/3221720/file/original-c52652a671ea4f45e1211843f834bcdb.png?resize=400x0",
  // ];
  //
  // List listOfName = [
  //   "Jacob Jones",
  //   "Jerome Bell",
  //   "Cameron Williamson",
  // ];
  //
  // List listOfusername = ["@jacob_32", "@j_Bell", "@cam_will"];
  //
  // List listOfText = [
  //   "📢 Community & Government",
  //   "🍟 Food",
  //   "💃 Design & Style"
  // ];
  //
  // List listOfTitle = [
  //   "Video Games: The most interesting video games",
  //   "Food: The most delicious food in the world",
  //   "Design: The most beautiful design"
  // ];
  //
  // List listOfDescription = [
  //   "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some...",
  //   "Uzbek palov is defined as the most delicious food in the world. Also, it is traditional food of Uzbekistan",
  //   "There are many types of design, however, 3D designs are more advanced ones"
  // ];

  List listOfPrice = ["from \$25.99 ", "from \$1.02 ", "from \$20.00 "];

  List<My_Models> list = [
    My_Models(
        avatar:
            "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY17vSrb5T72H_SYlCWiDuVFtDmzjxNINcAXkE6j2VLXAW5Wz65e1ye9VnjAKWNnodAVg&usqp=CAU",
        name: "Jacob Jones",
        username: "@jacob_32",
        text: "📢 Community & Government",
        title: "Video Games: The most interesting video games",
        description:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some...",
        price: "from \$25.99 "),
    My_Models(
        avatar:
            "https://media.istockphoto.com/id/1351147752/photo/studio-portrait-of-attractive-20-year-old-bearded-man.jpg?b=1&s=170667a&w=0&k=20&c=N-Uwgbn8qhGypoXFB6keEEC3mW0qhNynAqBqd8oNJw0=",
        image: "https://www.advantour.com/img/uzbekistan/cuisine/pilaf.jpg",
        name: "Jerome Bell",
        username: "@j_Bell",
        text: "🍟 Food",
        title: "Food: The most delicious food in the world",
        description:
            "Uzbek palov is defined as the most delicious food in the world. Also, it is traditional food of Uzbekistan",
        price: "from \$1.02 "),
    My_Models(
        avatar:
            "https://image.shutterstock.com/image-photo/stock-photo-head-shot-young-attractive-businessman-in-glasses-standing-in-modern-office-pose-for-camera-250nw-1854697390.jpg",
        image:
            "https://cdn.dribbble.com/userupload/3221720/file/original-c52652a671ea4f45e1211843f834bcdb.png?resize=400x0",
        name: "Cameron Williamson",
        username: "@cam_will",
        text: "💃 Design & Style",
        title: "Design: The most beautiful design",
        description:
            "There are many types of design, however, 3D designs are more advanced ones",
        price: "from \$20.00 ")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.grey.withOpacity(0.3),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hi, Alice Smith! 👋",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                        "Let’s see the updates, new interactions of followed creators on your feed.",
                        style: TextStyle(
                            color: Color(0xff62687B),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: list.length, //listOfAvatar.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 11),
                              child: Row(
                                children: [
                                  Container(
                                    width: 36,
                                    height: 36,
                                    margin: const EdgeInsets.only(right: 13),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(list[index]
                                                    .avatar //listOfAvatar[index],
                                                ),
                                            fit: BoxFit.cover),
                                        border:
                                            Border.all(color: Colors.black)),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        list[index].name, //listOfName[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                      Text(list[index].username,
                                          //listOfusername[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xff62687B))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  image: DecorationImage(
                                      image: NetworkImage(list[index].image),
                                      //listOfImage[index]),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6))),
                              child: Text(
                                list[index].text, //listOfText[index],
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Text(list[index].title, //listOfTitle[index],
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(list[index].description,
                                  //listOfDescription[index],
                                  style: const TextStyle(
                                      color: Color(0xff62687B),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(listOfPrice[index],
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                Container(
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                      border: Border.all(color: Colors.black)),
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 28, right: 28),
                                  child: const Center(
                                      child: Text(
                                    "Details",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
