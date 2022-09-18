import 'package:flutter/material.dart';
class Screen3 extends StatelessWidget {
  const Screen3({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'screen2');
          },
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
              'Welcome Aboard',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Complete your profile to make your booking faster'),
            const SizedBox(height: 30),
            SizedBox(
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusColor: Colors.orangeAccent,
                  labelStyle: const TextStyle(color: Colors.orangeAccent),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                      const BorderSide(color: Colors.black, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                    const BorderSide(color: Colors.black, width: 2.0),
                  ),
                  labelText: 'Full Name',
                  hintText: 'XYZ',
                ),

              ),
            ),
            SizedBox(height: 10),
            Center(
              child: SizedBox(
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white70,
                    minimumSize: const Size(350, 70),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'screen4');
                  },
                  child: const Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
