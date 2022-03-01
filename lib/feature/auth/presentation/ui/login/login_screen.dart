import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:note/base/base_consumer_state.dart';
import 'package:note/core/route/name_route.dart';
import 'package:note/feature/auth/infrastructure/dto/request/login/login_request.dart';
import 'package:note/feature/auth/presentation/controller/login/login_controller.dart';
import 'package:note/feature/auth/presentation/state/login/login_state.dart';
import 'package:note/util/build_error_dialog.dart';
import 'package:note/util/failure.dart';
import 'package:note/widget/form/email_form_filed.dart';
import 'package:note/widget/form/password_form_filed.dart';
import 'package:note/widget/orange_gradient_button.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends BaseConsumerState<LoginScreen> {  
  final RestorableString _email = RestorableString('');
  final RestorableString _password = RestorableString('');
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

    textEditingControllerListener();
  }

  @override
  void dispose() {    
    _emailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {   
    listenLoginState();
    final appState = ref.watch(loginControllerProvider).isPaused;

    return Scaffold(
      appBar: AppBar(
        title: Text(translations.loginText),
        centerTitle: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context,constraints) {
          if (appState) {
            return Container(
              color: Colors.black,
            );
          }
          else {
            return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [                        
                      Consumer(builder: (context,ref,child) {
                        if (ref.watch(loginControllerProvider).isLoading){
                          return const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child:  CircularProgressIndicator(),
                            ),
                          );                            
                        }
                        return const Text('');
                      }),
                      EmailTextFormFiled(
                        lable: translations.emailText, 
                        textController: _emailController),
                      const SizedBox(height: 16.0),
                      PasswordFormField(
                        lableText: translations.passwordText,
                        textController: _passwordController,
                        focusNode: _passwordFocusNode
                      ),
                      const SizedBox(height: 24.0),
                      OrangeGradientButton(                                
                            text: translations.loginText,
                            onTapCallBack: () {
                              login();                             
                            },
                      ),
                      const SizedBox(height: 24.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have a account? | ", style: TextStyle(fontSize: 16.0,)),
                          InkWell(
                            onTap: () => context.goNamed(signupNameRoute),
                            child: const Text("Signup Now", style: TextStyle(color: Colors.blueAccent,fontSize: 18.0),)
                          )
                        ],
                      )
                                        
                    ],
                
                  ),
                ),                  
              )
            ],
          );         
        

          }
          },
        ),
      ),
    );
  }

  void login(){
    // validate form
    final isValid = _formKey.currentState?.validate();

    if (isValid != null && isValid) {
      final request = LoginRequest(
        email: _emailController.text, 
        password: _passwordController.text
      );

      // call the controller function to login
      ref.read(loginControllerProvider.notifier).login(request);
    }
  }

  void listenLoginState(){
    ref.listen<LoginState>(loginControllerProvider, (previous, next) { 
      next.isLogedin.when(
        data: (data) {
          if (data) {
            context.goNamed(homeNameRoute);
          }
        }, 
        error: (e,s) {
          e as Failure;
          buildErrorDialog(context, title: 'Ouch!', msg: e.message);
        }, 
        loading: () => null
      );

    });
  }
  
  void textEditingControllerListener() {
    _emailController.addListener(() { 
      _email.value = _emailController.text;      
    });

    _passwordController.addListener(() { 
      _password.value = _passwordController.text;   
      
    });
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {   
    super.restoreState(oldBucket,initialRestore);

    registerForRestoration(_email, 'login_email');
    registerForRestoration(_password, 'login_password');    
    _emailController.value = TextEditingValue( text: _email.value); 
    _passwordController.value = TextEditingValue(text: _password.value); 
  } 

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {    
    switch (state) {
      case AppLifecycleState.inactive: 
        ref.read(loginControllerProvider.notifier).setPausedState();
        debugPrint(state.toString());         
        break;
      case AppLifecycleState.paused:          
        debugPrint(state.toString());
        break;
      case AppLifecycleState.detached:        
        debugPrint(state.toString());
        break;
      case AppLifecycleState.resumed:             
        ref.read(loginControllerProvider.notifier).setPausedState();
        debugPrint(state.toString());
        break;      
      
    }
  } 
  
}

