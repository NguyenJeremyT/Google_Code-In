function is_anagram(x, y)
    if sort(split(x, "")) == sort(split(y, ""))
		return true end
	return false
end

function download_words()
    download("https://github.com/tk3369/words/raw/master/words.txt", "C:\\Users\\Jeremy\\Desktop\\Julia\\words.txt")
	f = open("C:\\Users\\Jeremy\\Desktop\\Julia\\words.txt");
	lines = readlines(f)
	counter = 1
	for l in lines
		lowercase("$counter $l")
		counter += 1
	end
	return lines
end

function find_anagrams(x)
	a = String[]
	lines = download_words()
	for i in lines
		if is_anagram(x, i)
			push!(a, i) end
	end
	return a
end