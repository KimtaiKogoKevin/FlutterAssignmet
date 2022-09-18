import 'package:flutter/material.dart';
class RoundTripPage extends StatefulWidget {
  const RoundTripPage({Key? key}) : super(key: key);

  @override
  State<RoundTripPage> createState() => _RoundTripPageState();
}

class _RoundTripPageState extends State<RoundTripPage> {
  Icon back = const Icon(
    Icons.arrow_back,
    color: Colors.black,
  );
  Icon searchIcon = const Icon(
    Icons.search,
    color: Colors.black,
  );
  Widget title = const Text(
    'Flights Search',
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:
        AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'screen3');
              },
              child: back),
          backgroundColor: Colors.white70,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (searchIcon.icon == Icons.search) {
                    searchIcon = const Icon(
                      Icons.cancel,
                      color: Colors.black,
                    );
                    title = const ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 28,
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type flight number',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    );
                  } else {
                    searchIcon =
                    const Icon(Icons.search, color: Colors.black);
                    title = const Text('Flights Search',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black));
                  }
                });
              },
              icon: searchIcon,
            )
          ],
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            labelColor: Colors.black,
            tabs: [
              InkWell(onTap: () {
                Navigator.pushNamed(context, 'screen4');
              }, child: const Tab(child: Text('ONE WAY'))),
              InkWell(onTap: () {
                Navigator.pushNamed(context,'roundTripPage');
              }, child: const Tab(child: Text('ROUND TRIP'))),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context,'multiCityPage');

                },
                child: const Tab(
                  child: Text('MULTI CITY'),
                ),
              ),
            ],
          ),
          title: title,
        ),
        body: const Center(child: Text('RoundTrip Page',style: TextStyle(color: Colors.black),)),
      ),
    );
  }
}
