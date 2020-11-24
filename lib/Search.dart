import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searched_word="";
  List test_list=['a','b','e', 'd', 'e'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.purple,
          child: Column(
            children: [
              SizedBox(
                height: 149,
                child: Row(
                  children: [
                    SizedBox(
                    width: 260,
                        height: 65,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextField(
                            onChanged: (word)=>searched_word=word,
                            decoration: InputDecoration(
                             fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.white),
                                borderRadius: new BorderRadius.circular(25.7),
                              ),

                            ),
                          ),
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: RaisedButton(
                        child: Text('Search',
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                        color: Colors.deepPurpleAccent,
                        onPressed: (){},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),

                        ),
                      ),
                    )

                  ],
                ),
              ),
              Container(
                  height: 478.4,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft:  Radius.circular(20)
                    ),
                  ),
                child: ListView.builder(
                  itemCount: test_list.length,

                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12
                          ),
                          color: Colors.deepPurple
                        ),
                        height: 120,

                        child: Text(test_list[index]),
                      ),
                    );
                  },
                ),
              )
            ],
          )
      ),
    );
  }
}
