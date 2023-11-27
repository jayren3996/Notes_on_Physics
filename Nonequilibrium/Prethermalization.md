# Prethermalization

References:

1. Dmitry Abanin, Wojciech De Roeck, Wen Wei Ho, and Francois Huveneers, [Communications in Mathematical Physics volume 354, pages 809–827 (2017)](https://link.springer.com/article/10.1007/s00220-017-2930-x).
2. Dmitry Abanin, Wojciech De Roeck, Wen Wei Ho, and Francois Huveneers, [Phys. Rev. B 95, 014112 (2017)](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.95.014112).

## Effective Hamiltonian in the rotating frame

Consider the Floquet system $H(t) = H_0+V(t)$ with high-driven frequency $\nu = 2\pi/T$. We will further assume $\int V(t)dt = 0$ since otherwise it can be absorbed into the static Hamiltonian. We summarize a systematic construction for an effective Hamiltonian that is close to a static one.

Consider a periodic unitary $Q(t)$ satisfying $Q(t+T)=Q(t)$. If we transform the system's wave function $\psi(t)$ to $\varphi(t) \equiv Q(t)\psi(t)$, the effective Hamiltonian under such a rotating frame is of the form
$$
H'(t) = Q^\dagger H(t) Q - i Q^\dagger \partial_t Q.
$$
We aim to find an optimal rotation $Q(t)$ order by order. For this purpose, it convenient to define $Q = e^\Omega$, and the effective Hamiltonian in the rotation frame is
$$
H'(t) = e^{-\Omega} H(t) e^{\Omega} - i e^{-\Omega} \partial_t e^{\Omega} 
= e^{-\operatorname{ad}_\Omega}[H_0+V(t)] -i\frac{1-e^{-\operatorname{ad}_\Omega}}{\operatorname{ad}_\Omega}\partial_t \Omega.
$$
We have define $\operatorname{ad}_\Omega A \equiv [\Omega, A]$. Note that the final expression comes from
$$
e^{-\Omega} \partial_t e^{\Omega} = \int_0^1 ds \ e^{-s\Omega} (\partial_t \Omega) e^{s\Omega} = \int_0^1 ds \ e^{-s\operatorname{ad}_\Omega} (\partial_t \Omega),
$$
Now we are going to expand $H'(t)$ recursively.
$$
H'(t) = \sum_{q=0}^\infty \frac{(-\operatorname{ad}_\Omega)^q}{q!} [H_0+V(t)] +i\frac{(-\operatorname{ad}_\Omega)^q}{(q+1)!}.
$$
Consider $\Omega \sim O(T)$. Then in the zeroth order, the Hamiltonian is $H_1(t) = H_0+V(t) -i\partial_t \Omega_1$. To minimize the time dependence, we choose
$$
\Omega_1(t) = -i \int_0^t dt' V(t').
$$
Therefore, in the first order,
$$
H_1(t) = H_0+V(t) +i \int_0^t dt'\ [V(t'),H_0] +\frac{i}{2} \int_0^t dt'\ [V(t'), V(t)] + O(T^2).
$$
We can express the Hamiltonian in the form $H_1 = \bar H_1 + V_1(t)$.

> **Claim**: The first-order static correction is
> $$
> \bar H_{1}^{(1)} \equiv \frac{i}{2T}\int_0^T dt_1 \int_0^{t_1} dt_2 \ [H(t_1), H(t_2],
> $$
> which agrees with the Magnus expansion.
>
> *Proof.* From the above, we know
> $$
> \bar H^{(1)}_1 = \frac{1}{T}\int_0^T dt_1 \int_0^{t_1} dt_2 \left\{i\left[V(t_1), H_0 \right] +  \frac{i}{2}\left[V(t_1), V(t_2) \right]\right\}.
> $$
> Let us expand the commutator:
> $$
> \int_0^T dt_1 \int_0^{t_1} dt_2 \left[H(t_1), H(t_2) \right] 
> 	= \int_0^T dt_1 \int_0^{t_1} dt_2 \left[V(t_1), H_0 \right] + \left[H_0, V(t_2) \right] +  \left[V(t_1), V(t_2) \right].
> $$
> We use the fact:
> $$
> \begin{aligned}
> 	&\ \int_0^T dt_1 \int_0^{t_1} dt_2 \left[H_0, V(t_2) \right]
> 	= \int_0^T dt_2 \int_{t_2}^T dt_1 \left[H_0, V(t_2) \right] \\
> 	=&\ T \left[H_0, \int_0^T dt\ V(t) \right] - \int_0^T dt\ t\left[H_0, V(t) \right] 
> 	= \int_0^T dt\ t\left[V(t), H_0 \right] \\
> 	=&\ \int_0^T dt_1\ \int_0^{t_1} dt_2 \left[V(t_1), H_0 \right].
> \end{aligned}
> $$
> Inserting it back, the commutator agrees with the definition of $\bar H^{(1)}_1$. Therefore we prove the claim.

In general, $\bar H_1$ requires the sum of infinite order, which makes the Hamiltonian quasi-local. The remaining time-dependent term $V_1(t)$ will be of the order $O(T)$.

### General recursive expansion

The effective Hamiltonian $H'$ can be regarded as another Floquet system, and we can apply further rotation to reduce the order of time-dependent terms. The procedure goes on recursively, using the recursive relation [[Communications in Mathematical Physics volume 354, pages 809–827 (2017)](https://link.springer.com/article/10.1007/s00220-017-2930-x)]:
$$
\begin{aligned}
\bar H_n &:= \frac{1}{T} \int_0^T H_n(t), & 
V_n(t) &:= H_n(t)-\bar H_n, \\
\Omega_n(t) &:= -i\int_0^t dt\ V_n(t), &
H_{n+1}(t) &:= \mathrm{e}^{-\Omega_n} H_n(t) \mathrm{e}^{\Omega_n}-\mathrm{ie}^{-\Omega_n} \partial_t \mathrm{e}^{\Omega_n}.
\end{aligned}
$$
We introduce the notation
$$
\gamma_n(O) := e^{-\operatorname{ad}_{\Omega_n}} O ,\quad
\alpha_n(O) := \int_0^1 ds e^{-s\operatorname{ad}_{\Omega_n}}O.
$$
The recursive relation then becomes
$$
H_{n+1} = \gamma_n(H_n) -i \alpha_n(\partial_t\Omega_n).
$$
Note that there is an optimal order $n_*$ for this procedure, since the order of $T$ shall be balanced with the growing prefactor. We also remark in each order, we can expand the static part to the order $O(T^{n_*})$, and the static Hamiltonian is strictly local.

### Time-independent Hamiltonian

Consider the Hamiltonian $H = \nu N + H_0$, with $\nu$ a large number and $N$ a quantum number as a sum of local terms. We can define 
$$
\bar H_0 = \frac{1}{T}\int_0^T dt\ e^{it\nu N} H_0e^{-it\nu N},
$$
where $T=2\pi/\nu$ is comparable to the "high-frequency" term. Note that $\bar H$ conserve the quantum number $N$. The Hamiltonian becomes $H = \nu N + \bar H_0 + V$. Now consider a (static) Unitary transformation $Q=e^{\Omega}$, where $\Omega\sim O(T)$, 
$$
\nu N+H_1=e^{-\Omega} (\nu N+H_0) e^{\Omega}.
$$
In the $O(1)$ order, we let 
$$
\nu[N, \Omega] + V = 0,
$$
and the order of the off-diagonal part will be reduced by one. The explicit solution for $\Omega$ is
$$
\Omega = -\frac{i}{T}\int_0^T dt\int_0^t ds \ e^{is\nu N} V e^{-is\nu N}.
$$
Similar processes can be done recursively:
$$
\begin{aligned}
\bar H_n &:= \frac{1}{T}\int_0^T dt\ e^{it\nu N} H_n e^{-it\nu N},& V_n &:= H_n-\bar H_n, \\
\Omega_n &:= -\frac{i}{T}\int_0^T dt\int_0^t ds \ e^{is\nu N} V_n e^{-is\nu N}, &
H_{n+1} &:= \gamma_n(H_n) + \nu \left[\gamma_n(N)-N\right] .
\end{aligned}
$$

## Optimal order and the bound on errors

We need some standard notion of locality. Let $\mathcal{B}_{\Lambda}$ be the algebra of bounded operators acting on $\mathcal{H}_{\Lambda}$. We denote by $\mathcal{B}_S \subset \mathcal{B}_{\Lambda}$ the subalgebra of operators acting nontrivially on $S\in \Lambda$. For any operator $Z$ we can decompose
$$
Z=\sum_{S \in \mathcal{P}_c(\Lambda)} Z_S,\quad Z_S \in \mathcal{B}_S,
$$
where $\mathcal{P}_c(\Lambda)$ denotes the set of finite, connected (by adjacency) subsets of $\Lambda$. We define a family of norms on (time-dependent) potentials, parametrized by a spatial decay rate $\kappa$
$$
\|Z\|_\kappa:=\sup _{x \in \Lambda} \sum_{S \in \mathcal{P}_c(\Lambda): S \ni x} \mathrm{e}^{\kappa|S|} \sup _t\left\|Z_S(t)\right\|, \quad \kappa>0
$$
Note that these norms are tailor-made for operators (potentials) that are sums of local terms that themselves are independent of the global volume $\Lambda$, in particular for manybody Hamiltonians. 

### General results

We will always assume that the frequency $\nu$ is large compared to some local energy scales, namely that there is a decay rate $\kappa_0>0$ such that $v \geq 9 \pi\|V\|_{\kappa_0}/\kappa_0$ and $n_* \geq 1$, where
$$
n_*:=\left\lfloor\frac{\nu / \nu_0}{\left(1+\ln \nu /\nu_0\right)^3}\right\rfloor-2, 
\quad\text {with}\quad 
\nu_0 :=\frac{54 \pi}{\kappa_0^2}\left(\|\bar H\|_{\kappa_0}+2\|V\|_{\kappa_0}\right).
$$
In Adanin's approach, they choose a decaying sequence 
$$
\kappa_n = \frac{\kappa_0}{1+\log(n_*+1)}.
$$
It can be proved that the norm of the time-dependent term $V_{n_*}$ is exponentially small in $n_*$ (and equivalently in $T$):
$$
\Vert V_{n_*}\Vert_{n_*} \le C \left(\frac{2}{3}\right)^{{n_*}} \Vert V_{n_*}\Vert_{0},
\quad\text{where}\quad
\Vert \cdot\Vert_n \equiv \Vert \cdot\Vert_{\kappa_{n}}.
$$
This also leads to the approximation of local observables. For any rate $0<r<\ln (3 / 2)$, there are numbers $K(O), K^{\prime}(O)<\infty$, depending on model parameters and the observable $O$, but not $v$, such that
$$
\left\|U^\dagger(t) O U(t)-\mathrm{e}^{\mathrm{i} t \bar H_{n_*}} O \mathrm{e}^{-\mathrm{i} t \bar H_{n_*}}\right\| 
\leq K \mathrm{e}^{-r n_*}\left(t+K^{\prime}\right)^{d+1}, 
\quad \text {for }\  t \in T \mathbb{N},
$$
where $K,K'$ depend on $r$ and $O$, but not on $\nu$.

For time-independent Hamiltonians with large parameters, there is a parallel result as follows. The optimal order is the same; the off-diagonal part is bounded by $\Vert V_{n_*}\Vert_{n_*} \le C (2/3)^{{n_*}} \Vert V_{n_*}\Vert_{0}$. As for local observable, for any $0<r_1<\frac{1}{d+1} \ln (3 / 2)$, and local operator $O$, there is a number $K$ such that
$$
\left\|U^\dagger(t) O U(t)-\mathrm{e}^{\mathrm{i} t(\nu N+\bar H_{n_*})} O \mathrm{e}^{-\mathrm{i} t(\nu N+\bar H_{n_*})}\right\| \leq \frac{K}{v}, 
\quad \text { for }\ t \leq \mathrm{e}^{r_1 n_*}.
$$

### Sketch of the proof

Using the recursive relation,
$$
\begin{aligned}
H_{n+1} &= \gamma_n(H_n) - i\alpha_n(\partial_t \Omega_n) = \gamma_n(H_n) - \alpha_n(V_n) \\
&= \gamma_n(\bar H_n) + [\gamma_n(V_n)-V_n] - [\alpha_n(V_n) - V_n] \\
&= \bar H_n + W_n,
\end{aligned}
$$

where we have defined 
$$
W_n = [\gamma_n(\bar H_n)-\bar H_n] + [\gamma_n(V_n)-V_n] - [\alpha_n(V_n) - V_n].
$$
In this way, $\bar H_{n+1} = \bar H_n + \bar W_n$, $V_{n+1}=W_n-\bar W_n$. Note that, since $V_n$ is periodic and integrates to zero, $\Vert \Omega_n\Vert_\kappa \leq (T/2) \Vert V_n\Vert_\kappa$. It suggests a bound like
$$
\left\|V_{n+1}\right\|_\kappa \approx(T / 2)\left\|V_n\right\|_\kappa\left(\left\|D_n\right\|_\kappa+2\left\|V_n\right\|_\kappa\right),
$$
keeping only the first order. To make this precise, we need the following lemma

> **Lemma 1.** Assume $3\|Q\|_n \leq \delta \kappa_n:=\kappa_n-\kappa_{n+1}$, then
> $$
> \left\|\mathrm{e}^Q Z \mathrm{e}^{-Q}-Z\right\|_{n+1} \leq \frac{18}{\delta \kappa_n \kappa_{n+1}}\|Z\|_n\|Q\|_n .
> $$
> Since $\|Z\|_{n+1} \leq\|Z\|_n$, we also get
> $$
> \left\|\mathrm{e}^Q Z \mathrm{e}^{-Q}\right\|_{n+1} \leq\left(1+\frac{18}{\delta \kappa_n \kappa_{n+1}}\|Q\|_n\right)\|Z\|_n
> $$
> We refer the proof to Ref. [Abanin et al., CMP].

That is, we shall set the decay rate $\kappa$ on the left-hand side to be slightly smaller than that on the right-hand side. Eventually, we will choose $\kappa_n=(1+\log (n+1))^{-1} \kappa_0$. 

To prove the bound, we set
$$
v(n):=\left\|V_n\right\|_n, \quad 
d(n):=\left\|\bar H_n\right\|_n, \quad 
\delta d(n):=\left\|\bar H_{n+1}- \bar H_n\right\|_{n+1}.
$$
Using Lemma 1, we then get
$$
\left\|W_n\right\|_{n+1} \leq \frac{T}{2} m(n) v(n)[d(n)+2 v(n)], \quad 
m(n):=\frac{18}{\delta \kappa_n \kappa_{n+1}},
$$
provided that $3 T v(n) \leq 2\delta \kappa_n$. In that case, 
$$
2 [d(n+1)- d(n)],\ v(n+1) \leq T m(n) v(n)[d(n)+2 v(n)].
$$
To get recursive bounds, it is handy to demand that $T m(n)[d(n)+2 v(n)]<2 / 3$ because then
$$
v(n+1),\ \delta d(n) \leq \frac{2}{3} v(n)
\quad\Longrightarrow\quad
d(n+1)+2 v(n+1) \leq d(n)+2 v(n).
$$
Then, the recursive reaction proves
$$
d(n)-d(n-1),\ v(n) \leq  \left(\frac{2}{3}\right)^{n} v(0).
$$
The recursive relation requires
$$
\frac{3 T}{2} v(n) \leq \delta \kappa_n,\quad
T m(n)[d(n)+2 v(n)]< \frac{2}{3}.
$$
We see that the above condition holds if 
$$
\frac{3 T}{2} m(j)[d(0)+2 v(0)] \leq 1, \quad
\frac{3 T}{2} v(j) \leq \delta \kappa_j, \quad \text { for any }\ 0 \leq j \leq n.
$$
