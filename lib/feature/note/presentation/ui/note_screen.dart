
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/note/presentation/controller/note_controller.dart';
import 'package:note/util/failure.dart';
import 'package:note/widget/refresh_widget.dart';

class NoteScreen extends ConsumerStatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends ConsumerState<NoteScreen> {
  
  @override
  void initState() {    
    super.initState();
    ref.read(noteControllerProvider.notifier).getNotes();
  }

  @override
  Widget build(BuildContext context) {
    final notes = ref.watch(noteControllerProvider).notes;
    return notes.when(      
      data: (data) {
        return RefreshWidget(            
          onRefresh: doRefresh,
          child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: data.length,
            itemBuilder: (context, index) {
            final note = data[index];
            return Card(
              shape:  const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.orangeAccent,
                  style: BorderStyle.solid,
                  width: 1.5
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  bottomRight: Radius.circular(32.0)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(note.createdDate),
                      ],
                    ),
                    Text(note.title),
                    const SizedBox(height: 4.0,),
                    Text(note.body),
                    const SizedBox(height: 4.0,),
                    Text(note.status),
                    const SizedBox(height: 4.0,),                         
                    
                  ],
                ),
              ),
            );
          }),
        );
      }, 
      error: (e,s) {
        e as Failure;
        return Center(
          child: Text(e.message,style: const TextStyle(color: Colors.red)),
        );
      }, 
      loading: ()  {
        return const Center(
          child: CircularProgressIndicator(color: Colors.orangeAccent),
        );
      },
    );
      
  }

  Future<void> doRefresh() async{
    ref.read(noteControllerProvider.notifier).getNotes();
  }
}