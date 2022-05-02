<script lang="ts">
import type { Definition } from "./defs";

export let registers: Definition[]; 

interface BoundRegistre extends Definition {
	nom_field?: string,
	description_field?: string
};

let inputs: BoundRegistre[] = registers.map(r => {
	let ran = Math.random() < 0.8;

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

		background-color: #32424A;
		padding: 1em;

		grid-template-columns: 1fr 3fr 1fr;

		div {
			padding: 0.5em;
			text-align: left;
		}

		color: #B0BEC5;
	}

	.original {
		color: #c3e88d;
	}

	.separated {
		display: block;
		padding: 1em 0;
		text-align: center;

		&:nth-child(1) {
			border-bottom: 1px solid #1E272C;
		}
	}

</style>
