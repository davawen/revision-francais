<script lang="ts">
import type { Registre } from "./defs";

const LCA = "L'auteur cherche à"

let registers: Registre[] = [
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

interface BoundRegistre extends Registre {
	nom_field?: string,
	description_field?: string
};

let inputs: BoundRegistre[] = registers.map(r => {
	let ran = Math.random() < 0.5;

	return {
		nom: r.nom,
		description: r.description,
		nom_field: ran ? null : '',
		description_field: ran ? '' : null,
		examples: r.examples
	};
});

// Shuffle inputs
inputs = inputs
	.map(v => ({ v, sort: Math.random() }))
	.sort((a, b) => a.sort - b.sort)
	.map(({ v }) => v);

let isSubmitted = false;

</script>

{#if isSubmitted}
	<section class="grid">
		{#each inputs as r}
			<div>
				{#if r.nom_field === null}
					{ r.nom }
				{:else}
					<div class="original separated">{ r.nom }</div>
					<div class="separated">{ r.nom_field }</div>
				{/if}
			</div>
			<div>
				{#if r.description_field === null}
					{ r.description }
				{:else}
					<div class="original separated">{ r.description }</div>
					<div class="separated">{ r.description_field }</div>
				{/if}
			</div>
			<div>{ r.examples }</div>
		{/each}
	</section>
{:else}
	<section class="grid">
		{#each inputs as register}
			{#if register.nom_field === null} <div>{ register.nom }</div>
			{:else} <input type="text" bind:value={ register.nom_field } />
			{/if}

			{#if register.description_field === null} <div>{ register.description }</div>		
			{:else} <input type="text" bind:value={ register.description_field } />
			{/if}

			<div>{ register.examples.join(", ") }</div>
		{/each}
	</section>
{/if}

<button style="width: fit-content; margin: 1em" on:click={() => isSubmitted = true}>
	Submit
</button>

<style type="text/scss">
	.grid {
		display: grid;
		gap: 1rem;

		background-color: #FBFBFB;
		padding: 1em;

		grid-template-columns: 1fr 3fr 1fr;

		div {
			padding: 0.5em;
			text-align: left;
		}
	}

	.original {
		color: green;
	}

	.separated {
		display: inline-block;
		padding: 1em 0;
		vertical-align: middle;

		&:nth-child(1) {
			border-right: 1px solid black;
		}

		&:nth-child(2) {
			border-left: 1px solid black;
		}
	}

</style>
