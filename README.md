# Fountain Code: Matlab Implementation of LT Codes

This project is the implementation of the iterative encoding and iterative decoding algorithms of the [LT Codes](https://en.wikipedia.org/wiki/LT_codes),
an error correction code based on the principles of [Fountain Codes](https://en.wikipedia.org/wiki/Fountain_code) by Michael Luby.

[Dark HTML.](https://anuragpaul0.github.io/LT-Codes/LT%20codes.html)

[Light HTML.](https://anuragpaul0.github.io/LT-Codes/Light%20LT.html)

[Bleached HTML.](https://anuragpaul0.github.io/LT-Codes/LT%20bleach.html)

## Usage

You can use it to encode/decode a file on the fly (creates a file copy). Just fill in the Inputs at the top of the mlx file.

As an example, here is a basic test to ensure the integrity of the final file:
```
fwrite(fopen('text.txt', 'w'),'Hello!');
fclose('all');
```
or using cmd:
```
echo "Hello!" > test.txt
```
then on matlab replace the address in inputs(top) as:
```
ad = '/MATLAB Drive/text.txt' % file path of the file
```
A new file text-copy.txt should be created with the same content.

### Content

* `LT Codes.mlx` contains the main program, constants and most functions that are used in both encoding and decoding.
* `Symbol.m` contains the Symbol class.
* `geni.m` contains function that generate indeges and degrees based on the ideal soliton and robust soliton distributions.
## Comments
* The time consumed by the encoding and decoding process is completely related to the size of the file to encode and the wanted redundancy.
* md5sum could be used to compare the integrity of the original file with the newly created file. It's also availavle online.
## References

> M.Luby, "LT Codes", The 43rd Annual IEEE Symposium on Foundations of Computer Science, 2002.

> github.com/Spriteware/lt-codes-python

## License

MIT License
Copyright (c) 2023 Anurag Paul

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
