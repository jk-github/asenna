##Esimerkkirepo palvelintenhalintakurssille

h5. Tee moduli git-varastoon ja kirjoita raportti sinne MarkDownilla.

Update: Bonustehtävänä voit kokeilla kloonata uusi modulisi vasta bootatulle live-USB:lle.

##Aluksi

Päätin laittaa olemassaolevan luokan git repoon olen aiemmin käyttänyt samaa moduulia harjoituksissa 3 ja 4.
Aloitin luomalla githubiin repon jonka nimeksi tuli asenna kuten luokalla on tähänasti ollutkin. sitten asensi gitin koneelle.

siten käytin komentoa git commit puppetin kansiossa jossa valmis moduli oleilee. Haittapuolena on se että kaikki moduuliin liityvät komennot on pakko ajaa sudolla koska kansiossa ei ole käyttöoikeuksia perukäyttäjälle. Comitin jälkeen ajoin sudo add . ja sitten sudo clone https://github.com/jk-github/asenna.git

Homa ei menyt ihan putkeen koska fatal: destination path 'asenna' already exists and is not an empty directory. siirsin sitten aiemat tavarat pois mv komennolla ja sain homman menemään läpi siten kopioin aiemna kansion sisällön asenna kansioon ja käytin git push git pull komentoja ja sain netiin haluamani sisällöt.


##Testaus

lopuksi vielä poistin kaikki luokkaan liittyvät koneelta ja hain ne gitin avula uudelen koneelle ja ajoin luokan ongelmitta.
