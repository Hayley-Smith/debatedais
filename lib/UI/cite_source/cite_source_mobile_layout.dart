import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../domain/mla_source_entity.dart';



class CiteSourcePage extends StatefulWidget {
  const CiteSourcePage({super.key});

  @override
  State<CiteSourcePage> createState() => _CiteSourcePageState();
}

class _CiteSourcePageState extends State<CiteSourcePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController authorController = TextEditingController();
  TextEditingController titleOfSourceController = TextEditingController();
  TextEditingController titleOfContainerController = TextEditingController();
  TextEditingController otherContributorsController = TextEditingController();
  TextEditingController versionController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController publisherController = TextEditingController();
  TextEditingController publicationDateController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dateOfAccessController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const double thresholdWidth = 600;



    return Scaffold(
      appBar: AppBar(
        title: const Text('MLA Citation Form'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                _buildTextField('Author', authorController),
                _buildTextField('Title of Source', titleOfSourceController),
                _buildTextField('Title of Container', titleOfContainerController),
                _buildTextField('Other Contributors', otherContributorsController),
                _buildTextField('Version', versionController),
                _buildTextField('Number', numberController),
                _buildTextField('Publisher', publisherController),
                _buildTextField('Publication Date', publicationDateController),
                _buildTextField('Location', locationController),
                _buildTextField('Date of Access', dateOfAccessController),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _createMLASource();
                    }
                  },
                  child: const Text('Create Citation'),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }



  Widget _buildTextField(String labelText, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $labelText';
        }
        return null;
      },
    );
  }

  void _createMLASource() {
    MLASource mlaSource = MLASource(
      author: authorController.text,
      titleOfSource: titleOfSourceController.text,
      titleOfContainer: titleOfContainerController.text,
      otherContributors: otherContributorsController.text,
      version: versionController.text,
      number: numberController.text,
      publisher: publisherController.text,
      publicationDate: publicationDateController.text,
      location: locationController.text,
      dateOfAccess: dateOfAccessController.text, mlaSourceId: DateTime.now().toString(),
    );

    // Use the 'mlaSource' object as needed, for example, display it or save it.
    if (kDebugMode) {
      print(mlaSource);
    }

    // You can also reset the form if needed
    _formKey.currentState?.reset();
  }
}

//Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: ListView(
//                 children: [
//                   _buildTextField('Author', authorController),
//                   _buildTextField('Title of Source', titleOfSourceController),
//                   _buildTextField('Title of Container', titleOfContainerController),
//                   _buildTextField('Other Contributors', otherContributorsController),
//                   _buildTextField('Version', versionController),
//                   _buildTextField('Number', numberController),
//                   _buildTextField('Publisher', publisherController),
//                   _buildTextField('Publication Date', publicationDateController),
//                   _buildTextField('Location', locationController),
//                   _buildTextField('Date of Access', dateOfAccessController),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         _createMLASource();
//                       }
//                     },
//                     child: const Text('Create Citation'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         )