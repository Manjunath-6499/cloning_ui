import "package:flutter/material.dart";

class StackUi extends StatefulWidget {
  const StackUi({super.key});

  @override
  State<StackUi> createState() => _StackUiState();
}

class _StackUiState extends State<StackUi> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: h / 2,
                    //color: Colors.white,
                    child: Stack(
                      children: [
                        const Row(
                          children: [Icon(Icons.favorite_border)],
                        ),
                        Positioned(
                          child: Container(
                            decoration: const BoxDecoration(
                              // color: Colors.purple,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/07/07/16/46/dice-1502706_640.jpg",
                                ),
                              ),
                            ),
                            height: 380,
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww"),
                            radius: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.blue,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Madrid City Tour for beginners",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This is made by me",
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 144, 202, 249)),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText("20", Icons.favorite_rounded),
                  rowIconText("34", Icons.upload),
                  rowIconText("82", Icons.message),
                  rowIconText("95", Icons.face),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                  "This handy tool helps you create dummy text for all your layout needs. We are gradually adding new functionality and we welcome your suggestions and feedback."),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(icon),
      ],
    );
  }
}
