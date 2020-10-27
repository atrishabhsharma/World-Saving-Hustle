import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/event_container.dart';
import 'package:WSH/widgets/filterBy_widget.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';

class FindAnEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(left: 72),
                child: Text(
                  'Find an Event',
                  style: appText.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 40),
                child: FlatButton(
                  onPressed: null,
                  child: Image.asset(Images.anyImage + '/appbaricon.png'),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(Images.anyImage + '/background.png',
                  fit: BoxFit.fill),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 15),
                      child: AppTextField(
                        title: '     Search...',
                        icon: null,
                        height: 40,
                        width: 250,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 25,
                      ),
                      child: FlatButton(
                        onPressed: null,
                        child: Image.asset(Images.anyImage + '/calendar.png'),
                      ),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Filter By :',
                        style: appText.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                      FilterByWidget(
                        title: 'Distance',
                        onPressed: null,
                      ),
                      FilterByWidget(
                        title: 'Date',
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                Container(
                  //TOD0: Dynamic change (needed)_
                  height: 470,
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.all(10),
                            child: EventContainer());
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
