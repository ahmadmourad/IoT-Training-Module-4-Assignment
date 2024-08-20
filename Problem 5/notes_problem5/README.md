## Introduction
The objective of this app was to allow users to add, view, and delete notes while ensuring that the notes are saved even after the app is closed and reopened. This was achieved using the shared_preferences package for persistent storage.
UI/UX Design

## Design 
was kept simple and was created using Figma.

## App Flow:
- Home Screen: Displays the list of notes.
- Floating Action Button: On the main screen, this button allows users to navigate to the second screen (add_note.dart) where they can add a new note.
- Add Note Screen:
    Contains two text fields: one for the note title and another for the note description.
    A "Save Note" button saves the note and returns the user to the home screen.
- Note Display: The newly added note appears on the home screen with a delete button beside it, allowing the user to remove the note if desired.

## Shared Preferences and Persistent Storage idea
- Adding Notes: A new note is created through the two text fields, added to the list, and saved using shared_preferences.
- Deleting Notes: When a user deletes a note, it is removed from the list, and the updated list is saved back to shared_preferences.
- Saving Notes: When a user adds a new note, it is saved to the device's storage. To do this, the note is first converted into a JSON string. These JSON strings are stored in a list, which is then saved using shared_preferences.
- Loading Notes: When the app starts, it loads the saved notes from the device’s storage. The app retrieves the list of JSON strings, converts them back into note objects, and displays them on the main screen.
