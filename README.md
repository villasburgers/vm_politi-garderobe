# 👮 Villas Politi Garderobe

Et simpelt og optimeret **politi garderobe system** til FiveM, hvor spillere kan skifte uniform ved politistationer.

---

# Skift callbacks hvis du vil ændre så den virker til Jay-Clothing.

# ✨ Features

- 👕 Politigarderobe system (Tag nemt Politi outfits på)
- 📍 Flere lokationer via config
- 🧥 Custom uniforms baseret på job/grade
- 🎯 Target/interaction support
- ⚡ Let og optimeret script
- 🔒 Sikker client/server struktur
- 🧩 Nem tilpasning i config.lua

---

# 📥 Installation

- Download scriptet
- Læg mappen i din resources
- Start ressourcen i `server.cfg`

## cfg
```
ensure villas_politi_garderobe
ensure BW_Clothing
ensure ox_lib
ensure oxmysql
```

# ⚙️ Konfiguration

Alt konfiguration findes i config.lua

# 📍 Lokationer

Her kan du tilføje garderober:

```
Config.Lokationer = {
    {
        label = "Politi Garderobe",
        coords = vector3(462.97, -999.09, 30.68),
        radius = 1.5,
        kategori = "politi",
    }
}
```

Du kan:

Tilføje flere lokationer
Ændre coords
Ændre radius
Skifte kategori (politi, ambulance osv.)

# 👕 Uniformer

Alle outfits styres her:
```
Config.Toj = {
    politi = {
        {
            label = "Politielev Uniform",
            icon = "shirt",
            komponenter = {
                { component = 11, drawable = 525, texture = 0 },
                { component = 8, drawable = 50, texture = 0 }
            }
        }
    }
}
```


# 🧩 Clothing komponenter

## Tøj komponenter:

11 = Jakke
8 = Undertrøje
4 = Bukser
6 = Sko
3 = Handsker
9 = Vest
10 = Badge

## Props:

0 = Hat
1 = Briller
6 = Ur

# 📦 fxmanifest.lua

Sørg for korrekt setup:

```
client_scripts {
    'config.lua',
    'client.lua'
}
```

```
server_scripts {
    'config.lua',
    'server.lua'
}
```

# 🎨 Tilpasning

## Du kan nemt ændre:

Lokationer
Uniformer
Kategorier
Radius
Jobs

# 🛠 Support

Hvis der er problemer:

Opret issue på GitHub
Kontakt support via Discord

# 📜 License

## Du må:

Bruge scriptet på din server
Ændre det til eget brug

## Du må ikke:

Sælge det videre
Uploade det som dit eget
Dele det offentligt

#❤️ Credits

## Udviklet af villas.burgers.alt / VM Store
