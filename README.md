# Tetris GUI implementation using Phoenix LiveView.

This project was developed while following  [Bruce Tate's Quadblock series](https://grox.io/series/quad).
My implementation includes pause game  (triggered when pressing Esc key), next shape and Player Ranking features. Additionally, I added typespecs and some metaprogramming to my code base.

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/tetris`](http://localhost:4000/tetris) from your browser.


The low level game logic can be found [here](https://github.com/crisefd/tetris).

![Tetris in action](tetris-screen-shot.png)