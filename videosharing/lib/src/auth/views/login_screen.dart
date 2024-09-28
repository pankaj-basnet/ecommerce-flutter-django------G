import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:videosharing/common/services/storage.dart';
import 'package:videosharing/common/utils/kcolors.dart';
import 'package:videosharing/common/widgets/app_style.dart';
import 'package:videosharing/common/widgets/back_button.dart';
import 'package:videosharing/common/widgets/custom_button.dart';
import 'package:videosharing/common/widgets/email_textfield.dart';
import 'package:videosharing/common/widgets/password_field.dart';
import 'package:videosharing/common/utils/app_routes.dart';
import 'package:videosharing/src/auth/controllers/auth_notifier.dart';
import 'package:videosharing/src/auth/models/login_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _usernameController =
      TextEditingController();
  late final TextEditingController _passwordController =
      TextEditingController();
  final FocusNode _passwordNode = FocusNode();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: AppBackButton(
          onTap: () {
            context.go('/home');
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 60.h,
            // height: 160.h, //isn
          ),
          Center(
            child: Text(
              "Thrift+ fashion",
              // style: appStyle(24, Kolors.kPrimary, FontWeight.bold),
              style: TextStyle(
                  fontSize: 24,
                  color: Kolors.kPrimary,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
            ),
            child: Column(
              children: [
                EmailTextField(
                  radius: 25,
                  focusNode: _passwordNode,
                  hintText: "Username",
                  controller: _usernameController,
                  prefixIcon: Icon(
                    CupertinoIcons.profile_circled,
                    size: 20,
                    color: Kolors.kGray,
                  ),
                  keyboardType: TextInputType.name,
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(_passwordNode);
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                PasswordField(
                  controller: _passwordController,
                  focusNode: _passwordNode,
                  radius: 25,
                ),
                SizedBox(
                  height: 20.h,
                ),
                context.watch<AuthNotifier>().isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Kolors.kPrimary,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Kolors.kWhite),
                        ),
                      )
                    : CustomButton(
                        onTap: () {
                          LoginModel model = LoginModel(
                              password: _passwordController.text,
                              username: _usernameController.text);

                          String data = loginModelToJson(model);

                          print('---- $data');

                          context.read<AuthNotifier>().loginFunc(data, context);

                          // final accessToken = Storage().getString('accessToken') ?? 'no access token'; //sn=
                          // context.read<AuthNotifier>().getUser(accessToken, context); //sn=
                        },
                        text: "L  O  G  I  N",
                        // btnWidth: 200,
                        btnWidth: ScreenUtil().screenWidth, // isn=
                        btnHieght: 40, // mb= sn=
                        // btnHieght: 35, // mb= isn=
                        radius: 20,
                      )
              ],
            ),
          )
        ],
      ),

      // #####################      bottomNavigationBar      #####################

      bottomNavigationBar: SizedBox(
        // height: 100.h, // this causes bottomNavigationBar "register" to disappear
        // height: 120.h, // sn=  this causes bottomNavigationBar to half disappear
        // height: 200.h, // sn=  this causes bottomNavigationBar to move up
        height: 130.h, // isn=
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 110.0),
            child: GestureDetector(
              onTap: () {
                context.push('/register');
              },
              child: Text(
                'Do not have an account? Register a new one',
                // style: appStyle(12, Colors.blue, FontWeight.normal),
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
      ),

      //
    );
  }
}
