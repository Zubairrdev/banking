import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import 'chart.dart';

class DetailPaga extends StatefulWidget {
  const DetailPaga({Key? key}) : super(key: key);

  @override
  State<DetailPaga> createState() => _DetailPagaState();
}

class _DetailPagaState extends State<DetailPaga> {
  var onFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xff3C382D),
              Colors.black,
              Colors.black,
              Colors.red,
              Colors.orangeAccent,
              Color(0xffECD670),
              Color(0xffECD670),
            ],
            radius: 1.4,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Detail',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Icon(
                            Icons.credit_card,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Your Current Balance',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$1847,56',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.upgrade_sharp,
                      color: Colors.green,
                    ),
                    Text(
                      '3.10% More then Last Month',
                      style: TextStyle(
                          color: Colors.green, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 300,
                    child: SfSparkLineChart(
                      color: Colors.yellow,
                      data: <double>[
                        4,
                        1,
                        30,
                        24,
                        100,
                        80,
                        6,
                        30,
                        5,
                        10,
                        23,
                        50,
                        70,
                        20,
                        40,
                        60,
                        80,
                        100
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'D',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'M',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            '6M',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'Y',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'ALL',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        'You have receve a \namong of moneny of from',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: (''),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '-\$152',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          'PayPal',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SwipeableButtonView(
                    onFinish: () {},
                    onWaitingProcess: () {
                      Future.delayed(Duration(seconds: 2), () {
                        setState(() {
                          isFinished:
                          true;
                        });
                      });
                    },
                    activeColor: Color(0xffF2E6CC),
                    buttonWidget: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(
                        Icons.navigate_next_outlined,size: 30,
                        color: Colors.black,
                      ),
                    ),
                    buttonText: 'Conform Payment Now',
                    buttontextstyle: TextStyle(
                      color: Colors.black,///thankyou
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
