import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:task_two/components/custom_slider.dart';
import 'package:task_two/utils/style_files.dart';

class BottomSheetScreen extends StatefulWidget {
  BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  List gridData = [
    {
      "imagePath": 'assets/calendar.png',
      "title": 'MFG Year',
      "subTitle": '2021',
    },
    {
      "imagePath": 'assets/calendar_two.png',
      "title": 'Repo Date',
      "subTitle": '26 June 2023',
    },
    {
      "imagePath": 'assets/fuel.png',
      "title": 'Fuel Type',
      "subTitle": 'Petrol',
    },
    {
      "imagePath": 'assets/meter.png',
      "title": 'KM’s Driven',
      "subTitle": '20,000',
    },
    {
      "imagePath": 'assets/location.png',
      "title": 'Yard Location',
      "subTitle": 'Thane | 100 P/D',
    },
    {
      "imagePath": 'assets/gearbox.png',
      "title": 'Transmission',
      "subTitle": 'Automatic',
    },
  ];

  List myNotesList = [
    'Need to be inspected',
    'Need to Bid',
    'No Dents',
    'Overall in Good Condition',
    'Unresponsive Steering'
  ];

  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.4,
            maxChildSize: 1.0,
            minChildSize: 0.4,
            builder: (context, ScrollController) => SingleChildScrollView(
              controller: ScrollController,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mahindra Scorpio N ',
                              style: AppTextStyles.textStyleOne,
                            ),
                            Text(
                              'MH 32 DF 7865   .   2016',
                              style: AppTextStyles.textStyleTwo,
                            )
                          ],
                        ),
                        Icon(
                          Icons.favorite_outline_outlined,
                          color: AppTextStyles.colorRed,
                          size: 32,
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppTextStyles.sizedBox4,
                    ),
                    const CustomSlider(),
                    SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'LAN# 12345678912345678',
                            style: AppTextStyles.textStyleTwelve,
                          ),
                          Image.asset('assets/hdfc_logo.png'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppTextStyles.sizedBox8,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFA7B9FC).withOpacity(
                              0.17), // Set the background color of the first row
                        ),
                        child: Text(
                          'Key Information :',
                          style: AppTextStyles.textStyleFour,
                        )),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    GridView.builder(
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.5,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(gridData[index]['imagePath']),
                            Text(
                              gridData[index]['title'],
                              style: AppTextStyles.textStyleFive,
                            ),
                            Text(
                              gridData[index]['subTitle'],
                              style: AppTextStyles.textStyleSix,
                            ),
                          ],
                        );
                      },
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Set Limit',
                            style: AppTextStyles.textStyleThirteen,
                          ),
                          IconButton(
                            iconSize: 16,
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                          ),
                          const Spacer(),
                          Text(
                            'Auto Bid',
                            style: AppTextStyles.textStyleTen,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          FlutterSwitch(
                            activeColor: Color(0xFF1D1E4E),
                            activeTextColor: Colors.white,
                            inactiveTextColor: Colors.white,
                            width: 56.0,
                            height: 24,
                            valueFontSize: 14.0,
                            toggleSize: 18.0,
                            value: _isSwitched,
                            borderRadius: 30.0,
                            padding: 4.0,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                _isSwitched = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFA7B9FC).withOpacity(
                            0.17), // Set the background color of the first row
                      ),
                      child: Text(
                        'Bank Notes:',
                        style: AppTextStyles.textStyleForteen,
                      ),
                    ),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDBDBDB),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('\u2022'),
                              Expanded(
                                child: Text(
                                  'Once Approval received Payment has to be deposited in 2 working days.',
                                  style: AppTextStyles.textStyleNine,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('\u2022'),
                              Expanded(
                                  child: Text(
                                'All RTO fine need to be check before bidding.',
                                style: AppTextStyles.textStyleNine,
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFA7B9FC).withOpacity(
                              0.17), // Set the background color of the first row
                        ),
                        child: Text(
                          'Legal Identification:',
                          style: AppTextStyles.textStyleFour,
                        )),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'RC no. :',
                              style: AppTextStyles.textStyleFifteen,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('78686765443346',
                                style: AppTextStyles.textStyleTen)
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Chasis no. :',
                              style: AppTextStyles.textStyleFifteen,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('98087665GFU',
                                style: AppTextStyles.textStyleTen)
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'LAN no. :',
                              style: AppTextStyles.textStyleFifteen,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('78686765443346',
                                style: AppTextStyles.textStyleTen)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFA7B9FC).withOpacity(
                              0.17), // Set the background color of the first row
                        ),
                        child: Text(
                          'Insurance Information:',
                          style: AppTextStyles.textStyleFour,
                        )),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Insurance :',
                              style: AppTextStyles.textStyleFifteen,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Yes',
                              style: AppTextStyles.textStyleTen,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Company :',
                              style: AppTextStyles.textStyleFifteen,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Acko Car Insurance',
                              style: AppTextStyles.textStyleTen,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Valid till :',
                              style: AppTextStyles.textStyleFifteen,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '12 June, 2024',
                              style: AppTextStyles.textStyleTen,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFA7B9FC).withOpacity(
                              0.17), // Set the background color of the first row
                        ),
                        child: Text(
                          'My Notes:',
                          style: AppTextStyles.textStyleFour,
                        )),
                    SizedBox(
                      height: AppTextStyles.sizedBox16,
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDBDBDB),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            decoration:
                                InputDecoration(hintText: 'Type something...'),
                          ),
                          TextField(),
                          TextField(),
                          TextField(),
                          SizedBox(
                            height: AppTextStyles.sizedBox4,
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            alignment: WrapAlignment.start,
                            spacing: 10,
                            children: List.generate(
                                myNotesList.length,
                                (index) => Chip(
                                      label: Text(myNotesList[index]),
                                    )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppTextStyles.sizedBox8,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFA7B9FC).withOpacity(
                  0.17), // Set the background color of the first row
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Start ‘s at: ',
                      style: AppTextStyles.textStyleFifteen,
                    ),
                    Text('₹ 20,00,000', style: AppTextStyles.textStyleTen)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time Left:',
                      style: AppTextStyles.textStyleFifteen,
                    ),
                    Text('15 mins',
                        style: AppTextStyles.textStyleFifteen
                            .copyWith(color: Color(0xFFC80303)))
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFC3C3C3)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 16),
                        child: Text(
                          '₹ 1,35,00,000',
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            backgroundColor: const Color(0xFFC3C3C3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                            ),
                            minimumSize: const Size(50, 40),
                          ),
                          onPressed: () {},
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 40),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFED6313),
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  icon: Image.asset('assets/bid_icon.png'),
                  label: const Text('Bid (12)'))
            ],
          ),
        )
      ],
    );
  }
}
