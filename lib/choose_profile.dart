import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseProfile extends StatefulWidget {
  const ChooseProfile({Key? key}) : super(key: key);

  @override
  State<ChooseProfile> createState() => _ChooseProfileState();
}

class _ChooseProfileState extends State<ChooseProfile> {
  bool student = false;
  bool teacher = false;
  bool parent = false;
  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffffffff),
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(
                     height: 425,
                     width: double.infinity,
                      child: Image.asset(
                  'assets/fillname.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26, right: 26, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How you gonna use this app?',
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff9163D7),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 151,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              student
                                  ? Card(
                                      title: 'Student',
                                      subtitle:
                                          'Eager to learn and grow?\nJoin as a student to access\nknowledge, engage with\npeers, and thrive. ',
                                      onPress: () {
                                        setState(() {
                                          student = false;
                                          visibility = true;
                                        });
                                      },
                                      image: Image.asset(
                                        'assets/Student.png',
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                  : _appButtton(
                                      "Student",
                                      () {
                                        setState(() {
                                          student = true;
                                          visibility = false;
                                        });
                                      },
                                      visibility,
                                    ),
                              teacher
                                  ? Card(
                                      title: 'Teacher',
                                      subtitle:
                                          'Inspire and educate the\nfuture generation. Opt for\nthe teacher profile to share\nknowledge and mentor\nstudents.',
                                      onPress: () {
                                        setState(() {
                                          teacher = false;
                                          visibility = true;
                                        });
                                      },
                                      image: Image.asset(
                                        'assets/Teacher.png',
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                  : _appButtton(
                                      "Teacher",
                                      () {
                                        setState(() {
                                          teacher = true;
                                          visibility = false;
                                        });
                                      },
                                      visibility,
                                    ),
                            ],
                          ),
                          parent
                              ? Card(
                                  title: 'Parent',
                                  subtitle:
                                      "Ready to empower your\nchild's education journey?\nChoose the parent profile\nto support and monitor\nprogress.",
                                  onPress: () {
                                    setState(() {
                                      parent = false;
                                      visibility = true;
                                    });
                                  },
                                  image: Image.asset(
                                    'assets/Parent.png',
                                    fit: BoxFit.fill,
                                  ),
                                )
                              : _appButtton("Parent", () {
                                  setState(() {
                                    parent = true;
                                    visibility = false;
                                  });
                                }, visibility),
                          // AppButton(title: 'Parent'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff9163D7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                          ),
                        ),
                        child: const Text('Next'),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }

  Widget _appButtton(String title, VoidCallback onPress, bool visibility) {
    return Visibility(
      visible: visibility,
      child: SizedBox(
        width: 152,
        height: 43,
        child: OutlinedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffE7D8F8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPress;
  final Widget image;
  const Card({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onPress,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Stack(
        children: [
          Container(
            height: 151,
            width: 340,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: image,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  maxLines: 5,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Second child
        ],
      ),
    );
  }
}
