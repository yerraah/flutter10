import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_app/bloc/profile_bloc.dart';
import 'package:form_app/bloc/profile_state.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Профиль'),
        ),
        body: Center(
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileLoading) {
                return CircularProgressIndicator();
              } else if (state is ProfileLoaded) {
                final data = state.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('UserID: ${data['userId']}'),
                    Text('ID: ${data['id']}'),
                    Text('Title: ${data['title']}'),
                    Text('Completed: ${data['completed']}'),
                  ],
                );
              } else if (state is ProfileError) {
                return Text(state.error);
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   Map<String, dynamic> profileData = {};

//   @override
//   void initState() {
//     super.initState();
//     fetchProfileData();
//   }

//   Future<void> fetchProfileData() async {
//     final response = await http
//         .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       setState(() {
//         profileData = data;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Профиль'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             if (profileData.isNotEmpty)
//               Column(
//                 children: <Widget>[
//                   Text('UserID: ${profileData['userId']}'),
//                   Text('ID: ${profileData['id']}'),
//                   Text('Title: ${profileData['title']}'),
//                   Text('Completed: ${profileData['completed']}'),
//                 ],
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
