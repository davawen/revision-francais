<script lang="ts">
	import Registres from "./Registres.svelte";

	let showRegistre = true;
</script>

<main>
	<h1>Base du Commentaire</h1>

	<p class="collapser" on:click={() => showRegistre = !showRegistre}>{ showRegistre ? '↓' : '→' } Apprendre les registres...</p>
	{#if showRegistre}
		<Registres />
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
		color: #ff3e00;
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
