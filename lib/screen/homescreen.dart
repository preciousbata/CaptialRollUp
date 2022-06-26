import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.amberAccent,
                    ),
                  ),
                  const SizedBox(
                    width: 96,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.070,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                    width: 6,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                          )
                        ]),
                    child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Icon(Icons.qr_code_scanner_rounded)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              //color: Colors.amberAccent,
              child: const Text(
                'To get started,\nbuy some ETH',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                  letterSpacing: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //mini container for 100 dollars
            Row(
              children: [
                buildContainer(context,
                    name: '100',
                    fontColor: Colors.cyanAccent,
                    bgColor: Colors.cyan),
                buildContainer(context,
                    name: '200',
                    fontColor: Colors.cyanAccent,
                    bgColor: Colors.cyan),
                buildContainer(context,
                    name: '300',
                    bgColor: Colors.purple,
                    fontColor: Colors.purpleAccent),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //other amount
            Container(
              height: MediaQuery.of(context).size.height * 0.076,
              width: MediaQuery.of(context).size.width * 0.58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
              height: 85,
            ),
            //send eth to your wallet
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              //color: Colors.amberAccent,
              child: const Text(
                'or send ETH to\nyour wallet',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
              //color: Colors.amberAccent,
              child: const Text(
                'Send from Coinbase or another\nexchange---or ask a friend !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 19,
                  color: Colors.black26,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.076,
                width: MediaQuery.of(context).size.width * 0.58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.lightBlue[50],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
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
    );
  }

  Widget buildContainer(BuildContext context,
      {required String name,
      required Color bgColor,
      required Color fontColor}) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.13,
        width: MediaQuery.of(context).size.width * 0.30,
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
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}
