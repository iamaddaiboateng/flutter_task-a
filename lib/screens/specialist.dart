import 'package:flutter/material.dart';
import 'package:flutter_task_a/utils/placeholders.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SpecialistPage extends StatefulWidget {
  const SpecialistPage({Key? key}) : super(key: key);

  @override
  State<SpecialistPage> createState() => _SpecialistPageState();
}

class _SpecialistPageState extends State<SpecialistPage> {
  WebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Specialist"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl:
                'https://www.google.com/maps/search/?api=1&query=8.598716,-0.349363',
            onWebViewCreated: (controller) {
              webViewController = controller;
            },
          )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Find a Specialist",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 150,
            child: PageView.builder(
                // padding: const EdgeInsets.all(10),
                onPageChanged: (index) {
                  var latitude = index % 2 == 0 ? 8.598716 : 6.748085;
                  var longitude = index % 2 == 0 ? -0.349363 : -1.542456;
                  webViewController!.loadUrl(
                      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
                },
                controller: PageController(viewportFraction: 0.9),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Material(
                      color: Colors.blue.shade50,
                      elevation: 2,
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(doctorImagePlaceholder),
                                ),
                                const Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            title: const Text("Dr. ABC"),
                            subtitle: const Text(
                              "Optician",
                              style: TextStyle(color: Colors.blue),
                            ),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                var latitude =
                                    index % 2 == 0 ? 8.598716 : 6.748085;
                                var longitude =
                                    index % 2 == 0 ? -0.349363 : -1.542456;
                                webViewController!.loadUrl(
                                    'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Text(
                              inforPlaceHolder,
                              maxLines: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
