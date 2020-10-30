import 'package:WSH/utils/constants.dart';
import 'package:WSH/utils/style.dart';
import 'package:WSH/widgets/bottom_navigation_bar.dart';
import 'package:WSH/widgets/event_container.dart';
import 'package:WSH/widgets/filterBy_widget.dart';
import 'package:WSH/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:WSH/utils/config.dart';

class FindAnEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          "My Profile",
          textAlign: TextAlign.center,
          style: appText.copyWith(
              fontSize: 6.66 * SizeConfig.hmultiplier,
              fontWeight: FontWeight.w400,
              fontFamily: 'Product Sans'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushReplacementNamed(context, 'feedbackpage'),
            icon: Image.asset(
              Images.anyImage + "/appbaricon.png",
            ),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
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
                      margin: EdgeInsets.only(
                        top: 3.72 * SizeConfig.vmultiplier,
                        left: 4.16 * SizeConfig.hmultiplier,
                      ),
                      child: AppTextField(
                        title: 'Search...',
                        icon: null,
                        height: 3.72 * SizeConfig.vmultiplier,
                        width: 69.44 * SizeConfig.hmultiplier,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                        top: 3.72 * SizeConfig.vmultiplier,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, 'calenderpage');
                        },
                        child: Image.asset(Images.anyImage + '/calendar.png'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Filter By :',
                      style: appText.copyWith(
                          fontSize: 6.66 * SizeConfig.hmultiplier,
                          fontWeight: FontWeight.w400),
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
                Container(
                  //TOD0: Dynamic change (needed)_
                  height: 61 * SizeConfig.vmultiplier,
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.all(2.77 * SizeConfig.hmultiplier),
                            child: EventContainer());
                      }),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigation(),
    );
  }
}
