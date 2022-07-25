import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Account.dart';
import 'package:flutter_tutorial/Photo/Photo.dart';
import 'package:flutter_tutorial/Photo/PhotoContainer.dart';

void main() => runApp(FluttertutorialApp());

class FluttertutorialApp extends StatelessWidget {
  FluttertutorialApp({Key? key}) : super(key: key);

  final Account acc = Account('anastasia_kisa_anisia');

  List<Photo> photoes = [
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-west.userapi.com/sun9-13/s/v1/if2/OHZvlZ-VRox7in8ZlEgFDqvwK6Qi9wzMf5mw9h7H6DNMS-V7Yh52yjlT2c5RRExFpJ5_YsLJyLrHxRAuPGXoYLGf.jpg?size=1080x1080&quality=95&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-north.userapi.com/sun9-86/s/v1/if2/XsuvRi9kASUpA3vcVM3dDRknGShV1o3IY-RhgeVz-s6S43QBftyPabgD3Fxp0mFxrFNluzW0hFjQA4EWxq5PAY7K.jpg?size=1080x810&quality=95&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-east.userapi.com/sun9-42/s/v1/if2/OSJWIFDE0gyp0JehTPde2ly4BP4QIH1pm-iGqiOS5Aj-dnDgQahz_sjr7q7eycoWbPJjyDApCicr57ZGIXFET2Nl.jpg?size=1598x1600&quality=95&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-east.userapi.com/sun9-30/s/v1/if2/hgO3pHKqMVfgybU-4RTbHLrhLeHBwi-7FOgfQnQUgpL80KesD3KEfpv6XGy5BKosxkodxh7d5DSUp42w0nhKMh3G.jpg?size=2560x1450&quality=95&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-east.userapi.com/sun9-20/s/v1/if2/o266qxsnE6cKL8ugojUwPbz_QWcRxT9GcVkIOZ3hcAHJm_mLS2IZ0qFUZWQDx46PBq1tPOFSbRak9-TD8SLemjVe.jpg?size=2200x1467&quality=96&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-west.userapi.com/sun9-49/s/v1/if2/Q1B3MDMvhNf1LIAPsmcA3qCwNgWwSasmymwePa1g9Tt0MrCQVeZpTM9FYQIsNK6Lk3MWwLPfm7UF4pE4xZGqpOLF.jpg?size=1200x1600&quality=96&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-north.userapi.com/sun9-82/s/v1/if2/2C84NDMdfJde_UVpTKBsMcm3-yY7xd-6wtQc9LZZxhmRVfrx9M552mbn8hVA8fSgGT0FhbW4s9W3BfpWMECSO8gt.jpg?size=932x1080&quality=96&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-west.userapi.com/sun9-5/s/v1/if2/JYv3nmwFLWA3qSOLxcsL_VSAtNWmk_15RwZfoZarSnQa6JigtcDWIxATM_ryWDFgIARSOrRMQaYwCDO1JFlYfKyA.jpg?size=1080x810&quality=96&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-east.userapi.com/sun9-18/s/v1/if2/_-bwfnwUZpU0g2dW_Vce3vy1SAejpEql2Q-i_TR0QnC9ycQkaRnDwcUKre55TrScxTloNIScvFVUnpZWd1Go4P9t.jpg?size=843x1080&quality=96&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-east.userapi.com/sun9-43/s/v1/if1/rl2lmKkY4W3L8R1PttRhUwJJlnFIx_9c66iAumk31HkpPXaWpypVi545eg6RxgxxN9KVEUnJ.jpg?size=720x1080&quality=96&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-east.userapi.com/sun9-75/s/v1/if1/36O6QlR9Lh1U0GvPaYssT7vAkEY61JraV8dQmB2LmdniDFJzyU3iNgzs7ASXZxsFnTKBNYmS.jpg?size=1229x1853&quality=96&type=album"),
    Photo(Account('anastasia_kisa_anisia'),
        "https://sun9-east.userapi.com/sun9-74/s/v1/if1/gyqSdB6EvTlttbhrn6Fw8fJP1-wTlqyO1pOq72Q278m4eukK2jsLcRs4Oaqc7pq4xtTfyU0I.jpg?size=750x1080&quality=96&type=album"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter tutorial",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Настя)'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Colors.white,
                Color.fromARGB(255, 178, 235, 242),
              ],
                  // begin: Alignment.center,
                  transform: GradientRotation(3.14 / 2))),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: photoes.length,
                      itemBuilder: (_, index) => PhotoContainer(photoes[index]))),
              Container(
                height: 100,
                margin: EdgeInsets.all(10),
                // transform: Matrix4.rotationZ(0.1),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  // borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black38,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 5))
                  ],
                ),
                child: IconButton(
                    onPressed: () {
                      print('Клик!');
                    },
                    iconSize: 70.0,
                    color: Colors.blue,
                    icon: Icon(Icons.search)),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text(
            '+',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
          onPressed: null,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.icecream), label: '1'),
            BottomNavigationBarItem(icon: Icon(Icons.icecream), label: '2')
          ],
        ),
      ),
    );
  }
}
