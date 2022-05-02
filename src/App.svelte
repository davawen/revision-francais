<script lang="ts">
	import Registres from "./Registres.svelte";
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
	]

	let showRegistre = true;
</script>

<main>
	<h1>Base du Commentaire</h1>

	<p class="collapser" on:click={() => showRegistre = !showRegistre}>{ showRegistre ? '↓' : '→' } Apprendre les registres...</p>
	{#if showRegistre}
		<Registres registers={ registers } />
	{/if}
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

	.collapser {
		user-select: none;

		&:hover {
			cursor: pointer;
		}
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>
