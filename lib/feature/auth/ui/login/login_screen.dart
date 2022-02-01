import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/enviroment/config_reader.dart';
import 'package:note/util/app_const.dart';
import 'package:note/widget/form/email_form_filed.dart';
import 'package:note/widget/form/password_form_filed.dart';
import 'package:note/widget/orange_gradient_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  late AppLocalizations? local;
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
    local = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(local!.loginText),
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
                        EmailTextFormFiled(lable: local!.emailText, textController: _emailController),
                        const SizedBox(height: 16.0),
                        PasswordFormField(lableText: local!.passwordText,textController: _passwordController,focusNode: _passwordFocusNode),                 
                        const SizedBox(height: 24.0),
                        OrangeGradientButton(                                
                              text: local!.loginText,
                              onTapCallBack: () {
                                  
                              },
                        ),
                        Text(ConfigReader.getBaseUrl())                    
                      ],

                    ),
                  ),                  
                )
              ],
            );

          }
          else if (maxWidth > mobileDeviceWidth && maxWidth <= tabDeviceWidth) {
            //is a tablet
            return Center(
              child: Text(local!.tabletNotSupported),
            );

          }
          else {
            //is a desktop
            return Center(
              child: Text(local!.desktopNotSupported),
            );
          }

        })
      ),
    );
  }


}

