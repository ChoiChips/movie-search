# Movie Search

## Description:

Basic movie search using the [OMDB API](https://www.omdbapi.com/)

## Built With:

* [Ruby on Rails](http://rubyonrails.org/)

## FAQ
- **At a high level, how does your app work?**
When a user enters a movie title and clicks "Search", the form sends their query to the Rails backend where the controller makes an API call to the OMDB API with the query parameters and API key. The OMDB API then responds with 10 movies that fit this criteria which are then displayed underneath the search bar.

- **How would we extend your app if we had to add functionality?**
We could add more parameters to the search other than title, such as year, actors, genre, etc. We could also introduce other API calls into the search function other than OMDB, perhaps RottenTomatoes or Wikipedia, and have that populate when a user clicks on one of the search results. I'm also a fan of live updating searches so we could try switching the search bar into React (or another reactive frontend framework) for a better user experience. In addition to that, if we could increase the number of results from OMDB (currently limited to 10 results) we could add pagination, either infinite scrolling or a "Load More" type button at the bottom. If we wanted to persist data, we could also add in "Save" functionality to allow users to save/organize their favorite movies or perhaps recommend movies to others.

- **What documentation, websites, papers, etc. did you consult for this assignment?**
I mostly used the [Ruby on Rails Guides](http://guides.rubyonrails.org/api_documentation_guidelines.html) for syntax checks and [Stack Overflow](https://stackoverflow.com/) for when I had specific usage questions (when to use form_tag vs form_for, controller actions, etc)

- **What third-party libraries or other tools does your application use? How did you choose each library or framework you used?**
* [Foundation](https://github.com/zurb/foundation-rails) - Styling
* [Pry](https://github.com/pry/pry) - Debugging
* [Rspec](https://github.com/rspec/rspec) - Testing
* [Capybara](https://github.com/teamcapybara/capybara) - Testing
* [Dotenv](https://github.com/bkeepers/dotenv) - Securing API credentials
* [HTTParty](https://github.com/jnunemaker/httparty) - HTTP calls
Most of these gems/libraries I learned during my time at Launch Academy except for HTTParty, which I recently started using on my own. I chose these gems because they are (for the most part) simple and uncomplicated to use with good documentation for troubleshooting.

- **How long did you spend on this exercise? If you had unlimited time to spend on this, how would you spend it and how would you prioritize each item?**
I spent about 1-2 on the actual exercise (including testing) and about 30-40 minutes for answering questions/formatting.

If I had unlimited time, I would definitely work more on styling of the landing page and the way the search results are displayed. I think that making sites/apps user friendly and "pretty" are crucially important to success. 

After that, I would probably incorporate those other features that I mentioned above, in the following order: tiles with links to show pages, community based features, and increased search functionality.

- **If you were going to implement a level of automated testing to prepare this for a production environment, how would you go about doing so?**
I think I would use a continuous integration resource such as Codeship to run all my tests with every push to Github. I know that there's also things like screenshot comparison testing and the autotest gem for Rails, but I would need to do more research to implement them.
