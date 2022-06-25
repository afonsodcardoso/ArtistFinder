import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationInfoWidget extends StatefulWidget {
  const LocationInfoWidget({
    Key key,
    this.location,
  }) : super(key: key);

  final DocumentReference location;

  @override
  _LocationInfoWidgetState createState() => _LocationInfoWidgetState();
}

class _LocationInfoWidgetState extends State<LocationInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MapRecord>(
      stream: MapRecord.getDocument(widget.location),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final containerMapRecord = snapshot.data;
        return Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                containerMapRecord.name,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        );
      },
    );
  }
}
