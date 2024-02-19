import 'dart:developer';
import 'dart:io';
import 'package:unicons/unicons.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'Sucess.dart';

class ScanAbsen extends StatefulWidget {
  const ScanAbsen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ScanAbsenState();
}

class _ScanAbsenState extends State<ScanAbsen> {
  Barcode? result;
  bool isPushed = false;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  _logoutApps(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(Icons.info),
              SizedBox(
                width: 10,
              ),
              Text('Konfirmasi'),
            ],
          ),
          content: Text('Yakin logout dari aplikasi'),
          actions: [
            Row(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                  width: MediaQuery.sizeOf(context).width * 0.02,
                  // margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 99, 99, 99),
                        blurRadius: 15,
                        offset: Offset(2, 10),
                      )
                    ],
                    color: Colors.orange[400],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/'); // Dismiss the dialog
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                    width: MediaQuery.sizeOf(context).width * 0.02,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 99, 99, 99),
                          blurRadius: 15,
                          offset: Offset(2, 10),
                        )
                      ],
                      color: const Color.fromARGB(255, 255, 38, 38),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "Logout",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 1, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    // margin: EdgeInsetsGeometry.infinity,
                    width: MediaQuery.sizeOf(context).width * 80,
                    // height: MediaQuery.sizeOf(context).height,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 144, 193, 194),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // Container(
                        //   margin: const EdgeInsets.all(8),
                        //   child: ElevatedButton(
                        //       onPressed: () async {
                        //         await controller?.toggleFlash();
                        //         setState(() {});
                        //       },
                        //       child: FutureBuilder(
                        //         future: controller?.getFlashStatus(),
                        //         builder: (context, snapshot) {
                        //           return Text('Flash: ${snapshot.data}');
                        //         },
                        //       )),
                        // ),
                        // Icons()
                        GestureDetector(
                          onTap: () async {
                            await controller?.resumeCamera();
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.10,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 236, 149, 0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Icon(
                              UniconsLine.refresh,
                              size: 25,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await controller?.toggleFlash();
                            setState(() {});
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.10,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 157, 156, 156),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Icon(
                              UniconsLine.auto_flash,
                              size: 25,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.10,
                          height: MediaQuery.sizeOf(context).height * 0.05,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 157, 156, 156),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Icon(
                            UniconsLine.auto_flash,
                            size: 25,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.10,
                          height: MediaQuery.sizeOf(context).height * 0.05,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 157, 156, 156),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Icon(
                            UniconsLine.auto_flash,
                            size: 25,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        // Icon(
                        //   UniconsLine.share_alt,
                        //   size: 10,
                        //   color: const Color.fromARGB(255, 0, 0, 0),
                        // ),
                        // Icon(
                        //   UniconsLine.share_alt,
                        //   size: 10,
                        //   color: const Color.fromARGB(255, 0, 0, 0),
                        // ),

                        // Icon(
                        //   UniconsLine.share_alt,
                        //   size: 10,
                        //   color: const Color.fromARGB(255, 0, 0, 0),
                        // ),

                        // Container(
                        //   margin: const EdgeInsets.all(8),
                        //   child: ElevatedButton(
                        //       onPressed: () async {
                        //         await controller?.flipCamera();
                        //         setState(() {});
                        //       },
                        //       child: FutureBuilder(
                        //         future: controller?.getCameraInfo(),
                        //         builder: (context, snapshot) {
                        //           if (snapshot.data != null) {
                        //             return Text(
                        //                 'Camera facing ${describeEnum(snapshot.data!)}');
                        //           } else {
                        //             return const Text('loading');
                        //           }
                        //         },
                        //       )),
                        // )
                      ],
                    ),
                  ),
                ),
                Builder(builder: (context) {
                  controller?.pauseCamera();
                  return _appresultdata(context, result);
                }),
                // FutureBuilder(
                //   // You can pass the required parameters to FutureBuilder here
                //   future: result,
                //   builder: (context, snapshot) {
                //     // Check snapshot for connection state and display appropriate widget
                //     print("${snapshot.connectionState} : status idle");
                //     if (snapshot.connectionState == ConnectionState.none) {
                //       return _appresultdata(context, result);
                //     } else {
                //       return CircularProgressIndicator(); // Or any other loading widget
                //     }
                //   },
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: <Widget>[
                //       Container(
                //         margin: const EdgeInsets.all(8),
                //         child: ElevatedButton(
                //           onPressed: () async {
                //             await controller?.pauseCamera();
                //           },
                //           child: const Text('pause',
                //               style: TextStyle(fontSize: 10)),
                //         ),
                //       ),
                //       Container(
                //         margin: const EdgeInsets.all(8),
                //         child: ElevatedButton(
                //           onPressed: () async {
                //             await controller?.resumeCamera();
                //           },
                //           child: const Text('resume',
                //               style: TextStyle(fontSize: 20)),
                //         ),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _appresultdata(BuildContext context, result) {
    if (result != null) {
      isPushed = false;
    }

    if (result != null && !isPushed) {
      isPushed = true;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Success(name: result!.code)));
      });
    } else if (result == null) {
      return Text(
        'Scan Absen',
        style: TextStyle(
          fontSize: 23,
        ),
      );
    }
    return Container();
  }

  Widget _buildQrView(BuildContext context) {
    resizeToAvoidBottomInset:
    false;
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;

    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
    controller.pauseCamera();
    controller.resumeCamera();
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
