import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoooooseArtistWidget extends StatefulWidget {
  const ChoooooseArtistWidget({Key key}) : super(key: key);

  @override
  _ChoooooseArtistWidgetState createState() => _ChoooooseArtistWidgetState();
}

class _ChoooooseArtistWidgetState extends State<ChoooooseArtistWidget>
    with TickerProviderStateMixin {
  String artistButtom;
  final animationsMap = {
    'buttonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      hideBeforeAnimating: false,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        artistButtom = await actions.artistChoose();

        setState(() {});
      },
      text: 'Artist',
      options: FFButtonOptions(
        width: 130,
        height: 40,
        color: Color(0xFF5A1081),
        textStyle: FlutterFlowTheme.of(context).subtitle2.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 14,
            ),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
        borderRadius: 12,
      ),
    ).animated([animationsMap['buttonOnActionTriggerAnimation']]);
  }
}
