function x = Alg_05_01_ProximityPrestigeScores(D)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Authors: Fran�ois Fouss revised by XXXX (2017).
%
% Source: Fran�ois Fouss, Marco Saerens and Masashi Shimbo (2016).
%         "Algorithms and models for network data and link analysis". 
%         Cambridge University Press.
%
% Description: Computes the vector containing the proximity prestige scores
% of all the nodes of a directed graph.
%
% INPUT:
% ------- 
% - D : the (n x n) directed shortest path distance matrix between every 
%        pair of nodes of a directed weighted graph, computed by applying
<<<<<<< HEAD
%        Alg_01_03_ShortestPathDistance on C (the (n x n) nonnegative cost
%        matrix, representing a directed weighted graph).
% 
% OUTPUT:
% -------
% - x : The (n x 1) proximity prestige score vector.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Algorithm

% The number of nodes of the graph
[n, unused] = size(D);

% Initialization of the number of nodes that can reach each node
=======
%        Alg_01_03_ShortestPathDistance on C, the (n x n) nonnegative cost
%        matrix, representing a directed weighted graph.
% 
% OUTPUT:
% -------
% - x: The (n x 1) proximity prestige scores vector
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Checks of arguments 
 
% XXXX Je suppose qu'il n'y a pas de check puisqu'on a utilis� l'Alg_01_03

%% Algorithm
% The number of nodes of the graph
[n, unused] = size(D);

% Initialization of the number of nodes that can reach a node
>>>>>>> cb7dcca0b644d58b4e3fcce4f38ceefe82ab1b83
nb = zeros(n,1);

% Initialization of the sum-of-the-distances vector
sum = zeros(n,1);

% Initialization of the proximity prestige score vector
x = zeros(n,1);

for j = 1:n
    for i = 1:n
        if D(i,j) > 0
<<<<<<< HEAD
            % Distance between nodes i and j is greater than 0
=======
>>>>>>> cb7dcca0b644d58b4e3fcce4f38ceefe82ab1b83
            delta1 = 1;
        else
            delta1 = 0;
        end
        if D(i,j) < Inf
            delta2 = 1;
<<<<<<< HEAD
            % Update the sum of the distances between nodes i that can
            % reach node j, and node j
=======
>>>>>>> cb7dcca0b644d58b4e3fcce4f38ceefe82ab1b83
            sum(j) = sum(j) + delta2 * D(i,j);
        else
            delta2 = 0;
        end
<<<<<<< HEAD
        % Update the number of nodes that can reach node j
        nb(j) = nb(j) + delta1 * delta2;
        
    end
    % The proximity prestige score of node j
=======
        nb(j) = nb(j) + delta1 * delta2;
        
    end
>>>>>>> cb7dcca0b644d58b4e3fcce4f38ceefe82ab1b83
    x(j) = (nb(j) / (n - 1)) / (sum(j) / nb(j));
end