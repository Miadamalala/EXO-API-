require_relative 'lib/monster'

# Execution du class Larves
larves = Larves.new
larves.to_json_larves

# Execution du class Monstres_des_cavernes
monstres1 = Monstres_des_cavernes.new
monstres1.to_json_monsters1

# Execution du class Monstres_des_plaines
monstre2 = Monstres_des_plaines_herbeuses.new
monstre2.to_json_monsters2
puts " "
puts "=> Tous les fichiers ont bien ete ecrit dans chaque fichier.json <="