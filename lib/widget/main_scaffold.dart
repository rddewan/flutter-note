import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:note/core/route/name_route.dart';
import 'package:note/feature/auth/presentation/controller/signout/signout_controller.dart';
import 'package:note/feature/auth/presentation/state/signout/signout_state.dart';


class MainScaffold extends ConsumerStatefulWidget {
  const MainScaffold(this.title, this.widget, this.fab, {Key? key})
      : super(key: key);
  final String title;
  final Widget widget;
  final FloatingActionButton? fab;

  @override
  ConsumerState<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends ConsumerState<MainScaffold> {
  @override
  void initState() {    
    super.initState();   
  }

  @override
  Widget build(BuildContext context) {  
    // Listen to logout event
    _logoutListener();

    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(child: widget.widget),
      floatingActionButton: widget.fab,
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      centerTitle: true,
      actions: [
        Theme(
          data: Theme.of(context).copyWith(
              dividerColor: Colors.orange,
              iconTheme: const IconThemeData(color: Colors.white)
            ),
          child: PopupMenuButton<int>(
            onSelected: (value) => _onItemSelected(context, value, ref),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                      size: 24.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text('Setting')
                  ],
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Colors.grey,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text('Signout')
                    ],
                  )
              )
            ],
          ),
        ),
      ],
    );
  }

  void _onItemSelected(BuildContext context, int item, WidgetRef ref) {
    switch (item) {
      case 0: 
        context.goNamed(settingNameRoute);
        break;    
      case 1: 
         ref.read(signoutControllerProvider.notifier).signout();
         break;      
      default:
        break;
    }
  }

  void _logoutListener() {
     // listen to logout state if logout success then navigate to login screen
    ref.listen<SignoutState>(signoutControllerProvider, (previous, next) { 
      next.isLogout.when(
        data: (data) {

          if(data) {
            context.goNamed(defaultNameRoute);
          }   

        }, 
        error: (e,s) => null, 
        loading: () => null
      );
    });
  }
}
