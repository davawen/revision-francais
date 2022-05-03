<script lang="ts">
	export let text: string;

	let show = false;
</script>

<div>
	<p class="collapser" on:click={() => show = !show}>{ show ? '↓' : '→' } { @html text }</p>
	{#if show}
		<slot></slot>
	{/if}
</div>

<style type="text/scss">
	.collapser {
		user-select: none;

		&:hover {
			cursor: pointer;
		}
	}
</style>
