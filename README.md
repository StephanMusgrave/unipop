<!-- hey guys! I'm working on this slowly each day, and please contribute to your liking -->
<!--- Got Steve, Muhanad, Emma and Stef's blurb --->
<!-- Shelley and Ollie blurb still needed -->
[unipop]
====
**Connecting student buyers and sellers quickly, efficiently, and beautifully.**

Created as our Final Project at [Makers Academy], London.

![Unipop on an iPhone](public/readme_images/iPhoneTemplate.jpg)
<!-- Commented out because thought there were too many images-Lou ![Unipop on an iMac](public/readme_images/iMacTemplate.jpg) -->
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

Try unipop
===

Get started with unipop [here]. You will need to sign in to access the full range of unipop's features. For now, you may sign in with any email, as long as it contains an '@' symbol.

Key Features
===
There are several core elements that shape unipop's personality. A lot of time was spent debating over the details of each seemingly small feature, as each detail had implications on the overall application.

Homepage
---
The homepage is where all the images of to-sell items are displayed. All images are contained within a beautiful, infinitely scrolling grid.

From here, the user can easily click on things to navigate anywhere.

University verification
---
Nowadays, each university assigns a unique email address to its students. 

Unipop requires each student to have a valid university email address to sign up. Once signed up successfully, the user has access to all items sold by users with similar email suffix.

For example, New York University (NYU) will assign an alpha numeric email address like 'jk2662@nyu.edu' to each student. People with an '@nyu.edu' suffix will see all posts by '@nyu.edu' users. They won't see posts by other universities, like'@harvard.edu' or '@lse.ac.uk'.

One future consideration is to customize access for each university, as some universities are smaller and lack critical mass for unipop to be successful.

Item display page
---
<!-- getagging here. Stef, Steve? -->
When a user clicks on an item to see more information, they will be taken to the item's display page. 
They will see:
* who is selling the item
* its price
* an option to view its location on Google Maps
* the distance of the user to the item 
* auto-changing extra images (carousel)
* an I want it button

I want it button
---
The I want it button adjusts its functionality to suit different conditions:

**I want it**

Let's say you wanted to buy a kettle. You browse on the homepage and find a nice shiny image of a kettle and decide you want it, so you click the I want it button.

If you are the first buyer, you will be taken to a brand new chatroom, and you start talking to the seller about his/her kettle.

If you are NOT the first buyer, you will be placed on the waitlist for this particularly popular kettle. You can only chat to the buyer when he/she has rejected every preceding buyer.

**I changed my mind**

Let's say you changed your mind about the kettle you just wanted. There will always be a I changed my mind button present that rescinds your want.

Don't worry if you accidentally clicked it; unipop will flash an alert for double-confirmation.

Chatroom
---
Connecting buyers and sellers is what unipop is all about.

Each item only ever has one active chatroom, because the seller only chats to the first buyer in the waitlist. It's like a marketplace, where the vendor only talks to the the first customer in the queue.

The chatroom is made real-time using Websockets.

Queue management
---
<!-- hi guys what I mean by this is the end negotion buttons, next buyer etc. -->
Through the chatroom, the seller has control over his/her waitlist queue. 

The seller can choose to end the negotiation with the current buyer and move on to the next buyer.

However, the seller can't see the names of everyone on the waitlist. He/she can only see the name of the most immediate buyer. This is in the name of fairness; it prevents the seller from rejecting all buyers when they see a friend on the waitlist.

This is important because it guards unipop against becoming an unwieldy and ultimately inefficient auctioning site.

'Pops' page
---
"Pop something on unipop!"

Each item a user tries to sell is referred to as a 'pop'.

Your 'pops page' is similar to a profile page, where all the pops you are selling or wanting can be seen.

[Back to the index]

Design Principles
===
<!-- mobile first, responsive design, bootstrap elements, bootstrap buttons, grid/image-central view etc. Muhanad, Emma? -->
"Mobile first" was our design motto. The design is responsive and uses bootstrap elements. We create the theme ourselves.

[Back to the index]

Technologies Used
====

|Technology                 |Used for                        |
|---------------------------|--------------------------------|
|Ruby                       |Main programming language       |
|Javascript                 |Maps/Ajax & jQuery              |
|Ajax                       |Instantaneous chat and dynamic design  |
|Websockets                 |Instantaneous chat  |
|HTML5                      |Styling and using smartphone camera |
|jQuery                     |Manipulating the DOM for a dynamic experience |
|Ruby on Rails              |Web application framework |
|[Heroku]                   |Deployment                      |
|Cucumber/Capybara          |Feature testing                 |
|Rspec                      |Unit testing                    |
|Factory Girl               |Quicker data generation for testing  |
|Postgresql                  |Database                        |
|Devise                     |Creating users                  |
|Amazon Web Services        |Hosting images              |
|Paperclip                  |A file attachment library for Active Record, used for uploading images|
|Geolocation/Geomapper      |Calculating distance and showing maps  |
|Will Paginate              |Infinite scrolling |
|Heroku Secrets           |Pushing secrets to Heroku in Rails |
|New Relic                  |Real time application monitoring|
|Papertrail                 |Tracking events & log management|

[Back to the index]

Unipop for Coders
===
Unipop can be run in your localhost if you wish to play around with the code. You can do so easily by following these steps.

First you'll need to clone this repo by typing this snippet into your terminal:
```
$ git clone git@github.com:StephanMusgrave/unipop.git
```

Then change into the newly cloned directory:
```
$ cd unipop
```

Acquire the necessary gems to run unipop:
```
$ bundle install
```

Update your database by running the migrations:
```
$ bin/rake db:create db:migrate
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

[Back to the index]

Learning Objectives
===
* Materializing a concept into a functional product
* Adding to and reinforcing our knowledge of Ruby and Rails
* Using testing to drive the direction of our product (behaviour driven test driven developement)
* Agile team management
* Pair programming

[Back to the index]

Meet the team!
===
![Louise Lai](public/readme_images/louise.jpg) 
![Muhanad Al-Rubaiee](public/readme_images/muhanad.jpg) 
![Ollie Delevingne](public/readme_images/ollie.jpg) 
![Shelley Hope](public/readme_images/shelley.jpg) 
![Emma Williams](public/readme_images/emma.jpg) 
![Stefania Cardenas](public/readme_images/stef.jpg)
![Steve Musgrave](public/readme_images/steve.jpg) 

**Thanks for reading!**

View our individual GitHubs: [Louise Lai] | [Muhanad Al-Rubaiee] | [Ollie Delevingne] | [Shelley Hope] | [Emma Williams] | [Stefania Cardenas] | [Steve Musgrave]

[Back to the index]

<!-- links, in order of appearance -->

[unipop]:http://unipop.herokuapp.com/

[How to use unipop]:https://github.com/StephanMusgrave/unipop#how-to-use-unipop
[Key features]:https://github.com/StephanMusgrave/unipop#key-features
[Design principles]:https://github.com/StephanMusgrave/unipop#design-principles
[Technologies used]:https://github.com/StephanMusgrave/unipop#technologies-used
[Unipop for Coders]: https://github.com/StephanMusgrave/unipop#unipop-for-coders
[Learning objectives]:https://github.com/StephanMusgrave/unipop#learning-objectives
[Meet the team!]: https://github.com/StephanMusgrave/unipop#meet-the-team

[here]:http://unipop.herokuapp.com/
[Heroku]:http://unipop.herokuapp.com/

[Louise Lai]:https://github.com/loulai
[Muhanad Al-Rubaiee]:https://github.com/muhanad40
[Ollie Delevingne]:https://github.com/odelevingne
[Shelley Hope]:https://github.com/ShelleyHope
[Emma Williams]:https://github.com/Em01
[Stefania Cardenas]:https://github.com/stefaniacardenas
[Steve Musgrave]:https://github.com/StephanMusgrave
[Makers Academy]:http://www.makersacademy.com

[Back to the index]:https://github.com/StephanMusgrave/unipop#table-of-contents