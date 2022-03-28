vim9script noclear
# Vim global plugin for writing new goals
# Last Change: 2022 Mar 29
# Maintainer Horvath Paul paul8620@gmail.com
# License: This file is place in the public domain

var save_cpo = &cpo
set cpo&vim


def Goal(goalname: string)
   var linenr = line(".")
   var line = getline(".")
   var lineIsEmpty = line == ""
   while !lineIsEmpty
      linenr = linenr + 1
      line = getline(linenr)
      lineIsEmpty = line == ""
   endwhile
   var goalNameHeader = "## " .. goalname
   append(linenr + 0, goalNameHeader)
   append(linenr + 1, "### Reflection: Where I started last month, what's changed and what lessons whave you learned over the last 30 days?")
   append(linenr + 2, "_Write down what you wanted to do and what actually happened_")
   append(linenr + 3, "### Intentions: What are your intentions and gos for the upcoming month?")
   append(linenr + 4, "_Write down what are your smart goals for the next month_")
   append(linenr + 5, "### Measurement: How will you know that you've done this thing? What will be the clue, the evidence, the metric?")
   append(linenr + 6, "_Add metrics to the goals_")
   append(linenr + 7, "### Ways of being: while doing this i want to fell like ... The wai i want to show up for this is my actions will look like")
   append(linenr + 8, "_Ad a way of feeling what you are doing eg. I want to enjoy this_")
   append(linenr + 9,  "### Mantra: what's a simple mantra you can use to remember this goal")
   append(linenr + 10,  "_Write a simple text to remember what you are doing or how you are doing it eg. [mantra](https://www.happierhuman.com/daily-mantras/)_")
enddef

command -nargs=1 Goal :call Goal(<q-args>)





&cpo = save_cpo

