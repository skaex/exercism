class SimpleCipher {
    key: string

    constructor(key: string = SimpleCipher.generateKey()) {
        if (!/^[a-z]+$/.test(key)) {
            throw new Error('Bad key')
        }
        this.key = key
    }

    encode(phrase: string): string {
        return phrase
            .split('')
            .map((_, idx) => {
                const encodedInt: number = ((phrase.charCodeAt(idx) - 97) + (this.key.charCodeAt(idx % this.key.length) - 97)) % 26
                return String.fromCharCode(encodedInt + 97)
            })
            .join('')
    }

    decode(phrase: string): string {
        return phrase
            .split('')
            .map((_, idx) => {
                let decodedInt: number = (phrase.charCodeAt(idx) - 97) - (this.key.charCodeAt(idx % this.key.length) - 97)
                if (decodedInt < 0) {
                    decodedInt += 26
                }
                return String.fromCharCode(decodedInt + 97)
            })
            .join('')
    }

    static generateKey(): string {
        let generatedKey: string = ""
        for (let i = 0; i <= 100; i++) {
            generatedKey += String.fromCharCode(Math.floor(Math.random() * 25) + 97)
        }
        return generatedKey
    }
}

export default SimpleCipher
