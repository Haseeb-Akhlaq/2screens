import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:screens/medicalHistory_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(),
              ProfileSection(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome to Diseases Diagnosis',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GridItem(
                          image: 'assets/images/grid1.png',
                          title: 'Activity',
                          padding: 0.0,
                        ),
                        GridItem(
                          image: 'assets/images/grid2.png',
                          title: 'Medical History',
                          padding: 10.0,
                        ),
                        GridItem(
                          image: 'assets/images/grid3.jpg',
                          title: 'Nutrition',
                          padding: 10.0,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GridItem(
                          image: 'assets/images/grid4.png',
                          title: 'Symptoms Data',
                          padding: 0.0,
                        ),
                        GridItem(
                          image: 'assets/images/grid5.png',
                          title: 'Sleeping Data',
                          padding: 5.0,
                        ),
                        GridItem(
                          image: 'assets/images/grid6.png',
                          title: 'Body Necessary \n          Data ',
                          padding: 10.0,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GridItem(
                          image: 'assets/images/gird7.png',
                          title: 'Activity',
                          padding: 10.0,
                        ),
                        GridItem(
                          image: 'assets/images/grid8.png',
                          title: 'Medical History',
                          padding: 10.0,
                        ),
                        GridItem(
                          image: 'assets/images/grid9.png',
                          title: 'Nutrition',
                          padding: 10.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MedicalHistoryScreen()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Color(0xff34B67a),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Contact Support',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final image;
  final title;
  final padding;

  GridItem({this.image, this.title, this.padding});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(title)
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffEEEDEE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffc4c4c4)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    'assets/images/users.svg',
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xffc4c4c4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 7),
                            child: Row(
                              children: [
                                Image.asset('assets/images/spoon.png'),
                                Text('  2250 kcal',
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          decoration: BoxDecoration(
                              color: Color(0xffc4c4c4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 7),
                            child: Row(
                              children: [
                                Image.asset('assets/images/workout.png'),
                                Text('  1550 kcal',
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffc4c4c4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            child: Row(
                              children: [
                                Image.asset('assets/images/loss.png'),
                                Text('  65 kG', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffc4c4c4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 5),
                            child: Row(
                              children: [
                                Image.asset('assets/images/walking.png'),
                                Text(' 6550 Steps',
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffc4c4c4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: Row(
                              children: [
                                Image.asset('assets/images/runnign.png'),
                                Text(' 5 Km', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff009952),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SvgPicture.asset('assets/images/logo.svg',
                height: 50, width: 50),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffF2C94C),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('en', style: TextStyle(fontSize: 22)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: SvgPicture.asset('assets/images/menu.svg',
                    height: 28, width: 28),
              ),
            ],
          )
        ],
      ),
    );
  }
}
