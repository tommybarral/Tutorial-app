import 'package:flutter/material.dart';
import 'package:tutorial_app/content_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final List<String> _explanation = [
    'assets/exp1.PNG',
    'assets/exp2.PNG',
    'assets/exp3.PNG',
  ];

  final List<String> _title = [
    'your virtual Nurse',
    'Health reminder',
    'Your caring partner',
  ];

  final List<String> _subTitle = [
    'It is very easy to take care of ownself, find your virtual nurse today to keep yourself healthy.',
    'We will always remind your medication schedule. It is now our responsability to protect your health.',
    'We are not your regular doctor but we are more than a doctor. We will always remind your health process.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: PageView.builder(
              itemCount: _explanation.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.red.withOpacity(0.3), offset: const Offset(0, 10), blurRadius: 5),
                              ],
                            ),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) {
                                      return const ContentScreen();
                                    }));
                              },
                              color: Colors.red[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text('Skip', style: TextStyle(fontSize: 18, color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.78,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            height: 510,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3, style: BorderStyle.solid),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SizedBox(
                                    height: 330,
                                    width: double.infinity,
                                    child: Image.asset(
                                      _explanation[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(_title[index], textAlign: TextAlign.justify, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(_subTitle[index], style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 65,
                            left: 160,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  _explanation.length, (indexDots) {
                                return Container(
                                  height: 8,
                                  width: index == indexDots ? 18 : 8,
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: index == indexDots
                                        ? Colors.blue
                                        : Colors.grey,
                                  ),
                                );
                              }),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 170,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(color: Colors.lightBlue.withOpacity(0.6), offset: Offset(0, 7), blurRadius: 5),
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.lightBlue[700],
                                child: const Icon(Icons.arrow_forward),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 170,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) {
                                      return const ContentScreen();
                                    }));
                              },
                              color: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text('Sign up', style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w700),),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                    colors: [Colors.greenAccent, Colors.green], begin: Alignment.topCenter, end: Alignment.bottomCenter
                                ),
                                boxShadow: [
                                  BoxShadow(color: Colors.greenAccent.withOpacity(0.5), offset: Offset(0,5), blurRadius: 5),
                                ]
                            ),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) {
                                      return const ContentScreen();
                                    }));
                              },
                              elevation: 0,
                              color: Colors.transparent,
                              child: const Text('Log in', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
          ),
        )
    );
  }
}