#!/bin/bash

# camelCase justDoIt walkThroughThisDoor
# PascalCase JustDoIt WalkThroughThisDoor
# snake_case just_do_it walk_through_this_door
# lowercase justdoit walkthroughthisdoor
# UPPERCASE JUSTDOIT WALKTHROUGHTHISDOOR
# kebab-case just-do-it walk-through-this-door
# UPPER_CASE_WITH_UNDERSCORE JUST_DO_IT WALK_THROUGH_THIS_DOOR

# Create
export DB_URL=localhost
echo $DB_URL
# update
export DB_URL=5432
echo $DB_URL
# delete
unset DB_URL
echo $DB_URL
