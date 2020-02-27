// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(name) => "Hello ${name}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutMe" : MessageLookupByLibrary.simpleMessage("About Me"),
    "aboutMeDescription" : MessageLookupByLibrary.simpleMessage("Hi, I\'m Xstar97!\n\nI live and breathe code and love reading books and watching anime!\nplease checkout of my projects on here or the code on github :)"),
    "greetingMessage" : m0,
    "headerItemGithub" : MessageLookupByLibrary.simpleMessage("Github"),
    "headerItemLinkedIn" : MessageLookupByLibrary.simpleMessage("LinkedIn"),
    "helloWorld" : MessageLookupByLibrary.simpleMessage("Hello World"),
    "launchApp" : MessageLookupByLibrary.simpleMessage("Launch"),
    "projectsTitle" : MessageLookupByLibrary.simpleMessage("Projects"),
    "skillsTitle" : MessageLookupByLibrary.simpleMessage("Skills"),
    "title" : MessageLookupByLibrary.simpleMessage("Xstar97 Portfolio")
  };
}
