import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap:(){ Navigator.pushNamed(context, 'screen1');},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white70,
        actions: [
          InkWell(
            onTap: () {},
            child: const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'SKIP',
                style: TextStyle(color: Colors.blueGrey ,fontSize: 20),
              ),
            )),
          )
        ],
      ),
      body: Container(
        height: 750,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Verify your Mobile Number',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('OTP has been sent to MOBILE'),
            const SizedBox(height: 30),
            SizedBox(
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusColor: Colors.orangeAccent,
                  labelStyle: const TextStyle(color: Colors.orangeAccent),
                  suffixIcon: const Icon(
                    Icons.cancel,
                    color: Colors.orangeAccent,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                  ),
                  labelText: 'Enter OTP',
                  hintText: '123456',
                  counterText: '12s',
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'screen3');
                },
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'screen3');
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'screen3');
                    },
                    child: const Text(
                      'Resend OTP',
                      style: TextStyle(color: Colors.orangeAccent),
                    ),
                  ),
                ),
                Text(
                  'Verify OTP',
                  style: TextStyle(color: Colors.orangeAccent),
                )
              ],
            ),
            SizedBox(height:20),
            const Text('By pressing this, I agree to receiving critical messages such as OTP booking details on Whatsapp', style: TextStyle(color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
