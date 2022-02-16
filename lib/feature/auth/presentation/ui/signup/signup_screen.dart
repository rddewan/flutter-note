
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/presentation/controller/signup/signup_controller.dart';
import 'package:note/feature/auth/presentation/state/signup/signup_state.dart';
import 'package:note/util/build_error_dialog.dart';
import 'package:note/util/failure.dart';
import 'package:note/widget/form/email_form_filed.dart';
import 'package:note/widget/form/name_form_field.dart';
import 'package:note/widget/form/password_form_filed.dart';
import 'package:note/widget/orange_gradient_button.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> { 

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _conformPasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {  
   listenSignupState();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () => closeMaterialBanner(),          
        child: Center(
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [               
                  Consumer(
                    builder: (context,_,child) {
                    if (ref.watch(signupControllPerrovider).isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(color: Colors.orangeAccent)
                      );
                    }
                    return const Text('');                 
                  }),                          
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NameTextFormFiled(
                            lable: 'Name',
                            restorationId: 'name',
                            textController: _nameController,
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          EmailTextFormFiled(
                            lable: 'Email',
                            textController: _emailController,
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          PasswordFormField(
                            lableText: 'Password',
                            textController: _passwordController,
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          PasswordFormField(
                            lableText: 'Confrom Password',
                            textController: _conformPasswordController,
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          OrangeGradientButton(
                              text: 'Register Now',
                              onTapCallBack: () {
                                signup();
                              }),
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

  void signup() {
    final isValid = _formKey.currentState?.validate();
    // validate form
    if (isValid != null && isValid) {
      // validate password match
      if (_passwordController.text == _conformPasswordController.text) {
        // create a signup request
        final request = SignupRequest(
          name: _nameController.text, 
          email: _emailController.text, 
          password: _passwordController.text, 
          confirmPassword: _conformPasswordController.text
        );
        // call the signup function in controller
        ref.read(signupControllPerrovider.notifier).signup(request);
      }
      else {
        buildErrorDialog(context, title: 'Ouch!', msg: 'Passwod did not match');

      }
    }    
  }

  void listenSignupState(){
    ref.listen<SignupState>(signupControllPerrovider, (previous, next) { 
      next.isSignup.when(
        data: (data) {
          if (data) {            
            context.pop();
          }
        }, 
        error: (e,s) {
          e as Failure;
          buildErrorDialog(context, title: 'Ouch!', msg: e.message);
        }, 
        loading: () => const Center(
          child: CircularProgressIndicator(color: Colors.pink,),
        ));
    });

  }

  Future<bool> closeMaterialBanner() async {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    return true;
  }


  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _conformPasswordController.dispose(); 
    super.dispose();
  }
}