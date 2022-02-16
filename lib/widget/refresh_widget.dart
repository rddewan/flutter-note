import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class RefreshWidget extends ConsumerWidget {
  final Widget child;
  final Future Function() onRefresh;
  
  const RefreshWidget({required this.child, required this.onRefresh, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (Platform.isAndroid) {
      return _androidRefreshIndicator();      
    }
    return _iosRefreshIndicator();

  }

  Widget _androidRefreshIndicator() {
    return RefreshIndicator(
      color: Colors.white,
      backgroundColor: Colors.pinkAccent,
      child: child, 
      onRefresh: onRefresh
    );
  }

  Widget _iosRefreshIndicator() {
    return CustomScrollView(
      physics: const  BouncingScrollPhysics(),
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: onRefresh,
        ),
        SliverToBoxAdapter(child: child,)           
      ],
      
    );

  }
}