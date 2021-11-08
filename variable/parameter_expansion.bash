#!/bin/bash


# 1. Use default value if parameter is null or empty
def_var=${1:-"def"}
echo $def_var

# 2. if first parameter is set, it will be replaced with
# the value after + sign 
def_var2=${1:+"def2"}
echo $def_var2

# 3. Use default value if parameter is null
def_var3=${1-"def3"}
echo $def_var3
echo "=========================="

# 4. Like item 1, but variable inside ${} will be assigned
# even if it is null or empty.
ex1=""
def_var4=${ex1:="def4"}
echo "ex1: $ex1"
echo $def_var4
echo "=========================="

# 4. Like item 4, but variable inside ${} will be assigned
# even if it is null.
ex2=""
def_var5=${ex2="def5"}
echo "ex2: $ex2"
echo $def_var5
echo "=========================="

# 5. if value is null or empty, it will error and exit
ex3="gf"
def_var6=${ex3:?"def6"}
echo "ex3: $ex3"
echo $def_var6
echo "=========================="

# 6. if value is null, it will error and exit
ex4=""
def_var7=${ex4?"def7"}
echo "ex4: $ex4"
echo $def_var7
echo "=========================="
