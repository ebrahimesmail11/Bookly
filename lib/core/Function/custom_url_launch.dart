import 'package:bookly/core/Function/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customUrlLaunch(context,String? url)async{
   if (url != null) {
  Uri _url=Uri.parse(url);
    if (await canLaunchUrl(_url)) {
                 await launchUrl(_url);
    }else{
   customSnackBar(context, "cannot launch $url");
    }
}
}

