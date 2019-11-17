def is_isogram(word):
    word = word.lower()
    cache = {}
    for letter in word:
        if cache.get(letter) is not None and letter.isalpha():
            return False
        cache[letter] = True

    return True
