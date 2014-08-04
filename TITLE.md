# Introduction

## Path finding as decision problems

\begin{figure}
\begin{tikzpicture}[->,line join=bevel, thick]
  \tikzstyle{vertex}=[circle,fill=black!25,minimum size=12pt,inner sep=2pt]
  \node[vertex] (G_1) at (-2,0)  {$v_1$};
  \node[vertex] (G_2) at (0,0)   {$v_2$};
  \path (G_1) edge [bend left] node[above] {1} (G_2)
        (G_2) edge [bend left] node[below] {1} (G_1);
\end{tikzpicture}
\caption{A simply cyclic markov chain. For a definition of the term cyclic we refer to appropriate literature.}
\label{cyclic-graph}
\end{figure}

* Example graphs + animation

* Interesting result: UPATH *seems* to be easier (note: PATH *could* be just as easy if $L = NL$)

## Random Walk

* Example animation (dice as random visualization)

## Universal Traversal Sequence

* Example for graph of size 3 with d=2 (there are only 3)

# Space-Complexity

Foo

## Definition

* Turing machine model (picture)

## Examples

* What can we do with poly/log/constant space

## $NLSPACE \subseteq P$

* Proof

## PATH is NL-complete

* Informal definition of NL-completeness:
	- Transform instance of decision problem A to instance for B and use B to solve it
	- Restrict power of transformation function

* More precisely cover the transformation: TM -> configuration graph
	- only log-bounded space needed to encode current configuration
	- look at possible next configurations and write to output tape

* Applying PATH to that should be trivial

# RL and RandomWalk

* Use RandomWalk to construct randomized decider for $UPATH$

* Show that it can not work for $PATH$

## Proofing a bound on the number of steps

* Short example of Markov-Chain
* Relation to RandomWalk: Important connected graph
* RandomWalk can be modeled as Markov-Chain (Markov Property)

* Derive expected length of a random walk starting at any node $a$ to reach any other node $b$:
	We proof an upper bound: Expected number of steps to visit all nodes in G.

* Overview:
  - First compute $P_v$ and thus $E(v, v)$
  - Compute upper bound for $E(u, v)$
  - Compute upper bound for $E(a, G)$
  - Apply Markov-Inequality to compute probaboility that we need more than 8*e*n steps.

# Universal Traversal Sequences

## d-regular graphs

* Definition
* Number of d-regular graphs of size n
* Traversal sequences and random walks

## Probability amplification

* Conduct $m$ random walks, probability of not finding a path is $2^{-m}$, but size only $8en \cdot m$
* Make $m$ big enough that the probability of a given traversal sequences to work for all graphs is bigger than 0:
	- Again markov inequality: $E(F) = g_{n, d} \cdot 2^{-m} < 1$, thus:
	   $1 - Pr[F < 1] = Pr[F \geq 1] \leq E(F) / 1$ < 1 which results in $0 < Pr[F < 1]$
