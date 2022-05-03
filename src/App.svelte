<script lang="ts">
	import Registres from "./Registres.svelte";
	import Collapser from "./Collapser.svelte";

	import type { Definition } from "./defs";

	const LCA = "L'auteur cherche à"

	const registers: Definition[] = [
		{ nom: "Comique", description: `${LCA} faire rire le lecteur en plaçant des personnages dans des situations loufoques. Il existe 4 types de comiques: le comique de gestes, le comique de situation, le comique de mots et le comique de caractère.`, examples: [ "Les Fourberies de Scapin", "L'avare", "Les quiproquos" ] },
		{ nom: "Dramatique", description: `${LCA} faire s'identifier le lecteur aux personnage, tout en créant la peur et l'inquiétude en mettant en scène la menace et la destruction dans des péripéties renouvelées où intervient le suspense.`, examples: [] },
		{ nom: "Pathétique", description: `${LCA} susciter la pitié du lecteur pour le personnage. Pathétique → pathos = souffrance → patior = souffrir → passion`, examples: [] },
		{ nom: "Tragique", description: `${LCA} susciter la terreur ou la pitié du spectateur grâce à un personnage dominé par les Dieu. Le tragique repose sur trois éléments: la mort, le personnage doit mourir (soit directement, soit indirectement); la fatalité, l'impossibilité d'échapper à la mort, le personnage doit être pris au piège; la transcendance, une force supérieure doit dominer le destin.`, examples: [ "Dom Juan, <span>Molière</span>", "Phèdre, <span>Racine</span>" ] },
		{ nom: "Merveilleux", description: `${LCA} émerveiller le lecteur en faisant intervenir le surnaturel`, examples: [ "Cendrillon" ] },
		{ nom: "Fantastique", description: `${LCA} susciter le doute ou l'hésitation du lecteur de façon à l'inquiéter`, examples: []},
		{ nom: "Lyrique", description: `${LCA} faire partager ses sentiments au lecteur. Il faut que ce soit le locuteur qui exprime ses sentiments => Le pronom "je"`, examples: [] },
		{ nom: "Burlesque", description: `${LCA} cherche à faire rire le lecteur en dévalorisant des personnes haut placés`, examples: [ "Caricature du président de la république" ] },
		{ nom: "Héroï-comique", description: `${LCA} faire rire en donnant à un personnage de basse condition l'attitude et le language d'un roi (inverse du registre burlesque)`, examples: [] },
		{ nom: "Polémique", description: `${LCA} faire participer le lecteur en un débat entre deux opinions opposés`, examples: [ "Pour ou contre le féminisme" ] },
		{ nom: "Satirique", description: `${LCA} développer la critique d'un personnage, souvent en s'en moquant`, examples: [ "Canard enchainé" ] },
		{ nom: "Réaliste", description: `${LCA} impressionner le lecteur en décrivant des scènes banales et triviales. Attention: le réel n'est pas réaliste`, examples: [] },
		{ nom: "Épidictique", description: `${LCA} cherche à écrire UN éloge ou un blâme d'un personnage`, examples: [ "Le portrait du président de la république" ] },
		{ nom: "Épique", description: `${LCA} créer l'admiration pour un héros qui se bat pour le destin de son peuple. La guerre peut-être métaphorique`, examples: [ "Les épopées: L'Illiade d'Homère, L'Odyssée d'Homère, L'Énéide de Virgile et La Chanson de Roland" ] },
	];

	let genres: Definition[] = [
		{ nom: "Roman", description: `Récit fictionnel long avec un narrateur`, examples: [ "“Illusions Perdues”, Balzac" ] },
		{ nom: "Nouvelle", description: `Récit fictionnel court avec un narrateur`, examples: [ "“Le Bohneur”, Maupassant" ] },
		{ nom: "Conte", description: "Récit fictionnel court ou long, faisant intervenir des éléments merveilleux", examples: [ "“Candide”, Voltaire" ] },
		{ nom: "Épopée", description: "Long récit poétique d'aventures héroïques où intervient le merveilleux", examples: [ "“Les aventures de Télémaque”, Fénelon" ] },
		{ nom: "[Auto]Biographie", description: "Récit de la vie d'une personne ou de soi-même", examples: [ "“Colette”, Sédo" ] },
		{ nom: "Lettres", description: "Œuvre littéraire visant à plair et à émouvoir, contraire aux ouvrage scientifiques", examples: [ "“Lettres Personnes”, Montesquieu" ] },
		{ nom: "Article de journal", description: "Texte publié dans un journal, pouvant être agrémenté d'images", examples: [ "“J'accuse”, Emile Zola, dans l'Aurore" ] },
		{ nom: "Essai", description: "Œuvre de réflexion, pouvant être philosophique, historique, scientifique ou politique.", examples: [ "“De l'institution des enfants”, Michel de Montaigne, dans Les Essais" ] },
		{ nom: "Pièces de théatre", description: "Texte contenant des interactions entres plusieurs personnages (dialogues) visant à etre joué sur scène", examples: [ "“Rodogume”, Pierre Corneille" ] },
		{ nom: "Poème", description: "Texte rhytmé, contenant souvent des vers", examples: [ "“Au rendez-vous allemand”, Paul Éluard" ] },
		{ nom: "Chanson", description: "Texte visant à être chanté", examples: [ "“Balance ton Quoi”, Angèle" ] },
		{ nom: "Journal", description: "Ensemble de notes datées, présentant soubent les actions, réflexions ou sentiments de l'auteur", examples: [ "“Le journal d'Anne-Franck”" ] },
		{ nom: "Mémoires", description: "Recueil de souvenirs d'une personne à propos d'événements historiques ou anectodiques, publics ou privés", examples: [ "“Les Mémoires d'outre-tombe”, Chateaubriond" ] },
		{ nom: "Discours", description: "Texte prononcé devant une foule", examples: [ "“Discourd de réception du prix Nobel de la paix”, Malala Yausafrai" ] },
		{ nom: "Fable", description: "Récit court avec une morale", examples: [ "“La Cour du Lion”, Jean de la Fontaine, dans Fables de la Fontaines" ] }
	];

	let mouvements: Definition[] = [
		{ nom: "Renaissance (XVI)", description: `Mouvement qui vise à faire renaître les arts`, examples: [ "Léonard de Vinci" ] },
		{ nom: "Humanisme (XVI)", description: `Mouvement qui place l'homme au centre de l'univers, et qui encourage l'expérimentation et la science`, examples: [ "Léonard de Vinci" ] },
		{ nom: "Pléiade (XVI)", description: `Renouveau de la poésie par imitation des grecs, en français`, examples: [ "Ronsard" ] },
		{ nom: "Baroque (XVII)", description: `Mouvement concentré sur le mouvement et la surchage, qui a pour but d'impressioner et de convertir au catoliscisme`, examples: [ "Corneille" ] },
		{ nom: "Préciosité (XVII)", description: `Mouvement qui vise la délicatesse et le raffinement`, examples: [ "Madame de Lafayette" ] },
		{ nom: "Classicisme (2eme moitié du XVII)", description: `Mouvement caractérisé par l'équilibre, la clarté et la rigueur`, examples: [ "Molière", "Racine" ] },
		{ nom: "Les Lumières (XVIII)", description: `Mouvement visant à illuminer le peuple et à combattre les superstitions et l'obscurantisme`, examples: [ "Voltaire", "Didelot", "Rousseau" ] },
		{ nom: "Romantisme (1ère moitié du XIX)", description: `Mouvement caractérisé par l'expression de sentiments forts, et le sentiment que le passé ne reviendra pas`, examples: [ "Masset" ] },
		{ nom: "Réalisme (milieu XIX)", description: `Mouvement qui décrit la réalité de manière terre-à-terre et sans prendre de pincettes`, examples: [ "Balzac" ] },
		{ nom: "Naturalisme (2ème moitié du XIX)", description: `Mouvement qui s'interesse à l'influence de l'hérédité et du milieu social`, examples: [ "Zola" ] },
		{ nom: "Le Parmasse (2ème moitié du XIX)", description: `Mouvement qui croit en la beauté pour la beauté, l'art pour l'art et la perfection dans la forme sans le fond`, examples: [ "" ] },
		{ nom: "Le Symbolisme (fin du XIX)", description: `Mouvement qui cherche à représenter la vie et le monde de façon symbolique et spirituelle`, examples: [ "Apollinaire" ] },
		{ nom: "Le Surréalisme (1ère moitié du XX)", description: `Mouvement qui rejette les valeurs morales pour l'expression complète des forces psychiques, comme dans un rêve`, examples: [ "Eluard", "Picasso" ] },
		{ nom: "Le Nouveau Roman (milieu XX)", description: `Mouvement qui rejette les codes et convention du roman habituel, amenant une nouvelle façon d'écrire`, examples: [ "Nathalie Sarraute" ] },
		{ nom: "L'absurde (2ème moitié XX)", description: `Représentation de sitations absurdes pour dénoncer l'absurdité du monde`, examples: [ "Ionesco" ] },
	];

</script>

<main>
	<h1>Base du Commentaire</h1>

	<Collapser text="Apprendre les registre...">
		<Registres registers={ registers } namePercent={ 0.9 } shuffle={ true } />
	</Collapser>

	<Collapser text="Apprendre les genres...">
		<Registres registers={ genres } namePercent={ 0 } />
	</Collapser>

	<Collapser text="Apprendre les mouvements...">
		<Registres registers={ mouvements } namePercent={ 0.3 } shuffle={ true } />
	</Collapser>
</main>

<style type="text/scss">
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;

	}

	h1 {
		color: #f78c6c;
		text-transform: uppercase;
		font-size: 3em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>
