Feature: Login Functionality
    To ensure only valid users can access the product page

    Scenario: User login with valid credentials
        Given User is on the login page
        When User enters valid username “problem_user” and valid password “secret_sauce”
        And clicks the “Login” button
        Then User should be redirected to the product page
        And product list should be displayed


    Scenario: User login with invalid credentials
        Given User is on the login page
        When User enters invalid username “numberone_user” and invalid password “secret_number”
        And clicks the “Login” button
        Then systems should display error message “Username and password do not match”
        And user should remain on the login page

    Scenario: User tries to login without entering credentials
        Given user is on the login page
        When user leaves username and password fields empty
        And clicks the “Login” button
        Then system should display error message “Username and Password are required”
        And user should remain on the login page
