import '../book/book_widget.dart';
import '../feed_artista/feed_artista_widget.dart';
import '../feed_estabelecimento/feed_estabelecimento_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../search/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilArtistaVisaoEstabelecimentoMariaWidget extends StatefulWidget {
  const PerfilArtistaVisaoEstabelecimentoMariaWidget({Key key})
      : super(key: key);

  @override
  _PerfilArtistaVisaoEstabelecimentoMariaWidgetState createState() =>
      _PerfilArtistaVisaoEstabelecimentoMariaWidgetState();
}

class _PerfilArtistaVisaoEstabelecimentoMariaWidgetState
    extends State<PerfilArtistaVisaoEstabelecimentoMariaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF5A1081),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          'Perfil',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFDDC0F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeedEstabelecimentoWidget(),
                ),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Image.network(
                          'https://www.nit.pt/wp-content/uploads/2022/04/087011b71be84a07e8225630c0d57c73.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.32,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 0, 5),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height:
                                        MediaQuery.of(context).size.width * 0.3,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/MariaLeal.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BookWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Book\n',
                                    options: FFButtonOptions(
                                      width: 120,
                                      height: 40,
                                      color: Color(0xFF5A1081),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFEEEEEE),
                                            fontSize: 14,
                                          ),
                                      borderSide: BorderSide(
                                        color: Color(0xFF5A1081),
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Contacto',
                                  options: FFButtonOptions(
                                    width: 120,
                                    height: 40,
                                    color: Color(0xFF5A1081),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Agenda',
                                    options: FFButtonOptions(
                                      width: 120,
                                      height: 40,
                                      color: Color(0xFF5A1081),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
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
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0, -0.05),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 10, 5, 0),
                                      child: Text(
                                        'Maria Leal',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 20,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: Text(
                                        '#Artista #Musica #MusicaPopular\n#Verão',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xC3EC3842),
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 5, 5),
                                      child: Text(
                                        'Maria Leal aqui só para ti.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF0D0000),
                                              fontSize: 12,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.2, 0),
                                            child: RatingBarIndicator(
                                              itemBuilder: (context, index) =>
                                                  Icon(
                                                Icons.star_rounded,
                                                color: Color(0xFFFFD331),
                                              ),
                                              direction: Axis.horizontal,
                                              rating: 1,
                                              unratedColor: Color(0xFF9E9E9E),
                                              itemCount: 5,
                                              itemSize: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.9,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-0.05, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 5),
                                      child: FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 10, 5),
                                      child: FaIcon(
                                        FontAwesomeIcons.youtube,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 10, 5),
                                      child: FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 10, 5),
                                      child: FaIcon(
                                        FontAwesomeIcons.twitter,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 10, 5),
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Color(0xFF8F39FF),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: MediaQuery.of(context).size.height * 0.38,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                                child: Text(
                                  'Proximos Eventos',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 5, 0),
                                      child: Image.asset(
                                        'assets/images/CartazPalnoBHip-hopSessions.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 5, 0),
                                      child: Image.asset(
                                        'assets/images/cartazPlanob.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 5, 0),
                                      child: Image.asset(
                                        'assets/images/planob.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 5, 0),
                                      child: Image.asset(
                                        'assets/images/CartazBaileDeMascaras.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/coffee-g85ae8bf23_1920.jpg',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: 100,
                          height: MediaQuery.of(context).size.height * 0.074,
                          decoration: BoxDecoration(
                            color: Color(0xFF5A1081),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SearchWidget(),
                                    ),
                                  );
                                },
                                text: '',
                                icon: Icon(
                                  Icons.search,
                                  size: 15,
                                ),
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: Color(0x004B39EF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: '',
                                icon: Icon(
                                  Icons.home,
                                  color: FlutterFlowTheme.of(context).black600,
                                  size: 15,
                                ),
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: Color(0x004B39EF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FeedArtistaWidget(),
                                    ),
                                  );
                                },
                                text: '',
                                icon: Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: Color(0x004B39EF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
