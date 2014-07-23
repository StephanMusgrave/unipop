<!-- hey guys! I'm working on this slowly each day, and please contribute to your liking -->
<!--- Got Steve, Muhanad, Emma and Stef's blurb --->
<!-- Shelley and Ollie blurb still needed -->
[unipop]
====
**Connecting student buyers and sellers quickly, efficiently, and beautifully.**
Created as our Final Project at [Makers Academy]
![Unipop on an iPhone](public/readme_images/iPhoneTemplate.jpg)
<!-- ![Unipop on an iMac](public/readme_images/iMacTemplate.jpg)	 -->
![Unipop in an Apple workplace](public/readme_images/WorkspaceTemplate.jpg)

  Unipop is a website and mobile app that enables students to buy and sell things speedily. Unipop only connects you to students within your university.

  Unipop is optimized for iPhone 5 and supports other mobile devices.

Table of Contents
===

* [How to use unipop]
* [Key features]
* [Design principles]
* [Technologies used]
* [Unipop for Coders]
* [Learning objectives]
* [Meet the team!]

How to use unipop
===

Get started with unipop here: [Heroku]

Key Features
===
There are several core features that make up the backbone of unipop. These features are unipop's cannot-do-without's.

Homepage
---

Item display page
---
<!-- getagging here. Stef, Steve? -->

I want it button
---

Chatroom
---

Queue management
---
<!-- hi guys what I mean by this is the end negotion buttons, next buyer etc. -->

'Pops' page
---
[Back to the top]

Design Principles
===
<!-- mobile first, responsive design, bootstrap elements, bootstrap buttons, grid/image-central view etc. Muhanad, Emma? -->
[Back to the top]

Technologies Used
====

|Technology                 |Used for                        |
|---------------------------|--------------------------------|
|Ruby                       |Main programming language       |
|Javascript                 |Maps/Ajax & jQuery              |
|Ajax                       |Mainly used in the chatroom     |
|HTML5                      |Styling and using smartphone camera |
|jQuery                     |Manipulating the DOM for a dynamic experience |
|Ruby on Rails              |Model View Controller web application framework |
|[Heroku]                   |Deployment                      |
|heroku_secrets            |to push secrets to Heroku in Rails |
|New Relic                  |Real time application monitoring|
|Papertrail                 |Tracking events & Log management|
|Cucumber/Capybara          |Feature testing                 |
|Rspec                      |Unit testing                    |
|Factory Girl               |A library for setting up Ruby objects as test data  |
|Postgrsql                  |Database                        |
|Devise                     |Creating users                  |
|Amazon Web Services        |Bulk image hosting              |
|Paperclip                  |Uploading images                |
|Bootstrap                  |Base theme                      |
|will_paginate              |A pagination library that integrates with Ruby on Rails and Sinatra |
|CSS3                       |Styling                         |
|Websockets                 |Real-time updates in Chatroom   |
|Geolocation/Geomapper      |Calculating distance and showing maps  |

[Back to the top]

Unipop for Coders
===
Unipop can be run in your localhost if you wish to play around with the code. You can do so easily by following these steps.

First you'll need to clone this repo by typing this snippet into your terminal:
```
$ git clone git@github.com:StephanMusgrave/ProjectX.git
```

Then change into the newly cloned directory:
```
$ cd projectx
```

Acquire the necessary gems to run unipop:
```
$ bundle install
```

Update your database by running the migration:
```
$ bin/rake db:migrate
```

Run the application on your localhost (defaults to port 3000):
```
$ bin/rails server
```

Finally, open up your web broswer, and in the URL field type:
``
localhost:3000
``

Now your browser should look something like this:
![unipop](public/readme_images/initial_unipop.jpg)

[Back to the top]

Learning Objectives
===
[Back to the top]

Meet the team!
===
![Louise Lai](public/readme_images/louise.jpg) 
![Muhanad Al-Rubaiee](public/readme_images/muhanad.jpg) 
![Ollie Delevingne](public/readme_images/ollie.jpg) 
![Shelley Hope](public/readme_images/shelley.jpg) 
![Emma Williams](public/readme_images/emma.jpg) 
![Stefania Cardenas](public/readme_images/stef.jpg)
![Steve Musgrave](public/readme_images/steve.jpg) 

[Louise Lai] | [Muhanad Al-Rubaiee] | [Ollie Delevingne] | [Shelley Hope] | [Emma Williams] | [Stefania Cardenas] | [Steve Musgrave]

**Thanks for reading!**

[Back to the top]

<!-- links, in order of appearance -->

[unipop]:http://unipop.herokuapp.com/

[How to use unipop]:https://github.com/StephanMusgrave/ProjectX#how-to-use-unipop
[Key features]:https://github.com/StephanMusgrave/ProjectX#key-features
[Design principles]:https://github.com/StephanMusgrave/ProjectX#design-principles
[Technologies used]:https://github.com/StephanMusgrave/ProjectX#technologies-used
[Unipop for Coders]: https://github.com/StephanMusgrave/ProjectX#unipop-for-coders
[Learning objectives]:https://github.com/StephanMusgrave/ProjectX#learning-objectives
[Meet the team!]: https://github.com/StephanMusgrave/ProjectX#meet-the-team

[Heroku]:http://unipop.herokuapp.com/

[Louise Lai]:https://github.com/loulai
[Muhanad Al-Rubaiee]:https://github.com/muhanad40
[Ollie Delevingne]:https://github.com/odelevingne
[Shelley Hope]:https://github.com/ShelleyHope
[Emma Williams]:https://github.com/Em01
[Stefania Cardenas]:https://github.com/stefaniacardenas
[Steve Musgrave]:https://github.com/StephanMusgrave
[Makers Academy]:http://www.makersacademy.com

[Back to the top]:https://github.com/StephanMusgrave/ProjectX#table-of-contents