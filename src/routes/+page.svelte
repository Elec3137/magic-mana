<style>
  :root, button {
    background-color: black;
    color: white;
  }
</style>

<script lang="ts">
  import { SvelteMap } from "svelte/reactivity";

  let values = new SvelteMap([
    ["white", 0],
    ["blue", 0],
    ["black", 0],
    ["red", 0],
    ["green", 0],
    ["colorless", 0],
  ]);
</script>

{#each values as [name, value]}
  <div>
    <button onclick={() => values.set(name, value - 100)}>-100</button>
    <button onclick={() => values.set(name, value - 50)}>-50</button>
    <button onclick={() => values.set(name, value - 10)}>-10</button>
    <button onclick={() => values.set(name, value - 1)}>-1</button>
    <button onclick={() => values.set(name, value + 1)}>+1</button>
    <button onclick={() => values.set(name, value + 10)}>+10</button>
    <button onclick={() => values.set(name, value + 50)}>+50</button>
    <button onclick={() => values.set(name, value + 100)}>+100</button>
    <img src="/{name}.webp" alt="mana type icon">
    {name} {value}
  </div>
{/each}
