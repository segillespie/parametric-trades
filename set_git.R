#install.packages('usethis')

# Set git configuration
# https://happygitwithr.com/hello-git.html
usethis::use_git_config(user.name = 'segillespie', 
                        user.email = 'stephenegillespie@gmail.com')


# https://happygitwithr.com/https-pat.html#https-pat
# this will ask you to go to github and log in.
# use default settings, except I change to 90 days for length of token
# copy the personal access token password
usethis::create_github_token()



# provide your personal access token.  
gitcreds::gitcreds_set()


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