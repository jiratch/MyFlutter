import 'package:flutter/material.dart';

class RedeemProlist extends StatelessWidget {
  const RedeemProlist({
    Key key,
    @required this.items,
    @required this.items2,
  }) : super(key: key);

  final List<String> items;
  final List<String> items2;

  @override
  Widget build(BuildContext context) {
    return Container(    
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(35, 5, 20, 5),
              alignment: Alignment.bottomLeft,
              height: 20,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF6F7FB),
              ),
              child: Text("สิทธิ์แลกซื้อสุดคุ้ม"),
            ),
            Container(
              child: ListView.builder(
                physics :NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Container(
                      margin: EdgeInsets.fromLTRB(
                          16.0, 5.0, 16.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                children: [
                                  Text(
                                        '${items[index]} ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF394764),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  // Container
                                  Text(
                                    'x3' + '  ชิ้น',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF394764),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 16),
                                  ),

                                  Text(
                                    ' 150 บาท',
                                    softWrap: true,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF394764),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.end,
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/ok.png',
                                width: 25,
                                height: 25,
                              ),
                            ],
                          )),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(35, 5, 20, 5),
              alignment: Alignment.bottomLeft,
              height: 20,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF6F7FB),
              ),
              child: Text("รายการโปรโมชั่น"),
            ),
            Container(
              child: ListView.builder(
                physics : NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: items2.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Container(
                      margin: EdgeInsets.fromLTRB(
                          16.0, 5.0, 16.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: ListTile(
                          title: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                children: [
                                  Text(
                                  '${items2[index]} ${index + 1}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF394764),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  // Container
                                  Text(
                                    'x3' + '  ชิ้น',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF394764),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 16),
                                  ),

                                  Text(
                                    ' 150 บาท',
                                    softWrap: true,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xFF394764),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.end,
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/ok.png',
                                width: 25,
                                height: 25,
                              ),
                            ],
                          )),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}