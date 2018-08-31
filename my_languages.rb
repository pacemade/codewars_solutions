# Your task
# Given a dictionary/hash/object of languages and your respective test results, return the list of languages where your test score is at least 60, in descending order of the results.
#
# Note: There will be no duplicate values.
#
# Examples
# {"Java" => 10, "Ruby" => 80, "Python" => 65}  --> ["Ruby", "Python"]
# {"Hindi" => 60, "Dutch" => 93, "Greek" => 71} --> ["Dutch", "Greek", "Hindi"]
# {"C++" => 50, "ASM" => 10, "Haskell" => 20}   --> []

def my_languages(results)
  passed = []
  results = results.sort_by { |k, v| v}.reverse
  results.each do | key, value |
    if value >= 60
      passed.push(key)
    end
  end
  return passed
end

def my_languages(results)
  results.keys.select {|k| results[k]>=60}.sort_by {|k| -results[k]}
end
