# Chitter 

## User Stories 

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

### Setting up the database

1. Set up tables with SQL command (01_create_databases)
```
CREATE DATABASE chitter;
CREATE DATABASE chitter_test;
```

2. Run SQL commands to set up peeps table (02_create_peeps_table)
3. Create function in terminal to add a timestamp to peeps (03_created_at_function)
4. Add created_at column to peeps table (04_created_at_column)