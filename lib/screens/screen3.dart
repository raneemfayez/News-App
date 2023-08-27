import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree(
      {super.key,
      required this.author,
      required this.description,
      required this.imagrUrl,
      required this.content});
  final String author;
  final String content;
  final String description;
  final String imagrUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 400 / 812,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                "$imagrUrl",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 100, 10, 5),
            height:
                MediaQuery.of(context).size.height * 438 / 812, // width: 50,
            width: double.infinity,

            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),

            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(children: [
                Text("$description"),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text("$content"),
                ),
                SizedBox(
                  height: 20,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 25.0),
                //   child: Text(
                //       " Asked at a press conference Thursday about the\n rising value of cryptocurrencies, Bailey said: “They\n have no intrinsic value. That doesn’t mean to say\n people don’t put value on them, because they can\n have extrinsic value. But they have no intrinsic value"),
                // ),
              ]),
            ),
          ),
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width * 290 / 375,
            height: MediaQuery.of(context).size.height * 141 / 812,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 214, 213, 213),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        // text: 'Sunday, 9 May 2021\n',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        children: [
                          TextSpan(
                            text:
                                'Crypto investors should be\n prepared to lose all their\n money, BOE governor says\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: 'Published by $author',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
            child: const Icon(
              Icons.heart_broken_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
