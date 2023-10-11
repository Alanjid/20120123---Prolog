fibonacci(0, 0). %Caso base
fibonacci(1, 1). %Caso base
fibonacci(N, Y):- N>1, N1 is N-1, fibonacci(N1, Y1), N2 is N-2, fibonacci(N2, Y2), Y is Y1+Y2.