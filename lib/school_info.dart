import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SchoolInfo extends StatefulWidget {
  const SchoolInfo({Key? key}) : super(key: key);

  @override
  State<SchoolInfo> createState() => _SchoolInfoState();
}

class _SchoolInfoState extends State<SchoolInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9163D7),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              'assets/schoolinfo.png',
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              height: 553,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 40,left: 24,right: 24),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter your school info',
                        style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff9163D7),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      _textField('School name'),
                      const SizedBox(
                        height: 16,
                      ),
                      _textField('Adress'),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon:  Image.asset('assets/Tick.png',scale: 2,),
                          filled: true,
                          fillColor: const Color(0xffE7D8F8).withOpacity(.30),
                          hintText: 'DIOS code',
                          hintStyle: const TextStyle(color: Color(0xffA9A9B1)),
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE7D8F8), width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE7D8F8), width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon:  Image.asset('assets/icondocument.png',scale: 2,),
                          filled: true,
                          fillColor: const Color(0xffE7D8F8).withOpacity(.30),
                          hintText: 'Upload document',
                          hintStyle: const TextStyle(color: Color(0xffA9A9B1)),
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE7D8F8), width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffE7D8F8), width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 36,
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
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account",
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffA9A9B1),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: (){},
                            child:  const Text('Login',
                              style: TextStyle(color: Color(0xff9163D7),fontSize: 12,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _textField(String title) {
  return TextFormField(
    onChanged: (value) {
      //Do something with the user input.
    },
    style: const TextStyle(color: Colors.black),
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0xffE7D8F8).withOpacity(.30),
      hintText: title,
      hintStyle: const TextStyle(color: Color(0xffA9A9B1)),
      contentPadding:
      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffE7D8F8), width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffE7D8F8), width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
    ),
  );
}




