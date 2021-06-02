# Separated emergency badges
##### Based on the **Icemellow's** police badge
### Only work with ESX.


> What do this script?
>
>> This script let to show to an other player a **emergency badge** - including name, patch, service ID, department - when you use in your inventory.

> How to use this script?
>
>> Firstly create a **"[badges]"** folder in your **"resources"** directory, then put the downloaded folders to it. After drop the **.png file** - named eg. *fire-badge.png* - to the **"esx_inventoryhud/html/img/items/"** folder. (If its not available, we soon creating that in a new update.) Secondly open the **config.lua** file, and edit the code like this:

```
Config.SteamIdentifiers = {
	["steam:12345678987654321"] = "hawking.png"
}
```
> How can i change the image?
>
>> The editable image can be found [here](https://github.com/summerfallinteractive/summerfallpublic/tree/main/summerfallroleplay/EDITABLE%20IMAGES) as **"sfi_roleplay-jelveny.psd"** name. Download this file, edit and save the edited image as **.png** to *"badge folder/html/badges"*, after that modify the config file to the created filename and done.

| Role        | Badge available     |
| ----------- | ------------------- |
| Police      | :heavy_check_mark:  |
| Fire        | :heavy_check_mark:  |
| EMS         | :heavy_check_mark:  |
| FBI         | :x:                 |
| Park Ranger | :heavy_check_mark:  |
| Army        | :x:                 |
