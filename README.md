# EYE-See-You

## Table of contents

- [General info](#general-info)
- [Technologies](#technologies)
- [Use Case Diagram](#usecase)
- [Architect Design Diagram](#architect)
- [Setup](#setup)
- [Databases Scripts - MSSQL]
- [Demo of Project](#demo)
- [Screen Capture of Project](#screen-capture-of-project)
- [Project Status](#project-status)
- [Contact](#contact)

## General info

 Live Link for the API  https://aplaudoapi.azurewebsites.net/
 This repository is a back-end API that is made to serve the front-end website https://aplaudo.herokuapp.com/app.html.
 It is a back-end which manages artists regiseration to perform different activites .

## Technologies

 This project is created with:

- C# , OOP , .NET MVC 5 , .NetFramework 4.6 , MSSQLSERVER for the DB 

- AZure for deployment .

## Project Structure 
   
   - MVC ( Models - Views - Controllers) have been used as a model for this project.
   - Data Modeling using database first approach entity framework .
   - Controllers are as follows 
     - Artists
        - Api calls for artist ->
           - https://aplaudoapi.azurewebsites.net/api/artists/    GET
           - https://aplaudoapi.azurewebsites.net/api/artists/   POST
             
               ```ruby
               {"ArtistFirstName": "Rasha","ArtistLastName": "Ali",  "ArtistNickName": "Rasha", "EmailAddress":  "Rashaali@gmail.com", "Password": "123456", "Bio":"Here is my Bio","PhotoLink":"http://wwww.google.com/2","Spotify":"sot",  "YouTube":"http://wwww.google.com/2","iTunes":"tunes","SoundCloud":"sound", "WebSite":"http://wwww.google.com/2", "LinkedIn":"http://wwww.google.com/linkedin","CountryName":"Belgium","StyleNames": [ { "StyleName":"Asian"}, {"StyleName": "African"} ], "InstrumentNames": [ { "InstrumentName":"accordion"},{ "InstrumentName": "bass"},{ "InstrumentName": "Piano"}] }    *Success : Response http status code : 201 created -- Response body :  "Your account is created successfully."Already registered Response http status code : 302 Found-- ""You have already created an account."*  ```
             
            - https://aplaudoapi.azurewebsites.net/api/artists/userlogin   POST
             
                 ```ruby 
              {  "EmailAddress":  "Dam_h@gmail.com", "Password":"gbvfgt5#hhd"} *"Failed :  404 not found "Wrong user credentials."Success : 200 ok"* ```
            - https://aplaudoapi.azurewebsites.net/api/artists/changepassword PUT
            
             ```ruby 
              {  "EmailAddress":  "Dam_h@gmail.com", "Password":"gbvfgt5#hhd"} *"Failed :  404 not found "Wrong user credentials."Success : 200 ok"* ```
            - https://aplaudoapi.azurewebsites.net/api/concerts?emailaddress=par@gmail.com GET
            
            
         - Concerts 
             - https://aplaudoapi.azurewebsites.net/api/concerts  POST
             
               ```ruby
{  "ConcertId":14,  "About":"This concert is really fun and different let' stry to update ", "ConcertTitle":"Title is really what matters ","Style":"African","Date":"12/01/2010","ConcertLink":"http://wwww.google.com/44", "PictureLink":"http://wwww.google.com/442", "ProgrammaLink":"http://wwww.google.com/44", "TeaserLink":"http://wwww.google.com/44", "CountryName":"Belgium","InstrumentationValue":"Solo",
"ArtistEmails": [{"EmailAddress": "par@gmail.com"}, {"EmailAddress": "rasaa@gmail.com"}, {"EmailAddress": "Ralyy.MM@gmail.com"}], "InstrumentNames":[{"InstrumentName":"accordion"},{"InstrumentName":"bass"},{"InstrumentName":"Piano"}]}
Response:{ "About": "Concert about acting in the heart of brussels in the heart of Europe in chrismas an all over the world last check final","ConcertId": 16, "ConcertLink": "http://wwww.google.com/1"}201 Created http status code 
 ```
             
         - Styles
         - Instruments
         - Instrumentaions
         - Countries 
         
   
## Setup

Clone this repository and start using it with your visual-studio 2017 or higher editor.
Download the db scripts and run it over a MSSQLSERVER editor with db name AplaudoDB.

## Use Case Diagram

 Here you are the use case of the project for the two releases v1, V2 .

![usecase](https://github.com/Rashaali84/Eye-See-You/blob/master/Use-Case%20EYESEEYOU.jpg)

## Screen Capture of Project

![Screenshot](https://github.com/Rashaali84/Eye-See-You/blob/master/eye%20see%20you.png)

## Architect Design Diagram
![Architect-Design](https://github.com/Rashaali84/Eye-See-You/blob/master/Architect%20Design.png)

## Demo of Project
A quick video for the whole website
![Video-Demo](https://github.com/Rashaali84/Eye-See-You/blob/master/WebSite%20Demo.mp4)

## Project Status

Project is finished .

## Contact
Contact reposiroty contributors for more details.
