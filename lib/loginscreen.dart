
// import 'package:flutter/material.dart';


// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmpasswordController = TextEditingController();

//   bool isPasswordHidden = true;
//   // final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text(
//           "Login Screen",
//           style: TextStyle(color: Color.fromARGB(255, 248, 243, 243)),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//         // iconTheme: IconThemeData(color: Colors.white), // Not needed as no icons exist
//       ),
//       body: SingleChildScrollView(
        
      

//           child: Center(
            
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//               child: Column(
                
//                 children: [
//                   Image.asset('images/profile.png', height: 200, width: 200),
//                   SizedBox(height: screenHeight * 0.02),

//                   // Form Widget
//                   Form(
//                     key: formKey,
//                     child: Column(
//                       children: [
//                         // Full Name Field
//                         TextFormField(
//                           controller: nameController,
//                           decoration: InputDecoration(
//                             prefixIcon: const Icon(Icons.person),
//                             labelText: 'Full Name',
//                             hintText: "Enter your name",
//                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//                             filled: true,
//                             fillColor: Colors.white,
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter your full name';
//                             }
//                             return null;
//                           },
//                         ),
//                         SizedBox(
//                           height: screenHeight * 0.02
//                           ),

//                         // Email Field
//                         TextFormField(
//                           controller: emailController,
//                           decoration: InputDecoration(
//                             prefixIcon: const Icon(Icons.email),
//                             labelText: 'Email',
//                             hintText: "Enter your email",
//                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//                             filled: true,
//                             fillColor: Colors.white,
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter an email';
//                             }
//                             if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//                               return 'Please enter a valid email';
//                             }
//                             return null;
//                           },
//                         ),
//                         SizedBox(
//                           height: screenHeight * 0.02
//                         ),
                        
//                         TextFormField(
//                           controller: passwordController,
//                       //    obscureText: true,     to hide password
//                             obscureText: isPasswordHidden,
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             prefixIcon: Icon(Icons.lock),
//                             hintText: 'Enter a password', 
//                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
//                             fillColor: Colors.white,
//                             filled: true,
//                             suffixIcon: IconButton(
//                               icon:Icon(
//                                 isPasswordHidden ? Icons.visibility_off : Icons.visibility,
//                                 ),
//                               onPressed: (){
//                                 setState(() {
//                                   isPasswordHidden = !isPasswordHidden;
//                                 });
//                               },  
//                               ),
//                           ),
//                           validator: (value) {
//                             if(value == null || value.isEmpty){
//                               return 'please enter your password';
//                             }
//                             else if(value.length <= 6){
//                               return 'password must be 6 character long  ';
//                             }
//                             else{
//                               return null;
//                             }
//                           },
//                         ),

//                         SizedBox(
//                           height: screenHeight * 0.02,
//                         ),
//                         TextFormField(
//                           controller: confirmpasswordController,
//                       //    obscureText: true,     to hide password
//                           obscureText: isPasswordHidden,
//                           decoration: InputDecoration(
//                             labelText: 'Re-Password',
//                             prefixIcon: Icon(Icons.lock_outline),
//                             hintText: ' Confirm password', 
//                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
//                             fillColor: Colors.white,
//                             filled: true,
//                             suffixIcon: IconButton(
//                               icon:Icon(
//                                 isPasswordHidden ? Icons.visibility_off : Icons.visibility,
//                                 ),
//                               onPressed: (){
//                                 setState(() {
//                                   isPasswordHidden = !isPasswordHidden;
//                                 });
//                               },  
//                             ),
//                           ),
//                           validator: (value){
//                             if(value == null || value.isEmpty){
//                               return 'please confirm the password';
//                             }
//                              else if(value != passwordController.text){
//                                   return '''password doesn't match''';
//                             }
//                             else{
//                               return null;
//                             }
//                           },
//                         ),

//                    // this is for Forgot Password
//                         Align(
//                           alignment: Alignment.topRight,
//                           child: InkWell(
//                             onTap: () {
//                               // Forgot password functionality here
//                             },
//                             child: const Text(
//                               'Forgot Password?',
//                               style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 20),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.02),

//                         // Submit Button
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color.fromARGB(255, 90, 90, 90),
//                             elevation: 10,
//                           ),
//                           onPressed: () {
//                             if (formKey.currentState?.validate() ?? false) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text(
//                                     'Form Submitted Successfully',
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                   backgroundColor: Color.fromARGB(255, 54, 244, 79),
//                                   duration: Duration(seconds: 1), //  message shows
//                                 ),
//                               );

//                               // //after delay navigate to homescreen
//                               // Future.delayed(const Duration(seconds: 2), (){ 
//                               // Navigator.push(
//                               //  context,
//                               //  MaterialPageRoute(
//                               //  builder: (context) => Home(userName: userName)
//                               // //  userName: nameController.text,
                                  
//                               //     ),
//                               //   );
//                               // });
                              
//                             } else {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text(
//                                     'Error: Please fix the issues',
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                   backgroundColor: Colors.red,
//                                 ),
//                               );
//                             }
//                           },
//                           child: const Text(
//                             "Submit",
//                             style: TextStyle(color: Colors.white, fontSize: 22),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
        
//       ),
//     );
//   }
// }
// // import 'package:first_app/view/auth/homescreen.dart';
// // import 'package:flutter/material.dart';

// // class LoginScreen extends StatelessWidget {
// //    LoginScreen({super.key});
// //   final TextEditingController nameController = TextEditingController();
// //   final TextEditingController emailController = TextEditingController();
// //   final TextEditingController passwordController = TextEditingController();
// //   final TextEditingController confirmpasswordController = TextEditingController();
// //     bool isPasswordHidden = true;
// //   // final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
// //   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
// //   @override
// //    Widget build(BuildContext context) {
// //  double screenHeight = MediaQuery.of(context).size.height;

// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       appBar: AppBar(
// //         title: const Text(
// //           "Login Screen",
// //           style: TextStyle(color: Color.fromARGB(255, 248, 243, 243)),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.red,
// //         // iconTheme: IconThemeData(color: Colors.white), // Not needed as no icons exist
// //       ),
// //       body: SingleChildScrollView(
        
      

// //           child: Center(
            
// //             child: Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
// //               child: Column(
                
// //                 children: [
// //                   Image.asset('images/profile.png', height: 200, width: 200),
// //                   SizedBox(height: screenHeight * 0.02),

// //                   // Form Widget
// //                   Form(
// //                     key: formKey,
// //                     child: Column(
// //                       children: [
// //                         // Full Name Field
// //                         TextFormField(
// //                           controller: nameController,
// //                           decoration: InputDecoration(
// //                             prefixIcon: const Icon(Icons.person),
// //                             labelText: 'Full Name',
// //                             hintText: "Enter your name",
// //                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
// //                             filled: true,
// //                             fillColor: Colors.white,
// //                           ),
// //                           validator: (value) {
// //                             if (value == null || value.isEmpty) {
// //                               return 'Please enter your full name';
// //                             }
// //                             return null;
// //                           },
// //                         ),
// //                         SizedBox(
// //                           height: screenHeight * 0.02
// //                           ),

// //                         // Email Field
// //                         TextFormField(
// //                           controller: emailController,
// //                           decoration: InputDecoration(
// //                             prefixIcon: const Icon(Icons.email),
// //                             labelText: 'Email',
// //                             hintText: "Enter your email",
// //                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
// //                             filled: true,
// //                             fillColor: Colors.white,
// //                           ),
// //                           validator: (value) {
// //                             if (value == null || value.isEmpty) {
// //                               return 'Please enter an email';
// //                             }
// //                             if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
// //                               return 'Please enter a valid email';
// //                             }
// //                             return null;
// //                           },
// //                         ),
// //                         SizedBox(
// //                           height: screenHeight * 0.02
// //                         ),
                        
// //                         TextFormField(
// //                           controller: passwordController,
// //                       //    obscureText: true,     to hide password
// //                             obscureText: isPasswordHidden,
// //                           decoration: InputDecoration(
// //                             labelText: 'Password',
// //                             prefixIcon: Icon(Icons.lock),
// //                             hintText: 'Enter a password', 
// //                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
// //                             fillColor: Colors.white,
// //                             filled: true,
// //                             suffixIcon: IconButton(
// //                               icon:Icon(
// //                                 isPasswordHidden ? Icons.visibility_off : Icons.visibility,
// //                                 ),
// //                               onPressed: (){
                            
// //                               },  
// //                               ),
// //                           ),
// //                           validator: (value) {
// //                             if(value == null || value.isEmpty){
// //                               return 'please enter your password';
// //                             }
// //                             else if(value.length <= 6){
// //                               return 'password must be 6 character long  ';
// //                             }
// //                             else{
// //                               return null;
// //                             }
// //                           },
// //                         ),

// //                         SizedBox(
// //                           height: screenHeight * 0.02,
// //                         ),
// //                         TextFormField(
// //                           controller: confirmpasswordController,
// //                       //    obscureText: true,     to hide password
// //                           obscureText: isPasswordHidden,
// //                           decoration: InputDecoration(
// //                             labelText: 'Re-Password',
// //                             prefixIcon: Icon(Icons.lock_outline),
// //                             hintText: ' Confirm password', 
// //                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
// //                             fillColor: Colors.white,
// //                             filled: true,
// //                             suffixIcon: IconButton(
// //                               icon:Icon(
// //                                 isPasswordHidden ? Icons.visibility_off : Icons.visibility,
// //                                 ),
// //                               onPressed: (){
                              
// //                               },  
// //                             ),
// //                           ),
// //                           validator: (value){
// //                             if(value == null || value.isEmpty){
// //                               return 'please confirm the password';
// //                             }
// //                              else if(value != passwordController.text){
// //                                   return '''password doesn't match''';
// //                             }
// //                             else{
// //                               return null;
// //                             }
// //                           },
// //                         ),

// //                    // this is for Forgot Password
// //                         Align(
// //                           alignment: Alignment.topRight,
// //                           child: InkWell(
// //                             onTap: () {
// //                               // Forgot password functionality here
// //                             },
// //                             child: const Text(
// //                               'Forgot Password?',
// //                               style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 20),
// //                             ),
// //                           ),
// //                         ),
// //                         SizedBox(height: screenHeight * 0.02),

// //                         // Submit Button
// //                         ElevatedButton(
// //                           style: ElevatedButton.styleFrom(
// //                             backgroundColor: const Color.fromARGB(255, 90, 90, 90),
// //                             elevation: 10,
// //                           ),
// //                           onPressed: () {
// //                             if (formKey.currentState?.validate() ?? false) {
// //                               ScaffoldMessenger.of(context).showSnackBar(
// //                                 const SnackBar(
// //                                   content: Text(
// //                                     'Form Submitted Successfully',
// //                                     style: TextStyle(color: Colors.white),
// //                                   ),
// //                                   backgroundColor: Color.fromARGB(255, 54, 244, 79),
// //                                   duration: Duration(seconds: 1), //  message shows
// //                                 ),
// //                               );

// //                               //after delay navigate to homescreen
// //                               Future.delayed(const Duration(seconds: 2), (){ 
// //                               Navigator.push(
// //                                context,
// //                                MaterialPageRoute(
// //                                builder: (context) => HomeScreen(
// //                                userName: nameController.text,
// //                                     ),
// //                                   ),
// //                                 );
// //                               });
                              
// //                             } else {
// //                               ScaffoldMessenger.of(context).showSnackBar(
// //                                 const SnackBar(
// //                                   content: Text(
// //                                     'Error: Please fix the issues',
// //                                     style: TextStyle(color: Colors.white),
// //                                   ),
// //                                   backgroundColor: Colors.red,
// //                                 ),
// //                               );
// //                             }
// //                           },
// //                           child: const Text(
// //                             "Submit",
// //                             style: TextStyle(color: Colors.white, fontSize: 22),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ),
// //           ),
        
// //       ),
// //     );
// //   }
// // }

