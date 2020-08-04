import 'package:flutter/material.dart';
import 'package:task1_aud_vid_pla/ui_audio/video_body.dart';
import 'ui_audio/audio_body.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Basics',
      home: FirstRoute(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Music Player'),
        ),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  'https://github.com/Gaurav-Khore/flutter_task1/raw/master/images.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
                child: Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 130.0),
                    child: Text(
                      "Audios",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://github.com/Gaurav-Khore/flutter_task1/raw/master/musi.png'),
                      fit: BoxFit.cover,
                    ),
                    color: const Color(0xff7c94b6),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },
                child: Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 130.0),
                    child: Text(
                      "Videos",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://github.com/Gaurav-Khore/flutter_task1/raw/master/video.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audios"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: myapp(),
      backgroundColor: Colors.grey[300],
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoRoute()),
              );
              Fluttertoast.showToast(
                  msg: "Video is Played from the Local Assets",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Text(
                  "Video 1",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://github.com/Gaurav-Khore/flutter_task1/raw/master/video1.png'),
                  fit: BoxFit.cover,
                ),
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NwVideo()),
              );
              Fluttertoast.showToast(
                  msg: "Video is Played from the Network",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Text(
                  "Video 2",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://github.com/Gaurav-Khore/flutter_task1/raw/master/video1.png'),
                  fit: BoxFit.cover,
                ),
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VideoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: myvideo(),
    );
  }
}

class NwVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: myvideosecond(),
    );
  }
}
