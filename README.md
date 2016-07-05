# Create Action Lab

1. Build a working create action
2. Use form_tag to create a new form that submits to action
3. Correctly name form fields so that they end up in params on the top level
4. Assign data from params to an instance in create
5. Save an instance in a controller action
6. Redirect_to from a controller action to a show page
7. Use a named route for the new page and put it on the index page


## Instructions

There are a some additional RSpec specs for this lesson, including our first use of controller tests. You can find the three new tests that have to pass here:

* **Controller Specs** - `specs/controllers/students_controller_spec.rb`

* **Capybara Specs** - `specs/features/student_spec.rb:37`

For the use case scenario, after this lab is completed your application should have the following behavior:

1. User fills out the form on `students/new`

2. When the form is submitted a new record is created in the database

3. After the user fills out the form they are redirected to the `show` page that renders the `student` record that they created


Make sure to use a route helper method to redirect to the `student` `show` page at the end of the `create` method, you can get this route by running `rake routes` in the terminal


## Resources

* [Reading](https://github.com/learn-co-curriculum/rails-create-action-readme)

* [Documentation](http://api.rubyonrails.org/classes/ActiveRecord/Persistence/ClassMethods.html)
<p data-visibility='hidden'>View <a href='https://learn.co/lessons/rails-create-action-lab' title='Create Action Lab'>Create Action Lab</a> on Learn.co and start learning to code for free.</p>
