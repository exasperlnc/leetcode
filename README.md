## This Repository is where I keep my leetcode practice

### min_cost_to_connect_all_points

My initial thoughts were to attempt using DP, which was a fun exercise. Through some reading I went with a solution called union find. I'm going to revisit this solution tommorrow(09/16/23), and see how much of this I can replicate, and how quickly. 

### valid_anagram

My original solution was to sort the strings and then compare them, but the ruby Enumerable#tally provides a more elegant solution.

### group_anagrams

I enjoyed this problem. Originally I was saving values to a hash using the tally enumerable, but I saw a much cleaner solution which I have since copied over, that just sorts the strings into groups named after the characters in the strings, and then returns those values. It's almost the same process, but this one is much more efficient. 

### product of array except self

Just got a solution that solves the problems, but it's not very efficient. The original problem doesn't allow using the division operation, so I need to compe up with a solution that doesn't involve recalculating the entire operation again. 

New solution is much more efficient, operating in linear time.

