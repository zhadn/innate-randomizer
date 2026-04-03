# Chrono Cross Innate Randomizer (by Zhadn)

The innate randomizer assigns innate values at random to all playable characters in the game, with the exception of Lynx and Pip.

In addition, other modifications have been made for a more consistent gameplay experience:
- Maintains consistency of character innates with a character's respective level 3, 5, and 7 single techs.
- Maintains consistency of double and triple techs with characters closely associated with those techs (Kid → Yellow, DoubleTake → Yellow).
- Maintains consistency of characters that appear in boss fights with their randomized innate (Karsh → Blue, Karsh (Cape Howl) → Blue).
- Sets Lynx's innate as Serge's inverse (Serge → Blue, Lynx → Red).

https://github.com/user-attachments/assets/fa1b6c74-f628-4ef7-8cc6-ed000baf8c03

## Installation
1. Place `char.bin` (character innates), `char20.bin` (dream sequence innates), `pgdat.bin` (tech innates), and `monster.bin` (boss fight innates) inside this folder.
    1. You must obtain these files from Chrono Cross: The Radical Dreamers Edition.
    2. In Windows, the default directory is `./Steam/steamapps/common`.
    3. Access game files by converting cdrom.dat to cdrom.zip, then copy the four files from `./cdrom.zip/battle/data` to `./CC Innate Randomizer`.
    4. <img width="974" height="684" alt="image" src="https://github.com/user-attachments/assets/0625a55d-9abe-4add-887f-575effefb978" />
2. Run `randomize_innate.bat`.
    1.  Optionally, review changes in `cheatsheet.txt`.
4. After executing the batch file, place the modified files (`char.bin`, `char20.bin`, `pgdat.bin`, `monster.bin`) inside `./cdrom.dat/battle/data`.
5. Play the Chrono Cross Innate Randomizer mod!
    1. You must start a new game file via New Game. This mod does not work with existing memory card save files.
    2. Restore original game files in Steam on the Chrono Cross Library page via `Manage > Properties... > Installed Files > [Verify integrity of game files]`.

## Cheatsheet
To view the entire mapping of randomized innates for characters and techs, open the generated `cheatsheet.txt`. 

<img width="871" height="927" alt="image" src="https://github.com/user-attachments/assets/ba1e451f-34bc-41b8-9b11-4a8356f8f796" />

Note that this file is automatically written, but not overwritten, when you run `randomize_innate.bat`. 

## Known Issues
- **Serge:** The randomized innate may be overwritten.
- **Lynx:** The randomized innate may be overwritten.
- **Solt and Pepper:** How _unfortunately_ unfortunate! Solt and Pepper may have incorrect information about Serge's innately INNATE Element color attribute.

## Frequently Asked Questions (FAQ)

### Why isn't Pip's innate randomized?
Pip is technically difficult to implement, with many distinct forms and techs. 

Additionally, changing Pip's innate could prove to be tricky, as his design is based on element usage starting from the White innate element.

For now, Pip remains unchanged. However, future versions of the Innate Randomizer mod may include Pip innate randomization.

### Why isn't Lynx's innate randomized?
This mod is designed for Serge and Lynx to remain as innate opposites, like the original game.

For example, during the events of Fort Dragonia, and thereafter, I think it's more meaningful for each character to be strong against the other, where both innates are directly associated.

### How do you determine randomization for Single Techs?
Single techs are always the same as the character's randomized innate (`Serge` → `Green`, `Dash & Slash` → `Green`).

### How do you determine randomization for Double and Triple Techs?
Double and Triple techs are, where possible, rooted in the character most closely associated with the tech's original innate element.

For example, in the original game:
-  `Kid` → `Red`
-  `Mel` → `Yellow`
- `DoubleTake` (`Pilfer` → `Red` + `Snatch` → `Yellow`) → `Red` for battle damage.

Because of the direct innate relationship between Kid and DoubleTake, DoubleTake is always rooted in Kid's randomized innate.

For techs without a direct relationship, I root the innate in a character associated with the tech's original game element (`Pierre` → `Blue`, `Z-Slash` → `Blue`).

Here is the complete list of character and tech associations:
- **Direct relationships:** `DoubleTake` (Kid), `DraggyRider` (Leah), `DragonSpike` (Karsh), `Flamenco` (Miki), `PitchBlack` (Grobyc), `SwordStorm` (Guile), `TossedSalad` (Turnip), and `DeltaForce` (Serge).
- **Indirect relationships:** `VitalForce` (Serge), `X-Strike` (Kid) and `Z-Slash` (Pierre).

Additional notes:
- For `VitalForce` and `DeltaForce`, I chose Serge as the root character, so these two dual techs will always randomize to the same innate element.
- For `X-Strike` and `DoubleTake`, I chose Kid as the root character, so these two dual techs will always randomize to the same innate element.
- For `TossedSalad`, both Turnip and NeoFio satisfy my criteria for a direct association, so for this double tech, I chose-eth Turnip.

### Are you looking for feedback?
Yes! Always!

### Reporting Issues
Please discuss issues and feedback in this repository.

Thank you.

### Acknowledgements
Thank you to the incredible members of the Chrono Cross community, the Chrono Compendium community, and the Moogles & Mods Discord community. In particular, thank you Grobyc, F-Man, and Kermit.

Thank you to the Radical Dreamers development teams.

And, finally, thank you for playing!
