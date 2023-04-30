import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/app-icon.png';

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Color(0xFF7972E6), elevation: 0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: TargetPainter(),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  assetName,
                  width: 180,
                ),
                const Text(text: "TEMAN AGRO"),
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
                        const TextJudul(
                          text: "Login",
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FieldTextLogin(
                          contoller: email,
                          hintText: "Email",
                        ),
                        const SizedBox(height: 20),
                        Password(password: password),
                        const SizedBox(height: 30),
                        Center(
                          child: CustomButton(
                            isDisabled: false,
                            title: 'Sign in',
                            loading: ref.watch(authNotifierProvider).maybeWhen(
                                orElse: () => false, loading: () => true),
                            onPressed: () =>
                                ref.read(authNotifierProvider.notifier).login(
                                      email: email.text,
                                      password: password.text,
                                    ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have account?'),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupView(),
                                  ),
                                );
                                ref.invalidate(profileAvatarNotifierProvider);
                                ref.invalidate(passProvider);
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
