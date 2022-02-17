
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/note/presentation/ui/add_screen.dart';
import 'package:note/feature/note/presentation/ui/note_screen.dart';
import 'package:note/widget/main_scaffold.dart';


class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  
  @override
  void initState() {    
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {    
    return MainScaffold(
      ['Note','Add Note'],
      [const NoteScreen(),AddScreen()]
      , 
      null
    );
  }  
}