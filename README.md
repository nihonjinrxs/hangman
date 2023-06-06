# Hangman, with PragDave

This app was me walking my way through @pragdave's Elixir for Programmers hands-on course project.

Some challenges to take on later (from his suggested projects, that I put off for later):

1. Add a computer player
  
  > (Difficult) If you'd like an interesting challenge, write another application where the computer plays the hangman game. For a simple implementation you could just blindly guess letters, starting at the most frequent.
  >
  > You could then optimize it by looking at the possible words. You'll need to add a new API function to the dictionary to return all the words of a given length. You can then use that list to decide which letter will give you the most information based on the current game state.
  
2. Make Cached Fibonacci use Applications
  
  > (Non-trivial…) Two chapters ago, you wrote a cache for a Fibonacci calculator using an agent. That cache was started each time we did a calculation. Rewrite the cache as an application, so that it persists across calls to the Fibonacci calculator. This will involve creating a project for it.
  >
  > Then create another project for the code that does the Fibonacci calculation. Add the cache as a dependency, and verify that is correctly caches between calls to fib.
  >
  > Is there anything stopping you from using the cache module anywhere you need a transient key-value store?
  >
  > Is the cache preserved if you exit the main Fibonacci calculator and restart it? Can you explain your answer?
