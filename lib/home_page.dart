//import 'package:flutter_icons/flutter_icons.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_search_app/widgets/horizontal_axis_container.dart';
import 'package:job_search_app/model/list_hcontainer.dart';
import 'package:job_search_app/model/list_vcontainer.dart';
import 'package:job_search_app/widgets/vertical_container.dart'; // import 'package:antdesign_icons/antdesign_icons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListHContainer listHContainer = ListHContainer();
  ListVContainer listVContainer = ListVContainer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey)
              ),
              child: Icon(
                FontAwesomeIcons.bars,
                size: 30,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Discover a New Path',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for a job ...',
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    FontAwesomeIcons.filter,
                    size: 35,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'For You',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listHContainer.horizContain.length,
                  itemBuilder: (context, index) {
                    return HorizontalContainer(
                      companyName:
                          listHContainer.horizContain[index].companyName,
                      jobType: listHContainer.horizContain[index].jobType,
                      jobTitle: listHContainer.horizContain[index].jobTitle,
                      hourlyRate: listHContainer.horizContain[index].hourlyRate,
                      bgColor: listHContainer.horizContain[index].bgColor,
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recently Added',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listVContainer.verticalContain.length,
                    itemBuilder: (context, index) {
                      return VerticalContainer(
                        jobTitle:
                            listVContainer.verticalContain[index].jobTitle,
                        companyName:
                            listVContainer.verticalContain[index].companyName,
                        companyImageName: listVContainer
                            .verticalContain[index].companyImageName,
                        hourlyRate:
                            listVContainer.verticalContain[index].hourlyRate,
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
