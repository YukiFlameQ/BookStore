import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final Function? goBackCallback;
  final String? inputValue;
  final String? defaultInputValue;
  final Function? onCancel;
  final Function? onSearch;
  final ValueChanged<String>? onSearchSubmit;

  const SearchBar(
      {super.key,
      this.goBackCallback,
      this.inputValue,
      this.defaultInputValue,
      this.onCancel,
      this.onSearch,
      this.onSearchSubmit});

  @override  
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController _controller;
  Function? _onClean() {
    _controller.clear();
    setState(() {
    });
    return null;
  }

  @override
  void initState() {
    _controller = TextEditingController(text: widget.inputValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        if (widget.goBackCallback != null)
            GestureDetector(
              child: const Icon(
                Icons.chevron_left,
                color: Colors.black87,
              ),
            ),
          Expanded(
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(18)),
              padding: const EdgeInsets.only(left: 8),
              child: TextField(
                textInputAction: TextInputAction.search,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: -4),
                  hintText: "Please input book or author's name",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.grey,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _onClean();
                    },
                    child: const Icon(
                      Icons.clear,
                      size: 24,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),
          if (widget.onCancel != null)
            GestureDetector(
              child: const Text(
                'Cancle',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
      ],),
    );
  }
}
