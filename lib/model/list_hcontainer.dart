import 'package:job_search_app/widgets/horizontal_axis_container.dart';

import 'package:flutter/material.dart';

class ListHContainer {
  List<HorizontalContainer> horizContain = [
    HorizontalContainer(
      companyName: 'images/uber.png',
      jobType: 'Full Time',
      jobTitle: 'UI/UX Designer',
      hourlyRate: '\$45/h',
      bgColor: Colors.purple,
    ),
    HorizontalContainer(
      companyName: 'images/google.png',
      jobType: 'Part Time',
      jobTitle: 'Product Designer',
      hourlyRate: '\$55/h',
      bgColor: Colors.orange,
    ),
    HorizontalContainer(
      companyName: 'images/apple.png',
      jobType: 'Full Time',
      jobTitle: 'Software Designer',
      hourlyRate: '\$65/h',
      bgColor: Colors.yellow,
    ),
    HorizontalContainer(
      companyName: 'images/huawei.jpg',
      jobType: 'Part Time',
      jobTitle: 'Build Designer',
      hourlyRate: '\$75/h',
      bgColor: Colors.blue,
    ),
    HorizontalContainer(
      companyName: 'images/facebook.png',
      jobType: 'full Time',
      jobTitle: 'Consumer Marketing',
      hourlyRate: '\$95/h',
      bgColor: Colors.greenAccent,
    ),
  ];
}
