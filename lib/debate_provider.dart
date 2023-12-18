import 'dart:js_interop';

import 'package:flutter/foundation.dart';

import 'argument.dart';
import 'debate_entity.dart';

class DebateProvider extends ChangeNotifier {
  final List<Debate> _debates = [
    Debate(
      debateId: '1',
      userIdPro: 'user1',
      userIdCon: 'user2',
      proStatement: 'Should school uniforms be mandatory?',
      argumentFor1: Argument(
        text:
            '    Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Nisl vel pretium lectus quam id leo. Vitae turpis massa sed elementum tempus egestas. Amet aliquam id diam maecenas. Cursus vitae congue mauris rhoncus. Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Massa id neque aliquam vestibulum morbi blandit cursus. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Vehicula ipsum a arcu cursus. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Velit ut tortor pretium viverra suspendisse potenti. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Neque gravida in fermentum et sollicitudin ac orci phasellus. At tempor commodo ullamcorper a lacus vestibulum. \n Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Nisl vel pretium lectus quam id leo. Vitae turpis massa sed elementum tempus egestas. Amet aliquam id diam maecenas. Cursus vitae congue mauris rhoncus. Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Massa id neque aliquam vestibulum morbi blandit cursus. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Vehicula ipsum a arcu cursus. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Velit ut tortor pretium viverra suspendisse potenti. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Neque gravida in fermentum et sollicitudin ac orci phasellus. At tempor commodo ullamcorper a lacus vestibulum. \n Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Nisl vel pretium lectus quam id leo. Vitae turpis massa sed elementum tempus egestas. Amet aliquam id diam maecenas. Cursus vitae congue mauris rhoncus. Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Massa id neque aliquam vestibulum morbi blandit cursus. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Vehicula ipsum a arcu cursus. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Velit ut tortor pretium viverra suspendisse potenti. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Neque gravida in fermentum et sollicitudin ac orci phasellus. At tempor commodo ullamcorper a lacus vestibulum.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentFor1',
        userId: 'user1',
      ),
      argumentFor2: Argument(
        text:
            '     Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Nisl vel pretium lectus quam id leo. Vitae turpis massa sed elementum tempus egestas. Amet aliquam id diam maecenas. Cursus vitae congue mauris rhoncus. Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Massa id neque aliquam vestibulum morbi blandit cursus. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Vehicula ipsum a arcu cursus. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Velit ut tortor pretium viverra suspendisse potenti. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Neque gravida in fermentum et sollicitudin ac orci phasellus. At tempor commodo ullamcorper a lacus vestibulum. \n \n Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Nisl vel pretium lectus quam id leo. Vitae turpis massa sed elementum tempus egestas. Amet aliquam id diam maecenas. Cursus vitae congue mauris rhoncus. Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Massa id neque aliquam vestibulum morbi blandit cursus. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Vehicula ipsum a arcu cursus. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Velit ut tortor pretium viverra suspendisse potenti. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Neque gravida in fermentum et sollicitudin ac orci phasellus. At tempor commodo ullamcorper a lacus vestibulum.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentFor2',
        userId: 'user1',
      ),
      argumentFor3: Argument(
        text:
            'School uniforms can contribute to a safer school environment by easily identifying outsiders.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentFor3',
        userId: 'user1',
      ),
      argumentAgainst1: Argument(
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras fermentum odio eu feugiat pretium. Elit pellentesque habitant morbi tristique senectus et. Habitant morbi tristique senectus et netus et. Nulla aliquet porttitor lacus luctus. Dui nunc mattis enim ut tellus elementum sagittis vitae. Urna porttitor rhoncus dolor purus non. Urna duis convallis convallis tellus. Consequat ac felis donec et odio pellentesque diam volutpat commodo. Augue eget arcu dictum varius duis at. Et ultrices neque ornare aenean euismod elementum nisi quis eleifend. Egestas dui id ornare arcu odio ut sem. Dolor sit amet consectetur adipiscing elit duis tristique sollicitudin. Velit dignissim sodales ut eu sem integer. Ut diam quam nulla porttitor. Suscipit tellus mauris a diam maecenas sed enim. Lectus sit amet est placerat in. Elementum tempus egestas sed sed risus. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Dictum sit amet justo donec enim. Tristique senectus et netus et malesuada fames ac. Congue eu consequat ac felis. Orci a scelerisque purus semper eget duis at. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu. Faucibus turpis in eu mi bibendum neque. Nec feugiat nisl pretium fusce id velit ut tortor. Duis at tellus at urna. Id diam vel quam elementum pulvinar. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Ornare aenean euismod elementum nisi.Augue neque gravida in fermentum et sollicitudin ac orci. Lacus luctus accumsan tortor posuere ac ut consequat semper viverra. Sed cras ornare arcu dui. Blandit massa enim nec dui. In fermentum et sollicitudin ac orci phasellus egestas tellus. Maecenas ultricies mi eget mauris. Proin nibh nisl condimentum id venenatis a condimentum vitae. Auctor elit sed vulputate mi sit amet mauris. Augue interdum velit euismod in pellentesque massa placerat duis. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Eu facilisis sed odio morbi quis. Sed cras ornare arcu dui vivamus arcu felis. Eget est lorem ipsum dolor sit amet consectetur. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. Posuere ac ut consequat semper viverra nam libero justo. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Id cursus metus aliquam eleifend mi in nulla posuere. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Erat imperdiet sed euismod nisi porta lorem mollis.Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Volutpat diam ut venenatis tellus in. Id aliquet risus feugiat in ante metus dictum. Tempus egestas sed sed risus pretium quam vulputate. Tempus imperdiet nulla malesuada pellentesque. Eu non diam phasellus vestibulum lorem sed. Nulla at volutpat diam ut venenatis tellus. Vitae justo eget magna fermentum iaculis eu. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Cras fermentum odio eu feugiat pretium nibh ipsum. Sit amet justo donec enim diam vulputate ut pharetra. Turpis nunc eget lorem dolor sed viverra ipsum. Tellus at urna condimentum mattis pellentesque id nibh tortor id. Neque vitae tempus quam pellentesque nec nam. Sit amet nulla facilisi morbi tempus iaculis urna id. Odio euismod lacinia at quis risus sed. Duis tristique sollicitudin nibh sit amet commodo. Gravida quis blandit turpis cursus in. Augue neque gravida in fermentum et sollicitudin ac orci phasellus."Lacus laoreet non curabitur gravida. Lectus mauris ultrices eros in. Odio eu feugiat pretium nibh ipsum consequat. Cursus eget nunc scelerisque viverra mauris in aliquam. Vulputate odio ut enim blandit volutpat maecenas. Tellus orci ac auctor augue mauris. Urna condimentum mattis pellentesque id nibh tortor id aliquet. Nunc lobortis mattis aliquam faucibus purus in. Porttitor rhoncus dolor purus non enim praesent elementum. Sed odio morbi quis commodo odio aenean sed adipiscing. Eget mauris pharetra et ultrices neque ornare aenean. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Amet dictum sit amet justo donec enim diam vulputate. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Orci dapibus ultrices in iaculis nunc sed augue lacus viverra. At elementum eu facilisis sed odio morbi quis commodo odio.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentAgainst1',
        userId: 'user2',
      ),
      argumentAgainst2: Argument(
        text:
            'Parents should have the freedom to choose clothing for their children, and mandatory uniforms violate this right.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentAgainst2',
        userId: 'user2',
      ),
      argumentAgainst3: Argument(
        text:
            'Schools should focus on addressing underlying issues like bullying instead of enforcing uniform policies.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentAgainst3',
        userId: 'user2',
      ),
      isCompleted: false,
    ),
    Debate(
      debateId: '2',
      userIdPro: 'user3',
      userIdCon: 'user4',
      proStatement: 'Is social media beneficial for society?',
      argumentFor1: Argument(
        text:
            'Social media facilitates communication and connection between people around the world. Social media facilitates communication and connection between people around the world. Social media facilitates communication and connection between people around the world. Social media facilitates communication and connection between people around the world. Social media facilitates communication and connection between people around the world. Social media facilitates communication and connection between people around the world. Social media facilitates communication and connection between people around the world.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentFor1',
        userId: 'user3',
      ),
      argumentFor2: Argument(
        text:
            'Social media platforms provide a platform for activism and raising awareness about important issues.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentFor2',
        userId: 'user3',
      ),
      argumentFor3: Argument(
        text:
            'Businesses benefit from social media by reaching a wider audience and engaging with customers.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentFor3',
        userId: 'user3',
      ),
      argumentAgainst1: Argument(
        text:
            'Excessive use of social media can lead to mental health issues such as anxiety and depression.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentAgainst1',
        userId: 'user4',
      ),
      argumentAgainst2: Argument(
        text:
            'Social media platforms can contribute to the spread of misinformation and fake news.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentAgainst2',
        userId: 'user4',
      ),
      argumentAgainst3: Argument(
        text:
            'Privacy concerns arise with the collection and use of personal data by social media companies.',
        timeStamp: DateTime.now(),
        argumentId: 'argumentAgainst3',
        userId: 'user4',
      ),
      isCompleted: true,
    ),
  ]; // The current debate

  // Getter for the current debate
  List<Debate> get debates => _debates;

  // Setter to update the current debate
  void addDebate(Debate newDebate) {
    _debates.add(newDebate);
    notifyListeners();
  }

  // Method to get a debate by its ID
  Debate? getDebateById(String debateId) {
    return _debates.firstWhere(
          (debate) => debate.debateId == debateId,
      orElse: () => Debate(
        debateId: 'debateId',
        userIdPro: 'userIdPro',
        userIdCon: 'userIdCon',
        proStatement: 'proStatement',
        argumentFor1: Argument(
          text: 'sampleargumenttext1',
          timeStamp: DateTime.now(),
          argumentId: 'sampleargumentid1',
          userId: 'sampleuserid11',
        ),
        argumentFor2: Argument(
          text: 'sampleargumenttext2',
          timeStamp: DateTime.now(),
          argumentId: 'sampleargumentid',
          userId: 'sampleuserid12',
        ),
        argumentFor3: Argument(
          text: 'sampleargumenttext3',
          timeStamp: DateTime.now(),
          argumentId: 'sampleargumentid3',
          userId: 'sampleuserid13',
        ),
        argumentAgainst1: Argument(
          text: 'sampleargumenttext4',
          timeStamp: DateTime.now(),
          argumentId: 'sampleargumentid4',
          userId: 'sampleuserid14',
        ),
        argumentAgainst2: Argument(
          text: 'sampleargumenttext5',
          timeStamp: DateTime.now(),
          argumentId: 'sampleargumentid5',
          userId: 'sampleuserid15',
        ),
        argumentAgainst3: Argument(
          text: 'sampleargumenttext6',
          timeStamp: DateTime.now(),
          argumentId: 'sampleargumentid6',
          userId: 'sampleuserid16',
        ),
        isCompleted: false,
      ),
    );
  }
}
