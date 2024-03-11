import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_two/bottom_sheet_screen.dart';
import 'package:task_two/utils/style_files.dart';

class TaskTwo extends StatelessWidget {
  TaskTwo({super.key});

  List cardData = [
    {
      "imagePath": 'assets/car_one.png',
      "title": 'Honda City DFRE Auto',
      "subTitle": 'MH 56 WP 2346',
      "time": '10 mins',
      "status": 'Not Bid'
    },
    {
      "imagePath": 'assets/car_two.png',
      "title": 'Mahindra Scorpio N ',
      "subTitle": 'MH 32 DF 7865',
      "time": '10 mins',
      "status": 'Not Bid'
    },
    {
      "imagePath": 'assets/car_four.png',
      "title": 'Maruti Wagon R',
      "subTitle": 'MH 34 FB 3465',
      "time": '10 mins',
      "status": 'Not Bid'
    },
    {
      "imagePath": 'assets/car_twelve.png',
      "title": 'Suzuki Swift DLR',
      "subTitle": 'MH 32 RT 4468',
      "time": '10 mins',
      "status": 'Not Bid'
    },
    {
      "imagePath": 'assets/car_seven.png',
      "title": 'Honda City DFRE Auto',
      "subTitle": 'MH 67 ER 0945',
      "time": '10 mins',
      "status": 'Not Bid'
    },
    {
      "imagePath": 'assets/car_eight.png',
      "title": 'Mahindra XYLO Suv',
      "subTitle": 'MH 23 HN 5569',
      "time": '10 mins',
      "status": 'Not Bid'
    },
    {
      "imagePath": 'assets/car_nine.png',
      "title": 'Suzuki Swift VFR',
      "subTitle": 'MH 32 DF 7865',
      "time": '10 mins',
      "status": 'Not Bid'
    },
    {
      "imagePath": 'assets/car_eleven.png',
      "title": 'Nissan Neo ZMR',
      "subTitle": 'MH 56 WP 2346',
      "time": '10 mins',
      "status": 'Not Bid'
    },
    {
      "imagePath": 'assets/car_thirteen.png',
      "title": 'Mahindra XYLO Suv',
      "subTitle": 'MH 43 DX 9847',
      "time": '10 mins',
      "status": 'Not Bid'
    },
  ];

  // final List<String> imagePaths = [
  //   'assets/car_one.png',
  //   'assets/car_two.png',
  //   'assets/car_four.png',
  //   'assets/car_twelve.png',
  //   'assets/car_seven.png',
  //   'assets/car_eight.png',
  //   'assets/car_nine.png',
  //   'assets/car_eleven.png',
  //   'assets/car_thirteen.png',
  // ];
  // final List<String> titleNames = [
  //   'Honda City DFRE Auto',
  //   'Mahindra Scorpio N ',
  //   'Maruti Wagon R',
  //   'Suzuki Swift DLR',
  //   'Honda City DFRE Auto',
  //   'Mahindra XYLO Suv',
  //   'Suzuki Swift VFR',
  //   'Nissan Neo ZMR',
  //   'Mahindra XYLO Suv',
  // ];
  // final List<String> subtitleNames = [
  //   'MH 56 WP 2346',
  //   'MH 32 DF 7865',
  //   'MH 34 FB 3465',
  //   'MH 32 RT 4468',
  //   'MH 67 ER 0945',
  //   'MH 23 HN 5569',
  //   'MH 32 DF 7865',
  //   'MH 56 WP 2346',
  //   'MH 43 DX 9847',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: cardData.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4,
              child: ListTile(
                  onTap: () {
                    _showbottomSheet(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  tileColor: Colors.white,
                  leading: Image.asset(cardData[index]['imagePath']),
                  subtitle: Row(
                    children: [
                      Text(
                        cardData[index]['subTitle'],
                        style: AppTextStyles.textStyleSubtitle,
                      ),
                      Text(
                        ' . ',
                        style: AppTextStyles.textStyleSubtitle,
                      ),
                      Text(
                        ' 2016',
                        style: AppTextStyles.textStyleSubtitle,
                      ),
                    ],
                  ),
                  title: Text(
                    cardData[index]['title'],
                    style: AppTextStyles.textStyleTitles,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(cardData[index]['time'],
                          style: AppTextStyles.textStyleTime),
                      Text(
                        cardData[index]['status'],
                        style: AppTextStyles.textStyleStatus,
                      )
                    ],
                  )),
            );
          }),
    );
  }

  void _showbottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useSafeArea: true,
      builder: (BuildContext context) {
        // Build the bottom sheet content
        return BottomSheetScreen();
      },
    );
  }
}
