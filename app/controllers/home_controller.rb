class HomeController < ApplicationController
	before_action :tabs

	def tabs
		@tabs = [{ name: "Accueil", content: %{
			<div class="slogan">On ne l\'appelle pas <span class="accentuer">FabLab</span> pour rien !</div>
	
			<div class="white-box">
				<h2>Le FabLab ? C\'est quoi ?</h2>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Un Fab Lab (abréviation de Fabrication laboratory) est une plate-forme ouverte de création et de prototypage d’objets physiques, “intelligents” ou non. Il s’adresse aux entrepreneurs, aux designers, aux artistes, aux étudiants désireux d’expérimenter et d’enrichir leurs connaissances pratiques en électronique, en CFAO, en design, aux bricolages du XXIe siècle… </p>
			</div>

			<div class="white-box">
				<center>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2596.3712934710197!2d2.7932739151603565!3d49.401883779344416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e7d41063bb0aed%3A0x2ce8f1c5a7340310!2sCentre+d&#39;Innovation+UTC!5e0!3m2!1sfr!2sfr!4v1448747947641" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
				</center>
			</div>

			<div class="white-box">
				<h2>Actualités</h2>
				<div class="post">
					<p><span class="accentuer">FabLab le retour</span><br>
					<br>
					Posted on 11 octobre 2014<br>
					<br>
	Un nouveau semestre implique une nouvelle équipe de choc. Me voilà donc sur le pied de guerre en tant que nouveau membre de la communication de FabLab. Je me ferai un plaisir de vous tenir informés de l’actualité de l’atelier étudiant et n’hésitez pas à venir nous rencontrer au 1er étage de Centre d’Innovation.<br>
	Nous vous rappelons qu’il n’est pas nécessaire d’avoir un projet en cours pour venir : FabLab ouvre ses portes à toute personne intéressée par l’électronique et la mécanique, curieuse de découvrir, d’apprendre, ou bien à toute personne voulant passer un peu de son temps avec nous !<br>
	Alors à bientôt et n’oubliez pas de nous suivre sur Facebook et Twitter !
					</p>
				</div>
			</div>
		}},{ name: "Machines", content: %{
		}},{ name: "Fournitures", content: %{
		}},{ name: "Contact", content: %{
		}}];

	end

	def show
	end
end
