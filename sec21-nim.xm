<?xml version="1.0" encoding="UTF-8" ?>
<chapter xml:id="nim" xmlns:xi="http://www.w3.org/2001/XInclude">
	<title>Nim</title>
	<introduction>
		<p>

In this chapter, we explore the game of Nim.


</p>
</introduction>
<section xml:id="nim0">
<title>The Game of Nim</title>
<p>

In this chapter, we develop the lovely mathematical theory of the game of \scmarginterm{Nim}.  This two-player game starts with a few heaps (or piles) of beans (or stones or coins). A move consists of removing some or all of the beans in a single heap.  The players take turns, and the winner is the person who makes the last move.

Borrowing the multiset notation from Nimble, we use <m>\{ n_1, n_2, \ldots. n_k \}</m> to represent a Nim game with <m>k</m> heaps, where the <m>i</m>th heap contains <m>n_i</m> beans, <m>1 \leq i \leq k</m>.
For example, Figure \ref{fig:nim} shows the game position  <m>\{ 4, 3, 7 \}.</m> There are 14 possible moves from this position. Are any of these options winning moves? We will soon see that the answer to this question is "No." This Nim position is a \Ppos.


\begin{figure}[ht]


			<image width="50%" xml:id="fig-img-nim0">
				<latex-image>
\begin{tikzpicture}[scale=1.2]

\begin{scope}[shift={(0,0)}]
\heap{(0,0)}{1};
\bean{(0, 0)}{10};
\bean{(.6, .2)}{-20};
\bean{(-.1, -.6)}{-15};
\bean{(-.2, .5)}{5};
\end{scope}


\begin{scope}[shift={(3,0)}]
\heap{(0,0)}{1};
\bean{(.5, 0)}{12};
\bean{(-.3, .45)}{-15};
\bean{(-.2, -.5)}{5};
\end{scope}


\begin{scope}[shift={(6,0)}]
\heap{(0,0)}{1};
\bean{(.3, 0)}{25};
\bean{(.45, -.4)}{-20};
\bean{(-.3, -.6)}{-15};
\bean{(.1, .6)}{5};
\bean{(-.4, .2)}{0};
\bean{(-.5, -.2)}{-30};
\bean{(.6, .4)}{100};
\end{scope}

\end{tikzpicture}
				</latex-image>
			</image>





\caption{A game of Nim with heap sizes 4, 3 and 7.}
\label{fig:nim}

\end{figure}


\begin{recess}{Nim}
Play some games of Nim. Once again, you can use whatever markers you like as your beans. Try playing various games with one heap, two heaps and three heaps. Can you find a winning strategy for Nim? Are there any similarities between Nim and Nimble?
\end{recess}

The game of <em> Nim</em> is the Rosetta Stone for combinatorial games.  Charles Bouton  analyzed the game of Nim over a century ago. The insights he held and the mathematical framework he devised remain the foundation of the theory of combinatorial games. The name "Nim"  appears in the vocabulary of combinatorial games like a mathematical motif. This name appears in definitions like "nim addition" and "nim value." In fact, the name <em> Nimble</em> is a clever play on words: the game of Nimble is actually Nim in disguised form! This masquerade is quite thin and easy to reveal. In Nim, we can reduce a heap of <m>n</m> beans to a heap of <m>n-1, n-2, \ldots, 2, 1</m> or 0 beans. In Nimble, we can move a coin from square <m>n</m> to square <m>n-1, n-2, \ldots, 2, 1</m> or off the board (onto "square 0"). So here is the disguise:  the coins in a game of Nimble mark the sizes of the heaps in the corresponding game of Nim. This shows that Nim and Nimble are actually the same game, and Figure \ref{fig:nim-and-nimble} demonstrates this correspondence.





\begin{figure}[ht]


</p>
<tabular top="minor" left="minor" bottom="minor" right="minor">
<row>
<cell>
			<image width="50%" xml:id="fig-img-nim1">
				<latex-image>
\begin{tikzpicture}[scale=.9]
</cell>
<cell>

</cell>
<cell>

</cell>
<cell>
\begin{scope}
</cell>
<cell>
\heap{(0,0)}{.75};
</cell>
<cell>
\bean{(0, .1)}{10};
</cell>
<cell>
\end{scope}
</cell>
<cell>

</cell>
<cell>
\begin{scope}[shift={(2,0)}]
</cell>
<cell>
\heap{(0,0)}{.75};
</cell>
<cell>
\bean{(-.2, .1)}{5};
</cell>
<cell>
\bean{(.1, -.3)}{-5};
</cell>
<cell>
\end{scope}
</cell>
<cell>

</cell>
<cell>

</cell>
<cell>
\begin{scope}[shift={(4,0)}]
</cell>
<cell>
\heap{(0,0)}{.75};
</cell>
<cell>
\bean{(-.1, .2)}{10};
</cell>
<cell>
\bean{(.3, -.1)}{-10};
</cell>
<cell>
\end{scope}
</cell>
<cell>

</cell>
<cell>
\begin{scope}[shift={(6,0)}]
</cell>
<cell>
\heap{(0,0)}{.75};
</cell>
<cell>
\bean{(-.05, -.05)}{10};
</cell>
<cell>
\bean{(.4, .2)}{0};
</cell>
<cell>
\bean{(-.1, -.4)}{-15};
</cell>
<cell>
\bean{(-.2, .3)}{5};
</cell>
<cell>
\end{scope}
</cell>
<cell>

</cell>
<cell>

</cell>
<cell>

</cell>
<cell>
\end{tikzpicture}
				</latex-image>
			</image>
</cell>
<cell>

</cell>
<cell>

</cell>
<cell>

</cell>
<cell>
\qquad {\Huge =}  \qquad \qquad
</cell>
<cell>

</cell>
<cell>

</cell>
<cell>
			<image width="50%" xml:id="fig-img-nim2">
				<latex-image>
\begin{tikzpicture}[scale=1]
</cell>
<cell>

</cell>
<cell>
\nimbleboard{5};
</cell>
<cell>

</cell>
<cell>
\coin{(1,1)};
</cell>
<cell>

</cell>
<cell>
\coin{(2,1)};
</cell>
<cell>
\coin{(2.12,1.1)};
</cell>
<cell>

</cell>
<cell>
\coin{(4,1)};
</cell>
<cell>

</cell>
<cell>
\end{tikzpicture}
				</latex-image>
			</image>
</cell>
<cell>

</cell>
</row>
</tabular>
<p>


\caption{A game of Nim with heap sizes <m>\{ 1, 2, 2, 4 \}</m> is equivalent to a game of Nimble with coins at <m>\{1,2,2,4\}.</m>}
\label{fig:nim-and-nimble}

\end{figure}

In general, we have:

</p>
<tabular top="minor" left="minor" bottom="minor" right="minor">
<row>
<cell>
The Nim position with heap sizes <m>\{ k_1, k_2, \ldots , k_r \}</m>
</cell>
</row>
<row>
<cell>
is equivalent to
</cell>
</row>
<row>
<cell>
the Nimble position with coins on squares <m>\{ k_1, k_2, \ldots , k_r \}</m>.
</cell>
</row>
</tabular>
<p>


By "equivalent," we mean that a move in Nim corresponds to a move in Nimble. If we remove <m>m</m> beans from a heap of size <m>k</m> in Nim, then the analogous move in Nimble is to move the token from square <m>k</m> to square <m>k-m</m>. Therefore, a winning strategy in Nim can be converted into a winning strategy in Nimble, and vice versa.


So who wins at Nim?  As a warm-up, consider  a Nim game with one heap of <m>n</m> beans. This game is clearly an \Npos, since the Next player can simply remove all of the beans. In fact, this is the <em>only</em> move that guarantees a win. If we leave any beans behind, our opponent can immediately take them all to win the game.
Two-heap Nim is also easy to resolve: we leave it as an exercise that <m>\{ n, m \}</m> is an \Npos~ precisely when <m>n \neq m</m>. Three-heap Nim is more complicated, so we are best served by moving directly to the <m>k</m>-heap case.

In the rest of this chapter, we will develop Bouton's theory of Nim, which gives us a straightforward criteria for determining whether a given Nim position is an \Npos~(Next player wins) or a \Ppos~(Previous player wins). The key to this framework is to use <em>binary representations of numbers</em>. So let's start by discussing this method of representing numbers.
</p>
</section>
</chapter>
