
import 'package:flutter/material.dart';
import 'package:hive_crud_app/models/note_model.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({super.key});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {

  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Note"
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              style: const TextStyle(
                fontSize: 28
              ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Title"
          ),
              ),
            const SizedBox(height: 5),
            TextFormField(
              controller: bodyController,
              style: const TextStyle(
                  fontSize: 24
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Body"
              ),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(titleController.text.isEmpty){
            return;
          }
          if(bodyController.text.isEmpty){
            return;
          }

          final note = Note(
              title: titleController.text,
              body: bodyController.text
          );
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
