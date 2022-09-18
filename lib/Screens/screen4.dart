import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  Icon searchIcon = const Icon(
    Icons.search,
    color: Colors.black,
  );
  Icon back = const Icon(
    Icons.arrow_back,
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
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'screen2');
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
          body: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 380,
                        child: Card(
                          color: Colors.white70,
                          child: Column(children: [
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(top: 40.0),
                                child: Icon(Icons.airplanemode_active_outlined,
                                    size: 35),
                              ),
                              title: const Text('FROM'),
                              subtitle: Row(
                                children: [
                                  Text(
                                    'Chandigarh ',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text('IXC',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 8)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Chandigarh Airport',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 120,
                        width: 380,
                        child: Card(
                          color: Colors.white70,
                          child: Column(children: [
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(top: 40.0),
                                child: Icon(Icons.airplanemode_active_outlined,
                                    size: 35),
                              ),
                              title: const Text('To'),
                              subtitle: Row(
                                children: [
                                  Text(
                                    'New Delhi',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                  const SizedBox(width: 5),
                                  Text('DEL',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 8)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Indian Gandhi International  Airport',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      fontSize: 10),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 120,
                            width: 200,
                            child: Card(
                              color: Colors.white70,
                              child: Column(children: [
                                ListTile(
                                  leading: const Padding(
                                    padding: EdgeInsets.only(top: 40.0),
                                    child: Icon(
                                        Icons.airplanemode_active_outlined,
                                        size: 35),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Text('Departure Date',
                                            style: TextStyle(
                                                color: Colors.blueGrey)),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '04 JUN',
                                                style: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.6)),
                                              ),
                                            ),
                                            const SizedBox(width: 2),
                                            Expanded(
                                              child: Text('Sat, 2022',
                                                  style: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      fontSize: 10)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 120,
                            width: 170,
                            child: Card(
                              color: Colors.white70,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('+ ADD RETURN DATE',
                                        style: TextStyle(
                                            color: Colors.orangeAccent)),
                                    Expanded(
                                      child: Text(
                                        'Save more on round trips',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color:
                                                Colors.black.withOpacity(0.6)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 120,
                        width: 380,
                        child: Card(
                          color: Colors.white70,
                          child: Column(children: [
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Icon(Icons.person, size: 35),
                              ),
                              title: const Text('TRAVELLERS & CLASS'),
                              subtitle: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '01 , Economy / Premimium Economy ',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.6)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),

                      //Special fare Text
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('SPECIAL FARES (OPTIONAL)',
                            style: TextStyle(color: Colors.grey)),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 120,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 75.0,
                                  width: 150.0,
                                  color: Colors.transparent,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0))),
                                      child: const Center(
                                        child: Text(
                                          "Armed forces",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                ),
                                const SizedBox(height: 5),
                                const Text('Refer & Earn',
                                    style:
                                        TextStyle(color: Colors.orangeAccent))
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 75.0,
                                  width: 150.0,
                                  color: Colors.transparent,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0))),
                                      child: const Center(
                                        child: Text(
                                          "Student",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                ),
                                const SizedBox(height: 5),
                                const Text('Refer & Earn',
                                    style:
                                        TextStyle(color: Colors.orangeAccent))
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 75.0,
                                  width: 150.0,
                                  color: Colors.transparent,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0))),
                                      child: const Center(
                                        child: Text(
                                          "Senior Ctizen",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                ),
                                const SizedBox(height: 5),
                                //const Text('Refer & Earn', style:TextStyle(color: Colors.orangeAccent))
                              ],
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(350, 70),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'screen4');
                        },
                        child: const Center(
                          child: Text(
                            'SEARCH FLIGHTS',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),
                      const Divider(
                        color: Colors.black,
                        height: 50,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.sell, color: Colors.orangeAccent),
                                SizedBox(width: 10),
                                Text('OFFERS',
                                    style:
                                        TextStyle(color: Colors.orangeAccent))
                              ],
                            ),
                            Row(
                              children: const [
                                Text('View All',
                                    style:
                                        TextStyle(color: Colors.orangeAccent)),
                                SizedBox(width: 10),
                                Icon(Icons.keyboard_arrow_right_sharp,
                                    color: Colors.orangeAccent),
                              ],
                            )
                          ]),
                    ]),
              ),
            )
          ])),
    );
  }
}
