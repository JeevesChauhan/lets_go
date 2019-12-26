![Logo](https://github.com/JeevesChauhan/lets_go/blob/master/app/assets/images/icon_logo.png)
# Lets Go

A website to allow Pokemon Go users to orgnaise raids together with each other, as well as highlighting poke events. This sites gives the users an easy-to-use website using the google maps api. 

## Version
- Ruby 2.6
- Rails 5.2

## The Run down
### Inital look
![inital view](https://github.com/JeevesChauhan/lets_go/blob/master/screenshots/ss_lets_go_inital_view.png)
The user is shown the home page, which is where the map is, so that they can also view on going events and raids. However, if the user is not logged in the most they can get into the site is just seeing if events are happening, to view events in more details requires them to log in.

### Gyms
The gym marker is where users can spot raids and create raid plans for them. If there are no spotted raids then marker will only give the option the create a spotted raid.

![Gym no raids](https://github.com/JeevesChauhan/lets_go/blob/master/screenshots/ss_gym_empty.png)

If there is a spotted raid on the marker then it will display the gym in which users can view in more depth and create a raid plan, or view them.

![Gym found raids](https://github.com/JeevesChauhan/lets_go/blob/master/screenshots/ss_gym_spotted.png)

### Pokestops
The pokestop marker works the same way as the gym marker except users can only create poke events on these markers. 

![Pokesotp no events](https://github.com/JeevesChauhan/lets_go/blob/master/screenshots/ss_pokestop_empty.png)

(A poke event is created)

![Pokestop found events](https://github.com/JeevesChauhan/lets_go/blob/master/screenshots/ss_pokestop_event.png)
