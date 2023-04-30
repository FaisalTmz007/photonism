import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/app-icon.png';
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Color(0xFF7972E6), elevation: 0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: RPSCustomPainter(),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  assetName,
                  width: 180,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Login",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: email,
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: password,
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: ElevatedButton(
                              child: Text('tekan'), onPressed: () => null),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have account?'),
                            TextButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => SignupView(),
                                //   ),
                                // );
                              },
                              child: const Text('Signup'),
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
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 175, 1, 113)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0, size.height * 0.0);
    path0.lineTo(size.width * 0.0, size.height * 0.3);
    path0.quadraticBezierTo(size.width * 0.0, size.height * 0.4000000,
        size.width * 0.08, size.height * 0.4000000);
    path0.lineTo(
      size.width * 0.9,
      size.height * 0.4000000,
    );
    path0.quadraticBezierTo(
        size.width * 1, size.height * 0.4, size.width * 1, size.height * 0.45);
    path0.lineTo(size.width * 1, size.height * 0);
    path0.lineTo(size.width * 0.0, size.height * 0.0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
