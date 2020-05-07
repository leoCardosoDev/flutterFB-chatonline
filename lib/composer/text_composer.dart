import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class TextComposer extends StatefulWidget {
  TextComposer(this.sendMessage);

  final Function({String text, File imgFile}) sendMessage;

  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {

  final TextEditingController _textController = TextEditingController();

  bool _isComposing = false;

  void _reset() {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.attach_file),
            onPressed: () async {
              final File imgFile = await ImagePicker.pickImage(source: ImageSource.gallery);
              if(imgFile == null)return;
              widget.sendMessage(imgFile: imgFile);
            },
          ),
          Expanded(
            child: TextField(
              controller: _textController,
              decoration:
                  InputDecoration.collapsed(hintText: "Escreva uma mensagem"),
              onChanged: (text) {
                _isComposing = text.isNotEmpty;
              },
              onSubmitted: (text) {
                widget.sendMessage(text: text);
                _reset();
              },
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              color: Colors.purple,
            ),
            onPressed: _isComposing
                ? () {
                    widget.sendMessage(text: _textController.text);
                    _reset();
                  }
                : null,
          ),
        ],
      ),
    );
  }
}
