import 'package:flutter/material.dart';


class CreateBlog extends StatefulWidget {
  const CreateBlog({super.key});

  @override
  State<CreateBlog> createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  String name = "";
  String title = "";
  String desc = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(""), // Empty title to avoid conflicts
        flexibleSpace: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Civic",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "Pulse",
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Icon(Icons.file_upload))
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              width: MediaQuery.of(context).size.width,
              child: const Icon(
                Icons.add_a_photo,
                color: Colors.black45,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(hintText: "Name"),
                    onChanged: (val) {
                      setState(() {
                        name = val;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: const InputDecoration(hintText: "Title"),
                    onChanged: (val) {
                      setState(() {
                        title = val;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: const InputDecoration(hintText: "Description"),
                    onChanged: (val) {
                      setState(() {
                        desc = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
