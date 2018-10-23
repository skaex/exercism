% Please visit https://exercism.io/tracks/prolog/installation
% for instructions on setting up prolog.
% Visit https://exercism.io/tracks/prolog/tests
% for help running the tests for prolog exercises.

% Replace the goal below with
% your implementation.

hello_world('Hello World!').

hello_world(X, Y):-
  atom_concat('Hello ', X, Z),
  atom_concat(Z, '!', Y).