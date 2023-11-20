#exer 2

#Krijoni nje volume me emrin test
docker volume create test

#Krijoni nje container me emrin sda me imazh nginx.
docker run -d --name sda -v test:/media/nginx nginx

#Beji mount volumit ne pathin brenda container /media/nginx
docker cp sda:/usr/share/nginx/html/index.html ./index.html

#Beni copy index.html qe ka nginx ne pathin /media/nginx
#Te file i configurimit te nginx ndryshoni pathin qe nginx mer index.html
#edhe pathi i updetuar te jete /media/nginx
#Modifikoni filen index.html ndryshoni nga welcome to nginx beje
#welcome to sda
docker rm -f sda

#Fshini kete kontainer.
docker rm -f sda

#Krijoni nje containmer tjeter edhe beji mount po te njejtin volume edhe ndryshoni pathin ne nginx config


