import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solution_challenge/screens/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 350,
                child: Text('image'),
              ),
              ClipPath(
                // clipper: CurvedClipper(),
                child: Container(
                  // height: 488,
                  decoration: const BoxDecoration(
                    color: Color(0xff243e32),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const Center(
                        child: Text(
                          'Welcome!',
                          style: TextStyle(
                              fontSize: 32,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 100,
                              child:
                                  Divider(thickness: 3, color: Colors.white)),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                              child: Text(
                            'Sign up with Email',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 100,
                            child: Divider(
                              thickness: 3,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Full Name',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Demo Name',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Emial',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Demo Email',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Password',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: '***********',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: 314,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                              width: 80,
                              child: Divider(
                                color: Colors.white,
                                thickness: 4,
                              )),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            ' Sign up with',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          CupertinoButton(
                            minSize: double.minPositive,
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: const Icon(Icons.facebook,
                                color: Colors.white, size: 20),
                            onPressed: () {},
                          ),
                          CupertinoButton(
                            minSize: double.minPositive,
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: const Icon(Icons.social_distance,
                                color: Colors.white, size: 20),
                            onPressed: () {},
                          ),
                          const SizedBox(
                              width: 80,
                              child: Divider(
                                color: Colors.white,
                                thickness: 4,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already Registered? ',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LogInScreen(),
                                  ));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3758333, size.height * 0.3557143);
    path_0.quadraticBezierTo(size.width * 0.3745833, size.height * 0.5207143,
        size.width * 0.3741667, size.height * 0.5757143);
    path_0.lineTo(size.width * 0.5416667, size.height * 0.5728571);
    path_0.quadraticBezierTo(size.width * 0.5410417, size.height * 0.4057143,
        size.width * 0.5408333, size.height * 0.3500000);
    path_0.cubicTo(
        size.width * 0.5162500,
        size.height * 0.3525714,
        size.width * 0.4235833,
        size.height * 0.2794286,
        size.width * 0.3758333,
        size.height * 0.3557143);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
