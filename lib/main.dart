import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'info_basic',
      theme: ThemeData(fontFamily: 'Noto Sans KR'),
      home: Scaffold(
        backgroundColor: Colors.cyan,
        // appBar: MenuAppBar(),
        // endDrawer: Container(
        //     width: 305,
        //     child: MenuDrawer())
        body: Row(
          children: [
            Column(
              children: [
                Container(
                    color: Colors.red,
                    width: 177.51,
                    height: 88.51,
                    margin: EdgeInsets.fromLTRB(0, 40.49, 0, 0),
                    child: //Image.asset('img', width: 177.51, height: 88.51),
                        Text("회사로고")),
                Container(
                  width: 250,
                  height: 630,
                  decoration: const BoxDecoration(
                    color: const Color(0xFFFED796),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: ListViewInfo(),
                )
              ],
            ),
            Column()
          ],
        ),
      ),
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
  String userType = 'a';
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
      itemCount: info.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 30),
          width: 110,
          height: 24,
          child: ListTile(
            title: Text(info[index], style: TextStyle(fontSize: 16, color: const Color(0xFF5C5C5C)), textAlign: TextAlign.center,)
          ),
        );
      },
    );
  }
}


// //선생님
// class ListViewTeacher extends StatelessWidget {
//   const ListViewTeacher({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       //ListiView height, width 조정 필요
//       children: <Widget>[
//         ListTile(
//             title: Text('계정정보'),
//             onTap: () {
//               print('계정정보');
//             }),
//         ListTile(
//             title: Text('우리반 아이들'),
//             onTap: () {
//               print('우리반 아이들');
//             }),
//         ListTile(
//             title: Text('우리반 학부모들'),
//             onTap: () {
//               print('우리반 학부모들');
//             }),
//         ListTile(
//             title: Text('체크리스트'),
//             onTap: () {
//               print('체크리스트');
//             }),
//         ListTile(
//             title: Text('우리반 통계'),
//             onTap: () {
//               print('우리반 통계');
//             }),
//         ListTile(
//             title: Text('알림 기록'),
//             onTap: () {
//               print('알림 기록');
//             }),
//       ],
//     );
//   }
// }
//
// //최고 권위자
// class ListViewSupervisor extends StatelessWidget {
//   const ListViewSupervisor({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       //ListView height, width 조정 필요
//       children: <Widget>[
//         ListTile(
//             title: Text('계정정보'),
//             onTap: () {
//               print('계정정보');
//             }),
//         ListTile(
//             title: Text('아이좋아 서비스 구매'),
//             onTap: () {
//               print('아이좋아 서비스 구매');
//             }),
//         ListTile(
//             title: Text('권한부여 및 해제'),
//             onTap: () {
//               print('권한부여 및 해제');
//             }),
//         ListTile(
//             title: Text('유치원 반목록'),
//             onTap: () {
//               print('유치원 반목록');
//             }),
//         ListTile(
//             title: Text('유치원 선생님들'),
//             onTap: () {
//               print('유치원 선생님들');
//             }),
//         ListTile(
//             title: Text('유치원 아이들'),
//             onTap: () {
//               print('유치원 아이들');
//             }),
//         ListTile(
//             title: Text('유치원 학부모님들'),
//             onTap: () {
//               print('유치원 학부모님들');
//             }),
//         ListTile(
//             title: Text('문의하기'),
//             onTap: () {
//               print('문의하기');
//             }),
//         ListTile(
//             title: Text('체크리스트'),
//             onTap: () {
//               print('체크리스트');
//             }),
//         ListTile(
//             title: Text('우리유치원 통계'),
//             onTap: () {
//               print('우리유치원 통계');
//             }),
//         ListTile(
//             title: Text('알림 기록'),
//             onTap: () {
//               print('알림 기록');
//             }),
//       ],
//     );
//   }
// }