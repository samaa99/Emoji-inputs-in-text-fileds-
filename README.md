# emoji_text_field_input

## Flutter Emoji Input Length Demo
#### This Flutter application demonstrates how different string length properties behave when dealing with emojis in input fields. Understanding these differences is crucial when you need to handle text input that includes emojis, which are common in modern mobile applications.

The app provides three text fields, each with a different length check method:
 - Only Length Check: Displays the length of the input based on text.length, which counts the number of UTF-16 code units.
 - Runes Length Check: Uses text.runes.length to count Unicode code points, offering a more accurate representation for certain characters.
 - Characters Length Check: Utilizes text.characters.length from the characters package to count grapheme clusters, providing the most accurate and user-perceived character count, especially useful for emojis.


## Understanding the Code
#### Here’s a brief overview of how the length calculations are implemented:

Only Length Check: Directly accesses the length property of the string.
Runes Length Check: Converts the string into runes and then calculates the length.
Characters Length Check: Uses the Characters class to accurately count complex characters such as emojis as single units.

## Why It Matters
In applications that require precise text manipulation or display, understanding the difference between these methods ensures that your app can handle inputs as expected by users across various languages and symbol sets, including emojis.

