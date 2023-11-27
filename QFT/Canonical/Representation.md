# Representations of Lorentz group
For the $(3+1)$D spacetime, the Lorentz group can be represented as 
$$
	\Lambda(\vec \theta,\vec \beta) = \exp\left(i \theta_i J_i +i\beta_i K_i\right), \quad
	\theta_i \equiv \frac{1}{2}\varepsilon_{ijk}\omega_{jk},\quad
	\beta_i \equiv \omega_{i0},
$$
where the Lie algebra contains 3 rotational generators $J_i \equiv \frac{1}{2}\varepsilon_{ijk}M^{jk}$ and 3 boost generators $K_i \equiv M^{i0}$. In the fundamental representation, the generators are represented by
$$
\begin{aligned}
	J_1 &= \left[\begin{array}{cccc} 0 & & & \\ & 0 & & \\ & & 0 & -i \\ & & i & 0 \end{array}\right], & 
	J_2 &= \left[\begin{array}{cccc} 0 & & & \\ & 0 & & i \\ & & 0 & \\ & -i & & 0 \end{array}\right], &
	J_3 &= \left[\begin{array}{cccc} 0 & & & \\ & 0 & -i & \\ & i & 0 & \\ & & & 0 \end{array}\right], \\
	K_1 &= \left[\begin{array}{cccc} 0 & -i & & \\ -i & 0 & & \\ & & 0 & \\ & & & 0 \end{array}\right], & 
	K_2 &= \left[\begin{array}{cccc} 0 & & -i & \\ & 0 & & \\ -i & & 0 & \\ & & & 0 \end{array}\right], &
	K_3 &= \left[\begin{array}{cccc} 0 & & & -i \\ & 0 & & \\ & & 0 & \\ -i & & & 0 \end{array}\right].
\end{aligned}
$$
The Lie algebra of the Lorentz algebra can be explicitly done using the fundamental representation. The result is
$$
	\left[J_i, J_j\right] = i \varepsilon_{ijk} J_k, \quad
	\left[J_i, K_j\right] = i \varepsilon_{ijk} K_k, \quad
	\left[K_i, K_j\right] = -i\varepsilon_{ijk} J_k.
$$
A special combination of those generators $N_i^{L/R} \equiv \frac{1}{2}(J_i \mp i K_i)$ will create two independent algebras:
$$
\begin{aligned}
	\left[N_i^L, N_j^L \right] &= i\varepsilon_{ijk}N_k^L, \quad
	\left[N_i^R, N_j^R \right] &= i\varepsilon_{ijk}N_k^R, \quad
	\left[N_i^L, N_j^R \right] &= 0.
\end{aligned}
$$
In the following, we show such generators give all irreducible representations of the Lorentz group $\mathrm{SO}(3,1)$, which are the building blocks of the relativistic field theory.

We see that after the recombination, the Lorentz algebra breaks into two independent $\mathfrak{su}(2)$ algebra. Mathematically it means $\mathfrak{so}(3,1) \simeq \mathfrak{su}(2) \oplus \mathfrak{su}(2)$. That is,
$$
	U_{j_L,j_R}(\Lambda)
	= \exp\left[i(\vec\theta+i\vec\beta)\cdot \vec N^L_{j_L} + i(\vec\theta-i\vec\beta)\cdot \vec N^R_{j_R}\right],
$$
where we see that the representation of the Lorentz algebra can be labeled by $j_L$ and $ j_R$. In relativistic QFT, the Lorentz symmetry restricts the possible terms that can appear in the Lagrangian. Different free fields correspond to different representations of the Lorentz algebra, and the Lagrangian should be singlet under the Lorentz transformations.


## Trivial representation
The $(j_L,j_R) = (0,0)$ representation corresponds to the scalar field denoted as $\phi(x)$. Since the field itself is singlet, any polynomial of the field in principle can appear in the theory. When considering the free theory, we restrict our attention to the quadratic terms, therefore the allowed free theory can only be
$$
\mathcal L_{\mathrm{KG}} = \frac{1}{2}\partial^\mu \phi \partial_\mu \phi -\frac{m^2}{2}\phi^2 
	\simeq -\frac{1}{2}\phi (\partial^2+m^2) \phi.
$$
Besides the Lagrangian $\mathcal L_{\mathrm{KG}}$, there are more general Lorentz-invariant terms that can be added to the Lagrangian, which describes the interaction of the theory.

## Vector representation.
If we choose $(j_L=j_R=1/2)$, the field is transformed as a Lorentz vector. We denote the field as $A^\mu(x)$. Some possible quadratic forms for the vector field that forms singlets are $A^\mu A_\mu$, $(\partial_\mu A^\mu)^2$, $A^\nu \partial^2 A_\nu$, and $\varepsilon_{\mu\nu\rho\lambda} \partial^\mu A^\nu \partial^\rho A^\lambda$. For the field theory describing the electromagnetic field, we require the theory to further have gauge symmetry, i.e., invariant under $A^\mu(x) \rightarrow A^\mu(x) + \partial^\mu \alpha(x)$. The gauge invariant forbids the first term and forces the second and third terms to combine as
$$
(\partial_\mu A^\mu)^2 - A^\nu \partial^2 A_\nu
	\sim \frac{1}{2}(\partial^\mu A^\nu - \partial^\nu A^\mu)(\partial_\mu A^\nu-\partial_\nu A_\mu)
	\equiv \frac{1}{2} F^{\mu\nu}F_{\mu\nu},
	
$$
where $F^{\mu\nu}\equiv (\partial^\mu A^\nu - \partial^\nu A^\mu)$. The Lagrangian describing the electromagnetic field is given by
$$
	\mathcal{L}_{\mathrm{Maxwell}} = -\frac{1}{4}F_{\mu\nu}F^{\mu\nu}.
$$
Note that the fourth term is called the \textit{theta term}, which can be written as a boundary term: 
$$
\varepsilon_{\mu\nu\rho\lambda} \partial^\mu A^\nu \partial^\rho A^\lambda
	= \partial^\mu (\varepsilon_{\mu\nu\rho\lambda} A^\nu \partial^\rho A^\lambda).
$$


## Spinor representation
The spinor representations are those with $j_L=1/2$ or $j_R=1/2$. 
Specifically, we define the left-hand spinor $\psi_L = (\psi_L^1, \psi_L^2)^T$ and right-hand spinor $\psi_R = (\psi_R^1, \psi_R^2)^T$ whose transformations define $\Lambda_L$ and $\Lambda_R$:
$$
	\Lambda_L(\vec\theta,\vec\beta) = \exp\left(\frac{i}{2}\vec\theta\cdot\vec\sigma-\frac{1}{2}\vec\beta\cdot\vec\sigma \right), \quad
	\Lambda_R(\vec\theta,\vec\beta) = \exp\left(\frac{i}{2}\vec\theta\cdot\vec\sigma+\frac{1}{2}\vec\beta\cdot\vec\sigma \right) = \Lambda_L(\vec \theta, -\vec \beta).
$$
We can create a "scalar-like" object by the inner product of the spinors. Note that the $\psi_L^\dagger \psi_R/\psi_R^\dagger \psi_L$ are Lorentz invariant objects, while the products of two single-handed spinors like $\psi_L^\dagger \psi_L/\psi_R^\dagger \psi_R$ are not. However, note that $-i\sigma^2 \psi_L^*$ transforms like a right-handed spinor:

> Using the identity $\sigma^2 \cdot \vec\sigma^* \cdot\sigma^2 = -\vec\sigma$, we have 
> $$
> \sigma^2 \psi_L^*
> 	\rightarrow \sigma^2 \exp\left(-\frac{i}{2}\vec\theta\cdot\vec\sigma^*-\frac{1}{2}\vec\beta\cdot\vec\sigma^* \right) \sigma^2 \sigma^2 \psi_L^* 
> 	= \Lambda_L(\vec \theta, -\vec\beta) \sigma^2 \psi_L^*.
> $$
> Thus, the left-hand and right-hand spinor can be interchanged by the action of a "time reversal" operation $-i\sigma^2 \mathcal K$, where $\mathcal K$ is complex conjugation.


The bilinears
$$
	\psi_L \cdot \psi_L \equiv -i\psi_L^T \sigma^2 \psi_L,\quad
	\psi_R \cdot \psi_R \equiv -i\psi_R^T \sigma^2 \psi_R
$$
are therefore invariants. The spinor field theory consists of only the left-hand spinor and is called the *Majorana theory*:
$$
\begin{aligned}
	\mathcal{L}_{\mathrm{Maj}}
	= i \psi_L^\dagger \bar\sigma^\mu \partial_\mu  \psi_L -m(\psi_L \cdot \psi_L + \psi_L^\dagger \cdot \psi_L^\dagger).
\end{aligned}
$$
The field theory containing both left-hand and right-hand spinors is called the Dirac theory:
$$
	\mathcal{L}_{\mathrm{Dirac}} = \bar\psi \left(i\cancel\partial - m\right)\psi
	\equiv \bar\psi \left(i\gamma^\mu \partial_\mu - m\right)\psi,
$$
where the Dirac spinor contains left- and right-handed Weyl spinors:
$$
	\psi = \begin{pmatrix}
		\psi_L \\ \psi_R
	\end{pmatrix},\ 
	\bar\psi = \begin{pmatrix}
		\psi_R^\dagger & \psi_L^\dagger
	\end{pmatrix},\ 
	\gamma^\mu = \begin{bmatrix}
		0 & \sigma^\mu \\
		\bar\sigma^\mu & 0
	\end{bmatrix}.
$$
We remark that under the Dirac spinor basis, the Lorentz algebra is generated by $M^{\mu\nu} = \frac{i}{4}[\gamma^\mu, \gamma^\nu]$, or 
$$
	J_i = \begin{bmatrix}
		\sigma^i & 0 \\ 0 & -\sigma^i
	\end{bmatrix}, \quad 
	K_i = \frac{i}{2}\begin{bmatrix}
		\sigma^i & 0 \\ 0 & -\sigma^i
	\end{bmatrix},
$$
using the familiar parametrization, we can easily check that these matrices obey the transformation property.

Finally, we note that there is another invariant consisting of the Dirac field and the vector gauge field:
$$
	\mathcal L_\text{int} = q \bar\psi \gamma^\mu A_\mu \psi,
$$
which produces the QED Lagrangian $\mathcal{L}_\text{QED} = \mathcal{L}_\text{Dirac} + \mathcal{L}_\text{Maxwell}+\mathcal{L}_\text{int}$.