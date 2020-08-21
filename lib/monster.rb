require 'bundler'
Bundler.require

class Larves
  def initialize
  # Recuperation des APIs en utilisant le filtre REST depuis le site DOFAPI,ici specifier le monstre Larve
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
  end

 # Ecrire dans le fichier larves.json 
  def to_json_larves
    File.open("./db/Larves.json", 'w') do |file|
      file.write(@type)
    end
    puts "... ecriture dans le fichier larves.json...success! "
  end
end

class Monstres_des_cavernes
  def initialize
  # Recuperation des APIs en utilisant le filtre REST depuis le site DOFAPI,ici specifier le monstre des cavernes
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
  end

# Ecrire dans le fichier Monstres des cavernes.json
  def to_json_monsters1
    File.open("./db/Monstres_des_cavernes.json", 'w') do |file|
      file.write(@type)
    end
    puts "...ecriture dans le fichier Monstres_des_cavernes.json... success!"
  end
end

  # Recuperation des APIs en utilisant le filtre REST depuis le site DOFAPI,ici specifier le monstre des plaines herbeuses
class Monstres_des_plaines_herbeuses
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
  end

# Ecrire dans le fichier monstres des plaines herbeuses.json  
  def to_json_monsters2
    File.open("./db/Monstres_des_plaines_herbeuses.json", 'w') do |file|
      file.write(@type)
    end
    puts "...ecriture dans le fichier Monstres_des_plaines_herbeuses.json... success!"
  end
end