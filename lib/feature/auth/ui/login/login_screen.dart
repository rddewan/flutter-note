import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/util/app_const.dart';
import 'package:note/widget/form/email_form_filed.dart';
import 'package:note/widget/form/password_form_filed.dart';
import 'package:note/widget/orange_gradient_button.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends ConsumerState<ConsumerStatefulWidget>  {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late FocusNode _passwordFocusNode;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {    
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context,constraints) {
          final maxWidth = constraints.maxWidth;
          if (maxWidth <= mobileDeviceWidth) {
            //is a mobile device
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        EmailTextFormFiled(lable: 'Email', textController: _emailController),
                        const SizedBox(height: 16.0),
                        PasswordFormField(lableText: 'Password',textController: _passwordController,focusNode: _passwordFocusNode),                 
                        const SizedBox(height: 24.0),
                        OrangeGradientButton(                                
                              text: 'Login',
                              onTapCallBack: () {
                                  
                              },
                        ),
                      
                      ],

                    ),
                  ),                  
                )
              ],
            );

          }
          else if (maxWidth > mobileDeviceWidth && maxWidth <= tabDeviceWidth) {
            //is a tablet
            return const Center(
              child: Text('Tablet device is not supported'),
            );

          }
          else {
            //is a desktop
            return const Center(
              child: Text('Desktop device is not supported'),
            );
          }

        })
      ),
    );
  }


}

