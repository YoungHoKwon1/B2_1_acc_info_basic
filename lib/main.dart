import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'info_basic',
        home: ListViewInfo()
    );
  }
  // Widget build(BuildContext context) {
  //   return WillPopScope(
  //       onWillPop: () async => false,
  //     child: ,
  //   );
  // }
}

//사용자에 따라 다른 listview
class ListViewInfo extends StatelessWidget {
  String userType = 'ㅁㄴㅇ';
  @override
  Widget build(BuildContext context) {
    if(userType == 'ㅁㄴㅇ')
      return Scaffold(
          body: ListViewTeacher()
      );
    else
      return Scaffold(
          body: ListViewSupervisor()
      );
  }
}

//선생님
class ListViewTeacher extends StatelessWidget {
  const ListViewTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      //ListiView height, width 조정 필요
      children: <Widget> [
        ListTile(
          title: Text('계정정보'),
          onTap: () {
            print('계정정보');
          }
        ),ListTile(
            title: Text('우리반 아이들'),
            onTap: () {
              print('우리반 아이들');
            }
        ),ListTile(
            title: Text('우리반 학부모들'),
            onTap: () {
              print('우리반 학부모들');
            }
        ),ListTile(
            title: Text('체크리스트'),
            onTap: () {
              print('체크리스트');
            }
        ),
        ListTile(
            title: Text('우리반 통계'),
            onTap: () {
              print('우리반 통계');
            }
        ),
        ListTile(
            title: Text('알림 기록'),
            onTap: () {
              print('알림 기록');
            }
        ),
      ],
    );
  }
}

//최고 권위자
class ListViewSupervisor extends StatelessWidget {
  const ListViewSupervisor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      //ListView height, width 조정 필요
      children: <Widget> [
        ListTile(
            title: Text('계정정보'),
            onTap: () {
              print('계정정보');
            }
        ),ListTile(
            title: Text('아이좋아 서비스 구매'),
            onTap: () {
              print('아이좋아 서비스 구매');
            }
        ),ListTile(
            title: Text('권한부여 및 해제'),
            onTap: () {
              print('권한부여 및 해제');
            }
        ),ListTile(
            title: Text('유치원 반목록'),
            onTap: () {
              print('유치원 반목록');
            }
        ),
        ListTile(
            title: Text('유치원 선생님들'),
            onTap: () {
              print('유치원 선생님들');
            }
        ),
        ListTile(
            title: Text('유치원 아이들'),
            onTap: () {
              print('유치원 아이들');
            }
        ),
        ListTile(
            title: Text('유치원 학부모님들'),
            onTap: () {
              print('유치원 학부모님들');
            }
        ),
        ListTile(
            title: Text('문의하기'),
            onTap: () {
              print('문의하기');
            }
        ),
        ListTile(
            title: Text('체크리스트'),
            onTap: () {
              print('체크리스트');
            }
        ),
        ListTile(
            title: Text('우리유치원 통계'),
            onTap: () {
              print('우리유치원 통계');
            }
        ),
        ListTile(
            title: Text('알림 기록'),
            onTap: () {
              print('알림 기록');
            }
        ),
      ],
    );
  }
}





