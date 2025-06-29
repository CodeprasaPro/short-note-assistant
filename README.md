# short-note-assistant
This program helps find and save specific german words via abbreviated keywords.

Specifically this program helps me find and save difficult german words, nouns, reflexive verbs, cases, etc into separated files (ex: verbs are in a separated notepad, while nouns are same as in another files). While I was at the german lessons, I jotted down difficult words on sticky notes with its meaning. However eventually the sticky note was a mess with all the stuff mixed together. This problem lead me to find a way to store them seperately into its own notepad file. 

It is a normal thing when learner is learning something like a language uses letters to indicate its grammatical category to memorize the complete word, verb, or a noun. for an example:

- Mann (m.) - Man   (m. stands for **masculine**.)
- Frau (f.) - Woman (f. stands for **feminine**.)

The same way is used here but in a descriptive abbreviated keywords to indicate the group.

This progam is being written in perl 4.30. I am still improving it to make its usability more user-friendly.

Once the user wrote down all the words in a sticky note, it is much better to transfer all the things into a notepad file to help the program to categorize the stuff. It still replaces the last saved notepad file with a freshly saved notepad file. For now it is advised to store the lastly generated notepad file in another folder.

This is still in CLI mode. It runs via CLI, and then abbreviated keywords can be typed to extract and save the specific words into new notepad file. To accompany the user, program gives the user possible keywords to use to find and save the difficult german words. 
