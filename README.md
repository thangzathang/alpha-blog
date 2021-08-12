# BizBet

A Ruby on Rails two-sided marketplace application for punters to bet on anything and everything!

# Relevent Links

## Deployed on Heroku:

## Github Repository: https://github.com/thangzathang/bizbet

# This app's purpose and problem to solve

BizBet's purpose is to give to its users the freedom to make a bet on whatever they want. Their imagination is the limit. The problem with the established gambling sites is that they control the criteria for the win and the loss. There isn't a market for random internet strangers to bet against each other, on the premise of an agreed agenda. This is potentially a new marketplace for bets on culture, tv shows, book release dates, celebrity deaths,  celebrity break ups, and so much more.

BizBet seeks to give the users the power to write up their own bets, open for the world to 'challenge' it. BizBet bet only acts as a fair intermediary between online strangers and will only take a fixed commission in the form of tickets, depending upon the initial bet price. This way, we practically give all of the winnings back to the users.

# How it works

We as a platform will create the categories and events - making sure there is an end date for all bets and double check the user criteria for the win / loss / draw.

We provide an event and category - they will have an end date for when we will distinguish the losers and the winners. User write up whatever bet they want, put their money and other users have the responsibility to themselves to read the criteria and whether or not they want to take up the bet.

There is no 'house'. All our profits will be made from fixed / priced small commission on every transaction. We also do not want regulations to be applied so the 'even' odd ( 1 / 1 ) will be applied. https://canadabetting.com/blog/betting-odds/

Originally I called the forms - articles. But for front end, they are called Betslips. For Users, they are called Biz Punters for the front end too.

# Functionality / Features

### Article / Betslips Features

## No account users

- Index page of Betslips to show all the Betslips created by different users.
- Index page of Users profile to show all the Users.
- Profile page of User profile to show all their Betslips.
- Sign up page to become a member of BizBet.

## Users with accounts

### Betslips Features

- Index page of Betslips to show all the Betslips created by different users, with a challenge button. Stripe not implemented so they just get redirected with a flash message.
- To view the
- To create a new Betslip.
- To view their own Betslip.
- To edit their own Betslip.
- To delete their own Betslip.

### User Profile Features

- To edit name, email or password.

## Users who are admins

- Admin is just a boolean value. Change from rails console: user1.admin = true will set a user to admin.
- To edit name, email, password of any users.
- To delete Users.
- To edit name or delete any Categories.

# Sitemap

![Sitemap](/app/assets/images/T2A2_Sitemap.png)

# User Stories

### **_As a Guest_**

- I want to view all Betslips and view Biz Punter's profiles.
- I want to sign up to Biz Bet.

### **_As a BizBet Punter_**

- I want to be able to create a Betslip; this includes the title, the description, the category and the price of the bet.
- I want to be able to edit my Betslip; this includes the title, the description, the category and the price of the bet - before any one takes up the bet.
- I want to be able to delete my Betslips.
- I want to be able to 'challenge' other Users/Biz Punters BetSlips.
- I want to be able to edit my username, email and password.

### **_As an Admin_**

- I want to be able to delete any Users.
- I want to be able to edit any Users Profile username, email and password.
- I want to be able to edit any Category name.

# ERD & Schema Design

![ERD](/app/assets/images/T2A2_ERD_BizBet.png)

# Wireframe

### **_Homepage_**

![Home page](/app/assets/images/wireframe_homepage.png)

### **_Biz Punters_**

![Biz Punters](/app/assets/images/wireframe_Bizpunters_page.png)

### **_Categories_**

![Categories](/app/assets/images/wireframes_categories.png)

### **_Biz Profile_**

![Biz Profile](/app/assets/images/wireframe_profile.png)

# Third Party Services

[Bootstrap](https://getbootstrap.com/): Bootstrap is a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains CSS- and JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components.

# Project Management

For this project, I did not plan it out initially but rather got myself the basic rails app set up. I knew I would have over thought so coding straight away was a key part of not feeling overwhelmed. I did regret not planning it as there were some changes that were hard and awkward to rename such as Article and Bizslip and Users and Biz Punters. Apart from that, I think the project could have had more features had I not rushed it.

Trello Board Link: https://trello.com/b/iytaPoiN/t2a2bizbet

# Model Relationships

**User/Biz Punter : Articles/Betslips**

A User can have zero to many Betslips. A Betslip belongs to a User. This relationship shows a user can have many betslips and a betslip belongs to a user.

**Articles/Betslips : Categories**

The Betslips can have zero to many categories. Categories can also have zero to many betslips. This way, we can easily navigate between Betslips and the categories.

**Order : Betslip**  
I did not get to implementing the order table and stripe. The order table would be a join table of Users and Betslips - the challenger being the "buyer".

# Screenshots

## Home Page

![Home](/app/assets/images/ss_homepage.png)

## Login Page

![Login Page](/app/assets/images/ss_login_page.png)

## Biz Punters Index

![Biz Punters](/app/assets/images/ss_biz_punters.png)

## Categories Index

![Categories Index](/app/assets/images/ss_categories.png)

## Profile Page

![Profile Page](/app/assets/images/ss_profile.png)
