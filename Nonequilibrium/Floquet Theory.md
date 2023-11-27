# Floquet Theory

The time-periodic system described by Hamiltonian $H(\tau)$ with $H(\tau+T)=H(\tau)$ produces the unitary evolution:
$$
U(\tau_1,\tau_0) = \mathcal T \exp\left[-i\int_{\tau_0}^{\tau_1} H(\tau) d\tau \right].
$$
We can define the evolution over one period as $U(\tau_0+T,\tau_0) \equiv e^{-iH_F T}$, where $H_F$ is called the Floquet Hamiltonian. Within a period, the time-dependent part can be denoted as
$$
e^{-iK_F(\tau)} \equiv U(\tau,\tau_0) e^{iH_F(\tau-\tau_0)},\quad 
e^{-iK_F(\tau+T)} = e^{-i K_F(\tau)}.
$$
From the arbitrarity of starting time $\tau_0$, there is a gauge freedom
$$
H_F[\tau_0'] = U(\tau_0',\tau_0) H_F[\tau_0]U(\tau_0,\tau_0').
$$
On the other hand, if we know a proper time-dependent rotating frame $e^{iK(\tau)}$ such that the system under the rotating frame becomes stationary, then the state $|\varphi(\tau)\rangle = e^{iK(\tau)}|\psi(\tau)\rangle$ evolves as
$$
\begin{aligned}
\partial_\tau|\varphi(\tau)\rangle 
&= \left[\partial_\tau e^{iK(\tau)} + e^{iK(\tau)}\partial_\tau \right]|\psi(\tau)\rangle \\
&= \left[\left(\partial_\tau e^{iK(\tau)}\right)e^{-iK(\tau)} -i e^{iK(\tau)} H(\tau)e^{-iK(\tau)}\right]|\varphi(\tau)\rangle.
\end{aligned}
$$
We can therefore define the effective Hamiltonian as
$$
H_\text{eff} \equiv e^{iK(\tau)} H(\tau_0)e^{-iK(\tau)} -i e^{iK(\tau)}\partial_\tau e^{-iK(\tau)}.
$$

## Quasi Energy

The Floquet state is the eigenstate of the Floquet Hamiltonian $H_F$:
$$
H_F = \epsilon_n|n\rangle,\quad \epsilon_n \in [0,\omega).
$$
The time evolution from an initial state $|\psi(\tau_0)\rangle = \sum_n c_n |n\rangle$ is
$$
|\psi(\tau)\rangle = \sum_n c_n e^{-iK_F(\tau)} e^{-iH_F(\tau-\tau_0)}|u\rangle
= \sum_n c_n e^{-i\epsilon_n(\tau-\tau_0)}|u_n(\tau)\rangle,
$$
where $|u_n(\tau)\rangle \equiv e^{-iK_F(\tau-\tau_0)}|n\rangle$. 

### Extended Hilbert space

Since $u_n(\tau+T)=u_n(\tau)$, we can expand it in harmonics and the time evolution becomes
$$
|\psi_n(\tau)\rangle = e^{-\epsilon_n\tau}\sum_m e^{-im\omega \tau} |n,m\rangle.
$$
We therefore get
$$
(\epsilon_n+m\omega)|n,m\rangle = \sum_m H_{m-m'}|n,m'\rangle,
$$
where $\{H_l\}$ are Fourier components of the time-dependent Hamiltonian.

For $H(\tau) = H_0 + V e^{i\omega\tau}+V^\dagger e^{-i\omega \tau}$, the eigensystem in the extended space is
$$
\begin{bmatrix}
	\ddots & \ddots & 0 & & \\
	\ddots & H_0+\omega & V & 0 & \\
	0 & V^\dagger & H_0 & V  & 0\\
	 & 0 & V^\dagger & H_0-\omega & \ddots \\
	 & & 0 & \ddots & \ddots
\end{bmatrix}
\begin{bmatrix}
	\vdots \\
	|n,-1\rangle \\
	|n,0\rangle \\
	|n,1\rangle \\
	\vdots
\end{bmatrix}
= \epsilon_n 
\begin{bmatrix}
	\vdots \\
	|n,-1\rangle \\
	|n,0\rangle \\
	|n,1\rangle \\
	\vdots
\end{bmatrix}
$$
A general solution would be $|\psi_n\rangle = \sum_m \psi_m|n,m\rangle$. Note that there is a tower of states $|\psi_n'\rangle = \sum_m \psi_m|n,m+k\rangle$ with equally shifted energy. This is the artifact coming from the redundancy.

### Circularly-polarized drive

Consider the Floquet system
$$
H = \frac{\omega_0}{2} + \frac{\mu B_0}{2}\left[\cos(\omega \tau)\sigma_x +\sin(\omega\tau)\sigma_y\right].
$$
The rotating frame
$$
K(\tau) = -\frac{\omega\tau}{2} (1-\sigma_z)
$$
transforms the Floquet system to a static one:
$$
H_\text{eff}[\tau_0] = \frac{\omega}{2} + \frac{\omega_0-\omega}{2}\sigma_z+\frac{\mu B_0}{2}\sigma_x.
$$
The quasi-energy is therefore
$$
\epsilon_\pm = \frac{1}{2}\left(\omega\pm\sqrt{(\omega-\omega_0)^2+(\mu B_0)^2}\right)
\quad \operatorname{mod}\ \omega.
$$

## 

## Multi-frequency Drive

Incommensurate driving frequencies:
$$
H(t) = H_0 + H_1(\omega_1 t) + H_2(\omega_2 t) + \cdots.
$$
Frequency lattice: $\vec\theta=(\omega_1t, \omega_2 t,\cdots)$, $H(\vec\theta) = H(\vec\theta+2\pi \hat l_j)$. First, consider two-tone driven spin
$$
H(t) = -\frac{1}{2}\vec B(t) \cdot \vec\sigma, \quad
\vec B(t) = \begin{pmatrix}
\sin \omega_1 t \\
\sin \omega_2 t \\
B_z-\cos\omega_1 t-\cos\omega_2 t
\end{pmatrix}.
$$
 Observable of interest: energy currents:
$$
\overline{\partial_t \langle H \rangle} = \overline{\langle\partial_tH_1\rangle}+\overline{\langle\partial_tH_2\rangle}
=P_1+P_2.
$$






















































