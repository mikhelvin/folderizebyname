# About folderizebyname

This is a simple bash script intended to be used by music producers, editors, mix engineers, composers, and anyone else dealing with a ridiculous amount of audio stems. Emulates Mac's "New Folder with Items" command, except looped and based on numbering within files. Written specifically for .wav files with the suffix ".{number}.wav", though you can change this quite easily. 

Typically stems (audio exports for a single cue, split by instrument) from [Logic](https://www.apple.com/ca/logic-pro/) can be suffixed with a number ".#" so that regions can be exported and organized. The above example demonstartes 15 files for 3 cues. Could be more or less depending on the stem breakdown. Not too hard to sort them manually for just 3 cues, but this quickly turns into a nightmare with 100+ cues. This script will create folders for each of the cues and place the files into them, saving you the work. Hopefully.

# Instructions

**Use at your own risk.**

1. Download `folderize.sh` and place the script within the directory you wish to folderize (sample input/output is below).
2. Ensure execution priveleges are enabled on `folderize.sh` (use command `chmod +x folderize.sh` if needed).
3. `cd` into the folder with your files and the script, and run the command `./folderize.sh`. 

**Note:** An arbitrary 128 folder limit is currently hardcoded in to reduce the creation of superflous folders, though the script does cleanup empty folders at the end on its own. Change the default value of 128 if you're working with more cues than that.

**Sample input:**
<pre>
base_directory/
├── Composer-Score.Brass-Keys.1.wav
├── Composer-Score.Brass-Keys.2.wav
├── Composer-Score.Brass-Keys.3.wav
├── Composer-Score.MIX.1.wav
├── Composer-Score.MIX.2.wav
├── Composer-Score.MIX.3.wav
├── Composer-Score.Perc.1.wav
├── Composer-Score.Perc.2.wav
├── Composer-Score.Perc.3.wav
├── Composer-Score.Strings-Winds.1.wav
├── Composer-Score.Strings-Winds.2.wav
├── Composer-Score.Strings-Winds.3.wav
├── Composer-Score.Synths-FX.1.wav
├── Composer-Score.Synths-FX.2.wav
├── Composer-Score.Synths-FX.3.wav
└── folderize.sh
</pre>

**Sample output after folderize.sh:**
<pre>
base_directory/
├── 1/
|   ├── Composer-Score.Perc.1.wav
|   ├── Composer-Score.Strings-Winds.1.wav
|   ├── Composer-Score.Brass-Keys.1.wav
|   ├── Composer-Score.MIX.1.wav
|   └── Composer-Score.Synths-FX.1.wav
├── 2/
|   ├── Composer-Score.Perc.2.wav
|   ├── Composer-Score.Strings-Winds.2.wav
|   ├── Composer-Score.Brass-Keys.2.wav
|   ├── Composer-Score.MIX.2.wav
|   └── Composer-Score.Synths-FX.2.wav
├── 3/
|   ├── Composer-Score.Perc.3.wav
|   ├── Composer-Score.Strings-Winds.3.wav
|   ├── Composer-Score.Brass-Keys.3.wav
|   ├── Composer-Score.MIX.3.wav
|   └── Composer-Score.Synths-FX.3.wav
└── folderize.sh
</pre>