function is_anagram(x, y)
	# converts both strings into an array of letters and then sorts the array
	if sort(split(x, "")) == sort(split(y, ""))
		return true end
	return false
end

function download_words()
	download("https://github.com/tk3369/words/raw/master/words.txt", "words.txt")
	f = open("words.txt");

	# creates an array for each word on a new line
	lines = readlines(f)

	# iterates through the array and lowercases each word
	for i = 1:size(lines)[1]
		lines[i] = lowercase(lines[i])
	end
	return lines
end

function find_anagrams(x)
	lines = download_words()

	# iterates through the entire word list - if any words are anagrams it is pushed to an array
	a = String[]
	for i in lines
		if is_anagram(x, i)
			push!(a, i) end
	end
	return a
end