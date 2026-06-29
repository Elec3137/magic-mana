<style>
  :root {
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
    ["green", 100],
    ["colorless", 0],
  ]);
</script>

{#each values as value}
  <div>
    <button onclick={() => values.set(value[0], value[1] - 100)}>-100</button>
    <button onclick={() => values.set(value[0], value[1] - 10)}>-10</button>
    {value[0]} {value[1]}
    <button onclick={() => values.set(value[0], value[1] + 10)}>+10</button>
    <button onclick={() => values.set(value[0], value[1] + 100)}>+100</button>
  </div>
{/each}
