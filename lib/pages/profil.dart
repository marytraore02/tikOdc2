import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'inscription.dart';

class UserProfilPage extends StatelessWidget {
  const UserProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profil',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        //leading: Icon(Icons.person_add, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.menu, color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30),

          //profile photo
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
              size: 40,
            ),
          ),

          // nomUtilisateur
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "@nomd'utilisateur",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),

          // numbre de followers, likes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        'Suivis',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "J'aime",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Horizon',
                  color: Colors.black
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('Retrouve tes favorites'),
                    RotateAnimatedText('Consulte tes suivis'),
                    RotateAnimatedText('Exprime ta créativité'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 300.0,
            height: 40,
            child: Builder(
              builder: (context) => RaisedButton(
                onPressed: () => {_openPopup(context)},
                color: Colors.red,
                textColor: Colors.white,
                child: Text("Connecte-toi ou inscris-toi"),
              ),
            ),
          ),
          // buttons -> edit profil, insta links

          // bio

          // default tab controller
        ],
      ),
    );
  }
}

//POPUP D'INSCRIPTION
void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
            height: MediaQuery.of(context).size.height * .95,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.close, color: Colors.black),
                        ),
                        Icon(Icons.help_outline_sharp, color: Colors.black),
                      ],
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Inscription à TikTok",
                      style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Text(
                        "Crée un profif, abonne-toi à d’autres comptes, "
                        "crée tes propres vidéos et bien plus encore.",
                        style: TextStyle(fontSize: 14.5, color: Colors.black54),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  inscription(),
                            ),
                          ),
                        },
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: /*Icon(
                                    Icons.person_outline,
                                    color: Colors.black
                                ),*/
                                    FaIcon(FontAwesomeIcons.user,
                                        color: Colors.black),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  "Utiliser téléphone/e-mail/nom d’utilisateur",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Facebook",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Google",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.lightBlue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Twitter",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Instagram",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("En continuant, tu acceptes nos Conditions d’utilisation et reconais "
                            "avoir lu notre Politique de confidentialité pour savoir comment nous "
                            "collectons, utilisons et partageons tes données.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black45
                          ),
                        ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Tu as déjà un compte ? ",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Connexion ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _openPopupConnect(context);
                                },
                              style: TextStyle(
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
      });
}

//POPUP DE CONNEXION
/*void _openPopupConnect(context){
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc){
        return Container(
            height: MediaQuery.of(context).size.height * .95,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(onTap: () => Navigator.pop(context),
                          child: Icon(Icons.close, color: Colors.black),
                        ),
                        Icon(Icons.help_outline_sharp, color: Colors.black),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "Connecte-toi à TikTok",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 0.0),
                      child: Text(
                        "Gère ton compte, consulte les notifications, "
                            "commente des vidéos et bien plus encore.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                    FontAwesomeIcons.user,
                                    color: Colors.black
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Utiliser téléphone/e-mail/nom d’utilisateur",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Facebook",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Google",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.lightBlue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Twitter",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                            )
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Instagram",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black87
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 90.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Tu n'as pas de compte ? ",
                        style: TextStyle( color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Inscription ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _openPopup(context);
                                },
                              style: TextStyle(
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        );
      }
  );
}*/

//POPUP CONNEXION NEW
void _openPopupConnect(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
            height: MediaQuery.of(context).size.height * .95,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.close, color: Colors.black),
                        ),
                        Icon(Icons.help_outline_sharp, color:  Colors.black),
                      ],
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Connecte-toi à TikTok",
                      style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Text(
                        "Gère ton compte, consulte les notifications, "
                        "commente des vidéos et bien plus encore.",
                        style: TextStyle(fontSize: 14.5, color: Colors.black54),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  inscription(),
                            ),
                          ),
                        },
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: /*Icon(
                                    Icons.person_outline,
                                    color: Colors.black
                                ),*/
                                    Icon(
                                        //Icons.person,
                                        FontAwesomeIcons.user,
                                        color: Colors.black),

                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  "Utiliser téléphone/e-mail/nom d’utilisateur",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),



                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Facebook",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Google",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.lightBlue,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Twitter",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonTheme(
                      minWidth: 250.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.5)),
                        color: Colors.white,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Continuer avec Instagram",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Tu as déjà un compte ? ",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Inscription ',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _openPopup(context);
                                },
                              style: TextStyle(
                                color: Colors.red,
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
      });
}
