import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peer_relationship_chart/b_admin/b1_4.dart';
import 'package:peer_relationship_chart/b_admin/b2_2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widjets/menu_bar.dart';

class B2_1 extends StatefulWidget {
  @override
  State<B2_1> createState() => _B2_1State();
}

class _B2_1State extends State<B2_1> {
  // @override
  // void initState() {
  //   SchedulerBinding.instance!.addPostFrameCallback((_) {//위젯을 바로실행시키기 위해 이 함수가 필요하다.
  //     showBannerDialog(
  //       return showPopUpB1_4(context,2,3)
  //     );
  //   });
  //   super.initState();
  // }
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    // SchedulerBinding.instance!.addPersistentFrameCallback((timeStamp) {
    //   showPopUpB1_4(context, 1, 2);
    // });
  }

  @override
  Widget build(BuildContext contextB2_1) {
    GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();//appbar없는 menubar용
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge); //하단바 숨기기
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'info_basic',
      theme: ThemeData(fontFamily: 'NotoSansKR'),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFCF9F4),
        key: _scaffoldState,
        endDrawer: MenuDrawer(),
        body:
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics (),
          child: Row(//전체 배경 Row
            children: [
              Column(//회사로고, 계정정보
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(//회사로고, 계정정보
                      color: Colors.red,
                      width: 177.51.w,
                      height: 88.51.w,
                      margin: EdgeInsets.fromLTRB(36.49.w, 40.49.w, 0.w, 0.w),
                      child: //Image.asset('img', width: 177.51, height: 88.51),
                      Text("회사로고")
                  ),
                  SizedBox(height: 30.w),
                  Container(
                    width: 250.w,
                    height: 630.w,
                    //margin: EdgeInsets.only(top: 35.w),
                    padding: EdgeInsets.only(bottom: 45.w),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFED796),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: ListViewInfo(),
                  )
                ],
              ),
              SizedBox(width: 47.w),
              Column(//우측 정보창
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(//메뉴바
                    color: Colors.transparent,
                    margin: EdgeInsets.only(left: 845.w),
                    child: IconButton(
                        onPressed: () => _scaffoldState.currentState?.openEndDrawer(),
                        icon: SvgPicture.asset('./assets/icons/icon_menu.svg', width: 33.w, height: 27.8.w)
                    ),
                  ),
                  Container(//메인 프로필
                    width: 893.w,
                    height: 280.w,
                    margin: EdgeInsets.only(top: 29.01.w),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: const BorderRadius.all(
                            Radius.circular(20)
                        ),
                        border:  Border.all(
                            color: const Color(0xFFFCCD7F),
                            width: 1.w
                        )
                    ),
                    child: Row(//사진, 개인정보, 버튼
                      children: [Container(//사진
                          color: Colors.lightGreen,
                          width: 150.34.w,
                          height: 177.67.w,
                          margin: EdgeInsets.fromLTRB(54.w, 50.67.w, 0.w, 51.66.w),
                          child: Text('사진이 들어가야할 곳')//Image(),
                      ),
                        Container(//개인정보
                          width: 375.5.w,
                          //color: Colors.red,
                          margin: EdgeInsets.fromLTRB(60.16.w, 67.w,0.w,0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text('아이디: 이메일주소',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp))
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 25.w, 0.w, 25.w),
                                  child: Text('이름: 홍길동',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.sp))),
                              Text('연락처: 010.1234.5678',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.sp))
                            ],
                          ),
                        ),
                        Container(//버튼
                          //color: Colors.blueAccent,
                          width: 200.w,
                          margin: EdgeInsets.fromLTRB(0.w, 103.w, 0.w, 0.w),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  print('서명등록');
                                },
                                child: Text('서명등록', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.sp)),
                                style: ElevatedButton.styleFrom(
                                    elevation: 1.0,
                                    primary: Color(0xFFFFFFFF),
                                    onPrimary: Color(0xFF393838),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    side: BorderSide(
                                        color: Color(0xFFA666FB)
                                    ),
                                    fixedSize: Size(200.w, 50.w)
                                ),
                              ),
                              SizedBox(height: 30.w),
                              ElevatedButton(
                                onPressed: () {
                                  print('내 정보 변경');
                                  showPopUpB2_2(contextB2_1,2,3);
                                  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
                                },
                                child: Text('내 정보 변경', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w)),
                                style: ElevatedButton.styleFrom(
                                    elevation: 1.0,
                                    primary: Color(0xFFA666FB),
                                    onPrimary: Color(0xFFFFFFFF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    fixedSize: Size(200.w, 50.w)
                                ),
                              )
                            ],
                          ),
                        )],
                    ),
                  ),
                  SizedBox(height: 62.w),
                  Text('우리 유치원 목록', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22.w, color: Color(0xFF393838))),
                  SizedBox(height: 20.w),
                  Container(//우리 유치원 목록
                    child: Column(//우리유치원, 유치원정보
                      children: [
                        Container(
                          width: 893.w,
                          height: 40.w,
                          decoration: const BoxDecoration(
                              color: Color(0xFFFED796),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)
                              )
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 57.w),
                                child: Text('유치원', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 98.w),
                                child: Text('원장', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 97.w),
                                child: Text('원장연락처', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 136.w),
                                child: Text('주소', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 145.w),
                                child: Text('전화번호', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 893.w,
                          height: 40.w,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)
                              ),
                              border: Border.all(
                                  color: Color(0xFFFDB43B),
                                  width: 1.w
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Text('튤립유치원', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                              Container(
                                child: Text('홍길동', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                              Container(
                                child: Text('010.1234.5678', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                              Container(
                                child: Text('시흥시 옥길동', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                              Container(
                                child: Text('010.1234.5678', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w, color: Color(0xFF393838))),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 111.w),
                  Container(//우리 유치원 정보 수정 버튼
                    child: ElevatedButton(
                      onPressed: () {
                        print('우리유치원 정보 수정');
                      },
                      child: Text('우리유치원 정보 수정', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.w)),
                      style: ElevatedButton.styleFrom(
                          elevation: 1.0,
                          primary: Color(0xFFA666FB),
                          onPrimary: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          fixedSize: Size(280.w, 50.w)
                      ),
                    ),
                  )
                ],
              ),
              //SizedBox(width: 50.w)
            ],
          ),
        ),
        //),

      ),
    );
  }
}

//사용자에 따라 다른 listview
class ListViewInfo extends StatefulWidget {
  @override
  State<ListViewInfo> createState() => _ListViewInfoState();
}

class _ListViewInfoState extends State<ListViewInfo> {
  String userType = 'teacherx';

  List<String> info = [];

  @override
  Widget build(BuildContext context) {
    if (userType == 'teacher')
      info = ['계정정보', '우리반 아이들', '우리반 학부모들', '체크리스트', '우리반 통계', '알림기록'];
    else
      info = [
        '계정정보',
        '아이좋아 서비스 구매',
        '권한부여 및 해제', '유치원 반목록',
        '유치원 선생님들',
        '유치원 아이들',
        '유치원 학부모님들',
        '문의하기',
        '체크리스트',
        '우리유치원 통계',
        '알림기록'
      ];
    return ListView.builder(
      //physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: info.length,
      itemBuilder: (BuildContext context, int index) {
        if(index == 0) {
          return
            Container(
              //margin: EdgeInsets.only(top: 30.w),
              height: 24.w,
              child:
              ListTile(
                //onTap: ,
                  title: Text(info[index], style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.w, color: const Color(0xFF5C5C5C)), textAlign: TextAlign.center,)
              ),
            );
        }
        return
          Container(
            margin: EdgeInsets.only(top: 30.w),
            height: 24.w,
            child:
            ListTile(
                title: Text(info[index], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.w, color: const Color(0xFF5C5C5C)), textAlign: TextAlign.center,)
            ),
          );
      },
    );
  }
}
