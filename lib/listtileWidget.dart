import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  int count=0;

  void _increment(){
    setState(() {
      count=count+1;
    });
  }

  void _decrement(){
    setState(() {
      count=count-1;
      if(count<0)
        count=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    var deviceWidth=MediaQuery.of(context).size.width;
    return  ListTile(
      
      title: Text('Lorem Ipsum Name'),
      subtitle: Text('Lorem Ipsum Information Price'),
      isThreeLine: true,
      trailing: Container(
        width:MediaQuery.of(context).size.width/2,
        child: Row(
          children: <Widget>[
          Container(
          height: 30,
          width: 105,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onPressed: _decrement,
              ),
              Container(
                child: Center(
                  child: Text(count.toString(),style: TextStyle(color: Colors.white),),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: _increment,
              ),
          ],
          ),
          ),
            SizedBox(
              width: 27,
            ),
            Container(
              child: Text(
                '\$12.00',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}