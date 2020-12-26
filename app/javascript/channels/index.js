// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


const form = document.querySelector("form");
const newInput = document.getElementById("new-pokemon");
const pokeIcon = document.getElementById('poke-icon');

const getresult = (pokemon) => {
  const baseUrl = `https://pokeapi.co/api/v2/pokemon/${pokemon}`;
  fetch(baseUrl)
    .then(response => response.json())
    .then((data) => {
      console.log(data.sprites["other"]["official-artwork"]["front_default"]);
      const hereItIs = `<h1>${data.abilities[0]["ability"].name}</h1>`
      const results = document.querySelector(".new-info");
      results.innerHTML = hereItIs;

      const hereItIs2 = `<h1>${data.abilities[1]["ability"].name}</h1>`
      const results2 = document.querySelector(".second-info");
      results2.innerHTML = hereItIs2;

      pokeIcon.src = `${data.sprites["other"]["official-artwork"]["front_default"]}`;

    });
};

form.addEventListener('submit', (event) => {
  event.preventDefault();
  getresult(newInput.value);
});
