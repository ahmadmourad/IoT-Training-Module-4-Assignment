import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/note.dart';
import 'add_note_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Note> notes = [];

  @override
  void initState() {
    super.initState();
    loadNotes();
  }

  // Load notes from shared preferences
  void loadNotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedNotes = prefs.getStringList('notes');
    if (savedNotes != null) {
      setState(() {
        notes = savedNotes.map((note) => Note.fromJson(note)).toList();
      });
    }
  }

  // Save notes to shared preferences
  void saveNotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedNotes = notes.map((note) => note.toJson()).toList();
    prefs.setStringList('notes', savedNotes);
  }

  // Add a new note
  void addNote(Note note) {
    setState(() {
      notes.add(note);
    });
    saveNotes();
  }

  // Delete a note
  void deleteNoteAt(int index) {
    setState(() {
      notes.removeAt(index);
    });
    saveNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notes[index].title),
            subtitle: Text(notes[index].description),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                deleteNoteAt(index);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final newNote = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNoteScreen()),
          );
          if (newNote != null) {
            addNote(newNote);
          }
        },
      ),
    );
  }
}
