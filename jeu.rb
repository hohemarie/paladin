#!/bin/env ruby
# encoding: utf-8

class Personne
  attr_accessor :nom, :points_de_vie, :en_vie

  def initialize(nom)#methode sans parametre
#fonction a linterieur de la classe :
    @nom = nom
    @points_de_vie = 100
    @en_vie = true
  end

  def info#methode sans parametre
#info dune Personne
    # A faire:
#a faire utiliser des notations avec des arobases car quand la fonction serq rqppelee elle utilisera des attributs de la classse - la classe Personne - et il nous importera de savoir si la personne est en vie, et pour le savoir nous regarderons combien elle a de poionts de vie , et ceci est inscrit dans les attributs de la personne - la personne, ennemi ou joueur, est un objet de la classe
#des arobases peuvent etre utilises lorsque la valeur dune variable est fixe ou absolue ou lorsque les valeurs a attribuer aux attributs ne sont pas le resultat dun calcul effectue par lordinateur 
#enfin, le signe arobase ne peut quetre utilie pour cmmencer le jeu ou pour communiquer certqines donnees concernant les joueurs. 
    # - Renvoie le nom et les points de vie si la personne est en vie#

if @en_vie > 0 
	return "en vie ", @nom
elsif @en_vie == 0 
	return "vaincu", @nom

#objet de classe Personne et nom
    # - Renvoie le nom et "vaincu" si la personne a été vaincue
  end

  def attaque(personne)#methode avec  parametre
#la personne passee en parametre pour le programme est un objet de classe Personne possedant les attributs en vie, points de vie, et nom pour les distinguer. 
#note concernant les notations du langage de programmation ruby utilises dabns les lignes de programme. la fonction est contenue dans la classe personne dont lobjet de la fonction fait partie. 
#fonction sappliquant a une personne -joueur ou ennemi

#voici une seconde distinction qui doit etre faite dans ce jeu 
#ici je nutiliserai que larobase pour afficher les valeurs des attributs concernant le joueur ou ennemi peu importe qui --dans la fonction presente-- attaque. 
#donc le recours a lecriture de fonction sert a creeer une dimension dans laquelle lutilisation des notations propres a ruby.
#dans ce cas dans cette fonction par exemple une personne en attaque une autre
#on peut admettre que chaque personne est un objet de la classe personne. meme si enrealite il y a un ennemi et un joueur, les deux personnes possedent les nenes caracteristiques , cest a dire un nom, un etat de vie ou de mort et un certain nombre de points de vie. 
#cependant le recours a une notation specifique au langage de programmation ruby i e une personne en attaque une autre et cette derniere est supposee etre celle qui est passee en parametre---la personne qui attaque est celle dont on parle en premier lieu. le langage de programmation ruby donne la notation arobase pour que nous puissions identifier ses attributs. le langage de programmation ruby donne dabord un mot pour que la personne qui subisse lattaque puisse etre contenue dans les lignes de programmation de lattaque qui la concerne. Ensuite, le langage de programmation ruby permet daccoler lattribut de la personne atttaquee a droite de la personne grace a un point et de dutiliser les signes de calculs tels que + = et - pour modifier leurs valeurs. Cette notation permet que les valeurs soient perdues.
#
    # A faire:
    # - Fait subir des dégats à la personne passée en paramètre

personne.degats #degats na pas ete defini
#ici on nomme lattribut points de vie de la personne passee en parametre. il faut savoir que les degats ne sont pas calcules a linterieur de cette fonction la mais a linterieur dune fonction qui sappelle degats plus loin dans le programme. une variable devrait contenir les degats subits ou commis par le joueur ou lennemi selon le cas. on trouve le nom de cette variable que lon cree soit meme sous la fonction qui sappelle degats. -----les noms des fonctions contenues a linterieur des classes ou le nom des classes ou le nom des attributs des classes ne nous donnent pas le nom de cette variable. 
#puts Personne.nom, "a", Personne.points_de_vie, "points de vie"
    # - Affiche ce qu'il s'est passé
return personne.info, personne.points_de_vie, "points de vie" #fonction info , sous fonction applicable a un objet de la classe Personne. 
#attribut Points de vie attribut dun objet de la classe Personne
  end

  def subit_attaque(degats_recus)#methode sans parametre
    # A faire:
    # - Réduit les points de vie en fonction des dégats reçus
#Personne.points_de_vie -= attaque#em fonction des degats recus pas en fonction de lattaque
#puts Personne.nom, "a", Personne.points_de_vie, "points de vie"
    # - Affiche ce qu'il s'est passé
#if Personne.points_de_vie == 0
#	Personne.en_vie = true
@points_de_vie -= degats_recus #ici le signe arobase peut etre utilise car la personne par defaut est celle de la classeelle meme et elle subit lattaque 
puts "points de vie", @points_de_vie
#la question de savoir comment calcule t on ou obtient on ou place t on en paramnetre la valeur des degats recus trouve sa reponse dans une autre partie du programme, en particulier dans une autre fonction
#return @nom, @points_de_vie,"points de vie"
#jjPersonne.info 
#	Personne.en_vie = false
    # - Détermine si la personne est toujours en_vie ou non mn
#r
if @points_de_vie ==0
	puts "K.O."
elseif @points_de_vie > 0 
	puts "en vie"

#sif @en_vie == true
#n
#	return @nom "en vie"
#elsif @envie ==false 
#	return @nom "vaincu"#la question de savoir quelle notation utiliser se pose ----- notation avec larobase ou bien accoler le fonction ou lattribut a lobjet -----
#je pense que aussi bien pour la personne qui est consideree etre la personne par defaut que pour lautre personne nous voulons savoir les degats recus ou cuases


  end
end

class Joueur < Personne
  attr_accessor :degats_bonus

  def initialize(nom)#methode sans parametre
    # Par défaut le joueur n'a pas de dégats bonus
    @degats_bonus = 0
#ici on utilise larobase car la ligne de code est ecrite a linterieur de la fonction qui elle meme est a linterieur de la classe

    # Appelle le "initialize" de la classe mère (Personne)
    super(nom)
  end

  def degats#methode sans parametre
#degats=@degats_bonus = #calcul des degats  
#	Joueur.points_de_vie -=Joueur.degats_bonus
	# A faire:
    # - Calculer les dégats
@points_de_vie -= degats + @degats_bonus #degats na pas ete defini
#la ligne de programme se trouve dans la classe joueur et na pas de parametre
#les noms de classe sont utilises par les programmeurs pour pouvoir se reperer dans le script, mais ici larobase peut etre utilise , il designera les points de vie du joueur , Joueur, aussi bien que ceux de la personne
#je remarque que la fonction degats est aussi presente a linterieur de la classe ennemis. je remarque aussi que la classe Personne contient la fonction attaque et subit degats. les deux fonctions additionnelles respectement classees sous les classes joueur et ennemi servent a ajuster les degats bonus 
    # - Affiche ce qu'il s'est passé
	puts "le joueur a perdu#{degats + @degats_bonus} , le joueur a #{ @points_de_vie}"
  end

  def soin#methode sans parametre
    # A faire:
@points_de_vie += 20#30 inserer une valeur 
puts "le joueur a #{@points_de_vie} points de vie" 
    # - Gagner de la vie
    # - Affiche ce qu'il s'est passé
  end

  def ameliorer_degats#methode sans parametre
    # A faire:
    # - Augmenter les dégats bonus
@degats_bonus += 10#15#j5 # seul le joueur peut ameliorer ses degats pour avoir une attaque plus puissante. Les ennemis ne le peuvent pas.
@points_de_vie += @degats_bonus
    # - Affiche ce qu'il s'est passé
puts "les degats bonus sont passes de #{@degats_bonus-15} a #{@degats_bonus}"
  end
end

class Ennemi < Personne
  def degats#methode sans parametre
    # A faire:
degats =20 #degats est defini ici  #on najoute pas les degats bonus car les ennemis ne peuvent pas causer plus de degats que la valeur qui est definie dans la variable degats 
#la valeur des degats pourrait etre trouvee ailleurs dans le script du programme  
@points_de_vie-=degats
    # - Calculer les dégats
#	@points_de_vie -= @degats_bonus #@degats_bonus ou Ennemi.degats_bonus 
  end
end

class Jeu
  def self.actions_possibles(monde)#methode sans parametre
    puts "ACTIONS POSSIBLES :"

    puts "0 - Se soigner"
    puts "1 - Améliorer son attaque"

    # On commence à 2 car 0 et 1 sont réservés pour les actions
    # de soin et d'amélioration d'attaque
    i = 2
    monde.ennemis.each do |ennemi|
      puts "#{i} - Attaquer #{ennemi.info}"
      i = i + 1
    end
    puts "99 - Quitter"
  end
  def self.est_fini(joueur, monde)#methode avec parametre

#nous nous trvons sous la fonction Jeu qui ne contient aucun attribut
#en revanche la fonction est_fini fonctionne selon deux parametres 
joueur.en_vie = true
monde.ennemis =#nous devons exprimer la condition selon laquelle il ne reste plus aucunn ennemi #cela pourrait etre exprime avec lexpression nil.to_a ie monde.ennemis = nil.to_a # cela equivaudrait a exprimer monde.ennemis = [] ou bien monde.ennemis = {} #cela voudrait dire qu'ils ont tous ete elimines

 
#ou bien la condition selon laquelle tous les ennemis sont K.O. #et pour exprimer cela, nous avons besoin deprimer le fait que le meme attribut de la totalite des objets qui ont ete regroupes dans lattribut Ennemis de lobjet monde cest a dire tous les ennemis du monde ont ete mis K.O. et dans dautres termes cela signifie que tous les attributs m specifiquement lattribut points_de_vie de chacun de ces ennemis est nul, cest a dire egal a zero
#alors nous allons voir si nous pouvons exprimer que nous pouvons verifier que tous les elements dune array sont egals a une certaine valeur et specifiquement sont nuls.
#la notation 
monde.ennemis.keep_if { |a| a.en_vie > 0 }

    # A faire:
#jEnnemis.points_de_vie.each == 0
#Monde.ennemis_en_vie = None	
    # - Déterminer la condition de fin du jeu
  end
end

class Monde
  attr_accessor :ennemis

  def ennemis_en_vie#methode avec parametre
    # A faire:
    # - Ne retourner que les ennemis en vie
monde.ennemis.each do |ennemi|
	if ennemi.en_vie = true 
		return ennemi.nom # difference avec ruby entre accoler le nom de lattribut apres ou avant jjjjjjjjjjj

#la difference entre accoler un mot avaec un point avant le nom de lobjet oiu apres le nom de lobjet
#cest que avant le nom de lobjet on met lattribut
#en fait dans le cas de monde . ennemis lobjet contient des sous objets a linterieur de lattribut
#mais de facon generale, 
#on accole le nom de la fonction apres lobjet dont on souhaite utiliser les informations
#et on place aussi le nom de lattrbut apres le nom de lobjet 


	#Monde.ennemis_en_vie.each do |ennemi| 
 	#	puts ennemi, "est en vie" 
  end

##############

# Initialisation du monde
#monde = Monde.new

# Ajout des ennemis
#monde.ennemis = [

# Initialisation du monde
monde = Monde.new

# Ajout des ennemis
monde.ennemis = [
  Ennemi.new("Balrog"),#nom de lobjet de classe Ennemi
  Ennemi.new("Goblin"),#nom de lobjet de classe Ennemi
  Ennemi.new("Squelette")#nom de lobjet de classe Ennemi
]

# Initialisation du joueur
joueur = Joueur.new("Jean-Michel Paladin") #nom de lobjet de classe Joueur

# Message d'introduction. \n signifie "retour à la ligne"
puts "\n\nAinsi débutent les aventures de #{joueur.nom}\n\n"

# Boucle de jeu principale
100.times do |tour|#boucle a linterieur du script du programme
  puts "\n------------------ Tour numéro #{tour} ------------------"#affichage de texte a linterieur 

  # Affiche les différentes actions possibles
  Jeu.actions_possibles(monde)#execution de la fonction Jeu
#Fonction Jeu a linterieur du script du programme
#sous progranne actions possibles a linterieur du script du programme
#appellation de lobjet classe de classe Monde

  puts "\nQUELLE ACTION FAIRE ?"
  # On range dans la variable "choix" ce que l'utilisateur renseigne
  choix = gets.chomp.to_i#entree de formulaire dans la variable nomme choix a linterieur du programme, entree dune variable

  # En fonction du choix on appelle différentes méthodes sur le joueur
  if choix == 0#verification de la condition de la valeur de la variable
    joueur.soin#execution du sous programme soin avec les informations du joueur contenu dans le script du programme
  elsif choix == 1#verification de la condition de la valeur de la variable a un entier naturel
    joueur.ameliorer_degats#execution du sous programme ameliorer_degats contenu a linterieur du script programme avec les donnees du joueur
  elsif choix == 99#verification de la condition de la valeur de la variable choix a un entier naturel
    # On quitte la boucle de jeu si on a choisi
    # 99 qui veut dire "quitter"
    break#actions a effectuer en cas de la verificabilite de la valeur de la variable choix a une valeur effective de 99 
#action de terminer le programme
  else#verification de la condition de la valeur de la variable choix a un entier naturel autre que 0, 1, ou 99
    # Choix - 2 car nous avons commencé à compter à partir de 2
    # car les choix 0 et 1 étaient réservés pour le soin et
    # l'amélioration d'attaque
    ennemi_a_attaquer = monde.ennemis[choix - 2]#creation dun objet ennemi a attaquer
#traitement dun entier naturel precedemment entre par lutilisateur entre 2 et 6
#appelle dune classe dobjet precedemment cree a linterieur du script ud programme et a linterieur de la classe dobjets ennemis
    joueur.attaque(ennemi_a_attaquer)#execution du sous programme attaque 
#appel et utilisation des informations du joueur et des informations de base detenues au sujet de lennemi a attaquer
  end

  puts "\nLES ENNEMIS RIPOSTENT !"
  # Pour tous les ennemis en vie ...
  monde.ennemis_en_vie.each do |ennemi|#execution du sous programme ennemisenvie des objets de classe monde
#repetition de lincrement pour chaque ennemi du monde
    # ... le héro subit une attaque.
    ennemi.attaque(joueur)#execution du sous programme attaque de classe ennemi en utilisant les informations du joueur
  end

  puts "\nEtat du héro: #{joueur.info}\n"#execution du script info de classe joueur servant a afficher les informations relatives a la vie du joueur

  # Si le jeu est fini, on interompt la boucle
  break if Jeu.est_fini(joueur, monde)#verification des conditions de fin du jeugrace aux informations contenues dans les joueur et monde --- execution du sous programme estfini de classe Jeu
end

if joueur.en_vie#verification de la valeur dune variable associee a lobjet joueyr de classe Joueur
  puts "Vous avez gagné !"
else
  puts "Vous avez perdu !"
end

