def count_words(sentence):
    new_sentence = ''
    for letter in sentence:
        if not (letter.isalnum() or letter == "'"):
            new_sentence += ' '
        else:
            new_sentence += letter.lower()
    words = new_sentence.split()
    occurences = {}
    for word in words:
        w = word.strip("'")
        if w in occurences:
            occurences[w] += 1
        else:
            occurences[w] = 1
    return occurences
