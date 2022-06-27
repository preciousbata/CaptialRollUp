import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _key1 = GlobalKey();
  final _key2 = GlobalKey();
  //final _key3 = GlobalKey();

  @override
  void initState(){
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) => ShowCaseWidget.of(context).startShowCase([
      _key1,
      _key2
    ])
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Showcase(
                      key: _key1,
                      title: '1. Create an Account',
                      description: 'Create an account to get started with your first purchase',
                      shapeBorder: const CircleBorder(),
                      showcaseBackgroundColor: Colors.amberAccent,
                      descTextStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      overlayPadding: const EdgeInsets.all(8),
                      contentPadding: const EdgeInsets.all(20),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.070,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                )
                              ]),
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.menu_rounded,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Discover',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontSize: 22,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.05,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.13,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                )
                              ]),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Icon(Icons.qr_code_scanner_rounded)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'To get started,\nbuy some ETH',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Showcase(
                key: _key2,
                title: '2. Initial Purchase',
                description: 'Select any amount for your initial purchase and proceed to payment',
                showcaseBackgroundColor: Colors.amberAccent,
                descTextStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 16,
                ),
                overlayPadding: const EdgeInsets.all(8),
                contentPadding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer(
                        name: '100',
                        fontColor: Colors.cyanAccent,
                        bgColor: Colors.cyan),
                    buildContainer(
                        name: '200',
                        fontColor: Colors.cyanAccent,
                        bgColor: Colors.cyan),
                    buildContainer(
                        name: '300',
                        bgColor: Colors.purple,
                        fontColor: Colors.purpleAccent),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //other amount
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.076,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white54,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.apps_outage_rounded,
                        color: Colors.black38,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Other amount',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black38,
                            fontSize: 22,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //send eth to your wallet
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.1,
                //color: Colors.amberAccent,
                child: const Text(
                  'or send ETH to\nyour wallet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      letterSpacing: 0.5),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                'Send from Coinbase or another\nexchange---or ask a friend !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 19,
                  color: Colors.black26,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 20.0),
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.076,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.lightBlue[50],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.content_copy_rounded,
                          color: Colors.lightBlueAccent[400],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Copy address',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.lightBlueAccent[400],
                              fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer({
    required String name,
    required Color bgColor,
    required Color fontColor,
  }) {
    return Container(
      height: 100,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 34.0),
        child: Text(
          '\$$name',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: fontColor,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
