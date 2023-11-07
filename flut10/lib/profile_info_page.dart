// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(MaterialApp(
//     home: ProfilePage(),
//   ));
// }

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ProfileBloc()..add(FetchProfileData()),
//       child: ProfilePageContent(),
//     );
//   }
// }

// class ProfilePageContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile Page"),
//       ),
//       body: Center(
//         child: BlocBuilder<ProfileBloc, ProfileState>(
//           builder: (context, state) {
//             if (state is ProfileLoading) {
//               return CircularProgressIndicator();
//             } else if (state is ProfileLoaded) {
//               final profileData = state.profileData;
//               return Column(
//                 children: <Widget>[
//                   Text("Name: ${profileData['name']}"),
//                   Text("Email: ${profileData['email']}"),
//                   // Добавьте другие поля профиля, если необходимо
//                 ],
//               );
//             } else if (state is ProfileError) {
//               return Text("Error: ${state.error}");
//             } else {
//               return Text("Unknown state");
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// // Ваш существующий код для ProfileBloc, ProfileEvent и ProfileState остается неизменным.
