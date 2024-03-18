import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.grey[200],
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.android,
                color: Colors.green[500],
                size: 36,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'App Title',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Hello World Text',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                backgroundColor: Colors.white70,
                color: Colors.black,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Android Icon',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    backgroundColor: Colors.white70,
                    color: Colors.black,
                  ),
                ),

                Icon(
                  Icons.android,
                  size: 84,
                  color: Colors.green,
                ),
              ],
            ),
            Image.network(
              'https://picsum.photos/seed/picsum/536/354',
              width: 400,
              height: 200,
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              'images/img.png',
              width: 400,
              height: 200,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
