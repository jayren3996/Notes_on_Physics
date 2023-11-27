# Schwinger-Dyson Equation

Since the path integral formalism integrate all field configuration, a redefinition of the field $\phi\rightarrow\phi+\varepsilon$ leaves the result invariant. This fact has many important consequences.

## Schwinger-Dyson Differential Equation

We first consider the scalar field
$$
\mathcal L = -\frac{1}{2}\phi\square\phi +\mathcal L'_\text{int}[\phi].
$$
The generating functional $Z[J]=\int D[\phi]\exp\left[i \int dx(\mathcal L+J\phi)\right]$ is invariant under the shift $\phi(x)\rightarrow\phi(x)+\varepsilon(x)$. This fact leads to
$$
Z[J]=\int D[\phi] e^{i\int dy (\mathcal L+J\phi)}\left[1+i\int dx \varepsilon(x)\left(-\square_x\phi(x)+\frac{\partial\mathcal L_\text{int}}{\partial\phi}+J(x)\right)+O(\varepsilon^2)\right]
$$
for arbitrary $\varepsilon(x)$, implying
$$
\square_x \langle\phi(x)\rangle_J = \left\langle \frac{\partial \mathcal L_\text{int}}{\partial\phi}+J(x)\right\rangle_J,
$$
or equivalently, the Schwinger-Dyson differential equation (SDde):
$$
-i \square_x \frac{\partial Z[J]}{\partial J(x)} = \left[\mathcal L'_\text{int}\left(-i\frac{\partial}{\partial J(x)}\right)+J(x)\right]Z[J].
$$
Note that this differential equation is equivalent to the Schwinger-Dyson equation (See). To see this, we expand
$$
Z[J] = \left\langle \exp\left[i\int dx \phi(x) J(x)\right] \right\rangle
= 1 + \sum_{n=1}^\infty \frac{i^n}{n!} \int_{\{y_j\}} \left[\prod_{j=1}^{n}J(y_j)\right]\left\langle \prod_{j=1}^{n}\phi(y_j)\right\rangle
$$
The left-hand-side of SDde is
$$
\sum_{n=0}^\infty \frac{1}{n!} \int_{\{y_j\}} \left[\prod_{j=1}^n J(y_j)\right] \square_x\left\langle \phi(x) \prod_{j=1}^{n}\phi(y_j)\right\rangle
$$
On the other hand, since $-i\partial_J e^{i\phi J}= \phi e^{i\phi J}$, the right-hand-side of SDde is
$$
\begin{aligned}
&\ \sum_{n=0}^\infty \frac{i^n}{n!} \int_{\{y_j\}} \left[\prod_{j=1}^{n}J(y_j)\right]\left\langle \left[\mathcal L'_\text{int}[\phi](x)+J(x)\right]\prod_{j=1}^{n}\phi(y_j)\right\rangle \\
=& \sum_{n=0}^\infty \frac{i^n}{n!} \int_{\{y_j\}} \left[\prod_{j=1}^{n}J(y_j)\right] \left\{\left\langle \mathcal L'_\text{int}[\phi](x)\prod_{j=1}^{n}\phi(y_j)\right\rangle -i \sum_{j=1}^n \delta(x-y_j) \left\langle \prod_{k\ne j}\phi(y_k)\right\rangle \right\}.
\end{aligned}
$$
Note that in the second line, we symmetrize the expression so that there is an additional factor $1/n$. Compare the expression on both sides, we get the usual SDe:
$$
\square_x \left\langle \phi(x) \prod_{j=1}^n\phi(y_j)\right\rangle 
= \left\langle \mathcal L'_\text{int}[\phi](x)\prod_{j=1}^n\phi(y_j)\right\rangle-i\sum_{j=1}^n\delta(x-y_j)\left\langle\prod_{k\ne j}\phi(y_k)\right\rangle.
$$

We remark that SDe in every order will in turn imply SDde. 

## Ward-Takahashi Identity

For the gauge field $A(x)$ couple to matter field $\psi(x)$, 
$$
\mathcal L = \bar\psi(i\cancel\partial-m)\psi -eA_\mu j^\mu,\quad
j^\mu(x) = \bar\psi(x)\gamma^\mu\psi(x).
$$
For the correlation $\langle\psi(x_1)\bar\psi(x_2)\rangle$, the field redefinition $\psi(x)\rightarrow e^{-i\alpha(x)}\psi(x)$ and $\bar\psi(x)\rightarrow e^{i\alpha(x)}\bar\psi(x)$ implies 
$$
\int_x \partial_\mu\alpha(x)\langle j^\mu(x)\psi(x_1)\bar\psi(x_2)\rangle
+ \int_x \alpha(x)\left[-\delta(x-x_1)+\delta(x-x_2)\right]\langle\psi(x_1)\bar\psi(x_2)\rangle=0.
$$
The identity holds for arbitrary $\alpha(x)$, therefore 
$$
\partial_\mu\langle j^\mu(x)\psi(x_1)\bar\psi(x_2)\rangle
= \left[-\delta(x-x_1)+\delta(x-x_2)\right]\langle\psi(x_1)\bar\psi(x_2)\rangle.
$$
In the momentum space, we define
$$
\begin{aligned}
M^\mu(p,q_1,q_2) &= \int_{x,x_1,x_2} e^{ipx+iq_1x_1-iq_2x_2}\langle j^\mu(x)\psi(x_1)\bar\psi(x_2)\rangle \\
M_0(q_1,q_2) &= \int_{x_1,x_2} e^{iq_1x_1-iq_2x_2} \langle\psi(x_1)\bar\psi(x_2)\rangle
\end{aligned}
$$
Note the fact
$$
\int_{x,x_1,x_2} e^{ipx+iq_1x_1-iq_2x_2}\delta(x-x_1)\langle\psi(x_1)\bar\psi(x_2)\rangle
= M_0(q_1+p,q_2),
$$
therefore the Ward-Takahashi identity
$$
ip_\mu M^\mu(p,q_1,q_2) = M_0(q_1+p,q_2)-M_0(q_1,q_2-p).
$$

Actually, the general Ward identity is
$$
\partial_\mu \langle J^\mu(x) \phi(x_1) \cdots \phi(x_n)\rangle = -i\delta(x-x_i) \sum_{i=1}^n \langle \phi_1 \cdots \hat G\phi(x_i)\cdots \phi_n\rangle,
$$
where $\hat G$ is the infinitesimal symmetry transformation, i.e., $\delta\phi=- i\alpha \hat G \phi$. The general Ward-Takahashi identity for a QED diagram with $f$ fermion and $b$ current is
$$
ip_\mu M^{\mu\nu_1\cdots\nu_b}(p,p_1\cdots p_b,q_1\cdots p_f) 
= \sum_\text{outgoing} Q_i M^{\nu_1\cdots\nu_b}(p_1\cdots q_i-p\cdots) 
- \sum_\text{incoming} Q_i M^{\nu_1\cdots\nu_b}(p_1\cdots q_i+p\cdots).
$$

## QED Ward Identity

Besides, the ward identity for QED states that in an S-matrix involving external photon mode $\epsilon_\mu$, when replacing $\epsilon_\mu\rightarrow p_\mu$, the result is zero, since the longitudinal photon mode is unphysical due to gauge invariance. 

Since the gauge field is coupled to the correct, the scattering amplitude should look like $\epsilon_\mu \langle j^\mu\cdots\rangle$. When replacing $\epsilon_\mu$ to $p_\mu$, the Ward-Takahashi identity shifts the external fermion momentum. However, from the LSZ reduction formula, the S-matrix 
$$
\langle p\cdots|S|\cdots\rangle = \prod_j[(\cancel q_j-m_j)] \sum_j \pm Q_i M(\cdots ,q_j\pm p,\cdots)
$$
Now, each term in the sum has a pole at $(q_j\pm p)^2=m_j^2$, not at $q_j^2=m_j^2$, and will vanish when multiplied by the prefactor $\cancel q_j-m_j = \frac{q_j^2-m_j^2}{\cancel q_j + m_j}$ since $q_j$ is on-shell.

We remark that the Ward identity does not require the photons to have $p^2=0$. In a Feynman diagram, if we replace a photon propagator by
$$
\Pi_{\mu\nu}(k) = \Pi_{\mu\nu}(k) + \xi k_\mu k_\nu,
$$
the additional $k_\mu k_\nu$ will have zero contribution since it can be regarded as another diagram with the internal photon line split into two external photons, and the Ward identity shows the diagram vanishes.

