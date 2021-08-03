import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MedicalHistoryScreen extends StatelessWidget {
  const MedicalHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff34B67a),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/grid2.png',
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          '   Users personal interest data collection',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 19.0,
                                color: Colors.black.withOpacity(1),
                              ),
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1,
                                color: Colors.black.withOpacity(1),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Questions(question: 'Did you like junk food ? '),
                      SizedBox(height: 30),
                      Questions(
                          question:
                              'Did you drink hard and soft drinks more than 3 times in a week ? '),
                      SizedBox(height: 30),
                      Questions(
                          question: 'Your family member has heart disease?'),
                      SizedBox(height: 30),
                      Questions(
                          question:
                              'Are you exercise more than three times a week ?'),
                      SizedBox(height: 30),
                      Questions(
                          question:
                              'Are you happy with your current lifestyle ?'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                color: Color(0xff34B67a),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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

class Questions extends StatelessWidget {
  final question;

  const Questions({this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'poppins',
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              width: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.15),
                  )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                child: Text(
                  'Yes',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'poppins',
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xfff53737),
                    width: 1.3,
                  )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                child: Text(
                  'No',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'poppins',
                    color: Color(0xfff53737),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
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
                  padding: const EdgeInsets.all(6),
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
