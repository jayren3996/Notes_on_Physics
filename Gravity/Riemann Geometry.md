# Riemann Geometry

## Connection

For a general coordinate system, we can choose a coordinate basis $\{e_\mu \equiv \partial_\mu\}$ and define the connection as $\nabla_\mu e_\nu = \Gamma^\lambda_{\mu\nu} e_\lambda$, where $\nabla_\mu$ is the covariant derivative along the $x^\mu$ direction. We immediately know the covariant derivative for the vector field:
$$
\nabla_\mu (W^\nu e_\nu) = \frac{\partial W^\nu}{\partial x^\mu} e_\nu + W^\nu e_\lambda \Gamma^\lambda_{\mu\nu} = \left(\frac{\partial W^\lambda}{\partial x^\mu} +\Gamma^\lambda_{\mu\nu} W^\nu \right) e_\lambda,
$$
For the dual vector, consider the expression $\nabla_\mu (W^\nu V_\nu)$. Since $W^\nu V_\nu$ is a scalar, the covariant derivative is the same as the ordinary derivative, $\nabla_\mu(W^\nu V_\nu) = \partial_\mu(W^\nu V_\nu)$. On the other hand,
$$
\nabla_\mu (W^\nu V_\nu) = (\partial_\mu W^\nu) V_\nu + W^\nu (\partial_\mu V_\nu)
	= \left(\frac{\partial W^\lambda}{\partial x^\mu} +\Gamma^\lambda_{\mu\nu} W^\nu \right)V_\lambda + W^\nu (\nabla_\mu V)_\nu,
$$
which leads to $\nabla_\mu V_\nu = \partial_\mu V_\nu -V_\lambda {\Gamma^\lambda}_{\mu\nu}$. In general, the covariant derivative on a tensor $T$ is
$$
\nabla_\rho T_{\nu_1 \cdots \nu_q}^{\mu_1 \cdots \mu_p}
	= \partial_\rho T_{\nu_1 \cdots \nu_q}^{\mu_1\cdots \mu_p}+
	(\Gamma^{\mu_1}_{\rho \sigma} T^{\sigma \mu_2 \cdots \mu_p}_{\nu_1 \ldots \nu_q}+\cdots+
	\Gamma^{\mu_p}_{\rho \sigma} T^{\mu_1 \cdots \mu_{p-1} \sigma}_{\nu_1 \cdots \nu_q}) - 
	(\Gamma^\sigma_{\rho \nu_1} T^{\mu_1 \cdots \mu_p}_{\sigma \nu_2 \cdots \nu_q}+\cdots+
	\Gamma^\sigma_{\rho \nu_q} T_{\nu_1 \cdots \nu_{q-1} \sigma}^{\mu_1 \cdots \mu_p}).
$$
In the space-time manifold with a metric $g_{\mu\nu}$, there exists a unique, torsion-free connection such that $\nabla_\rho g_{\mu\nu} = 0$.
To see this, let us first write the $\nabla_\rho g_{\mu\nu} = 0$ condition in three equivalent ways:
$$
\begin{eqnarray}
	\partial_\rho g_{\mu\nu} -\Gamma^\sigma_{\rho\mu}g_{\sigma\nu}-\Gamma^\sigma_{\rho\nu}g_{\mu\sigma} &=& 0, \label{eq:christoffel-1}\\
	\partial_\mu g_{\nu\rho} -\Gamma^\sigma_{\mu\nu}g_{\sigma\rho}-\Gamma^\sigma_{\mu\rho}g_{\nu\sigma} &=& 0, \label{eq:christoffel-2}\\
	\partial_\nu g_{\rho\mu} -\Gamma^\sigma_{\nu\rho}g_{\sigma\mu}-\Gamma^\sigma_{\nu\mu}g_{\rho\sigma} &=& 0. 
\end{eqnarray}
$$
The torsion is defined as $T^\sigma_{\mu\nu} = \Gamma^\sigma_{\mu\nu}-\Gamma^\sigma_{\nu\mu}$. The torsion-free condition helps reduced the above equations:
$$
2g_{\rho\sigma} \Gamma^\sigma_{\mu\nu} = \partial_\mu g_{\nu\rho}+\partial_\nu g_{\mu\rho}-\partial_\rho g_{\mu\nu}
	\quad\Longrightarrow\quad
	\Gamma^\sigma_{\mu\nu} = \frac{1}{2}g^{\sigma\rho}(\partial_\mu g_{\nu\rho}+\partial_\nu g_{\mu\rho}-\partial_\rho g_{\mu\nu}).
$$
The torsion-free connection is called the *Christoffel symbol*. Note that the Christoffel symbol satisfies
$$
\Gamma^\mu_{\mu\nu} = \frac{1}{\sqrt{|g|}}\partial_\nu \sqrt{|g|}.
$$
The proof is straightforward, since
$$
\Gamma^\mu_{\mu\nu} = \frac{1}{2} g^{\rho\mu} \partial_\nu g_{\mu\rho}
	= \frac{1}{2}\tr[g^{-1}\partial_\nu g]
	= \frac{1}{2}\partial_\nu \tr[\log g]
	= \partial_\nu \log \sqrt{|g|}
	= \frac{1}{\sqrt{|g|}}\partial_\nu \sqrt{|g|},
$$
where we have used the fact $\tr \log A = \log \det A$, and we can replace $\det g$ with $|\det g| = |g|$ since the additional phase, upon the action of logarithm and derivative, vanished.

### The vielbeins

There is a neat way to represent the connection.
First, we introduce a set of local frame called \textit{vielbeins} or \textit{tetrads}:
$$
\hat e_a = e^\mu_a \partial_\mu, \quad
	g_{\mu\nu} e_a^\mu e_b^\nu = \eta_{ab}.
$$
The vielbeins convert a general metric to the Minkowski metric (locally). We can also raise and lower the indices by $e^a_\mu = \eta^{ab}e^\mu_b g_{\mu\nu}$. Now consider the one form $\theta^a \equiv e^a_\mu dx^\mu$, satisfying $\eta_{ab}\theta^a\theta^b = g_{\mu\nu}dx^\mu dx^\nu$. We define the matrix-valued connection one-form as
$$
\omega^a{}_b = \Gamma^a_{bc}\theta^c,
$$
where $\Gamma^c_{ab}$ is defined by $\nabla_{\hat e_a} \hat e_b = \Gamma^c_{ab} \hat e_c$. There is a rather simple way to compute the connection one-forms, at least for a torsion-free connection. This follows from the first of two Cartan structure relations.

> **Claim:** for torsion-free connection, 
> $$
> d{\theta}^a+\omega^a{}_b \wedge {\theta}^b=0.
> $$
> **Proof.**  We first look at the second term
> $$
> \omega_b^a \wedge \hat{\theta}^b = \Gamma^a_{bc}\left(e_\mu^c d x^\mu\right) \wedge\left(e^b_\nu d x^\nu\right)
> $$
> According to its definition, the components of $\Gamma_{c b}^a$ are related to the coordinate basis components by
> $$
> \Gamma^c_{a b}  = e_\rho^c e_a^\mu \nabla_\mu e_b^\rho = e_\rho^c e_a^\mu(\partial_\mu e_b^\rho+ \Gamma^\rho_{\mu \nu}e_b^\nu).
> $$
> So $\omega^a{}_b \wedge {\theta}^b 
> 	=e_\rho^a e_c^\lambda e_\mu^c e^b_\nu\left(\partial_\lambda e_b^\rho+e_b^\sigma \Gamma^\rho_{\lambda \sigma}\right) d x^\mu \wedge d x^\nu$. We can further simplify the expression using the fact $e_c^\lambda e_\mu^c=\delta_\mu^\lambda$ and the fact that the connection is torsion-free. Therefore, the connection term vanished:
> $$
> \omega^a{}_b \wedge {\theta}^b 
> 	=e_\rho^a e_\nu^b \partial_\mu e_b^\rho d x^\mu \wedge d x^\nu
> $$
> Now we use the fact that $e_\nu^b e_b^\rho=\delta_\nu^\rho$, so $e_\nu^b \partial_\mu e_b{ }^\rho=-e_b^\rho \partial_\mu e^b{ }_\nu$. We have
> $$
> \omega^a{}_b \wedge {\theta}^b = -e^a_\rho e_b^\rho \partial_\mu e^b_\nu d x^\mu \wedge d x^\nu 
> 	=-\partial_\mu e^a_\nu d x^\mu \wedge d x^\nu=-d {\theta}^a,
> $$
> which completes the proof.

Moreover, we have the following result:

> **Claim:** For the Levi-Civita connection, the connection one-form is anti-symmetric:
> $$
> \omega_{a b}=-\omega_{b a}.
> $$
> **Proof:** This follows from the expression for the components $\Gamma_{b c}^a$. 
> Lowering an index, we have
> $$
> \Gamma_{a b c}=\eta_{a d} e^d_\rho e_b^\mu \nabla_\mu e_c^\rho=-\eta_{a d} e_c^\rho e_b^\mu \nabla_\mu e^d_\rho=-\eta_{c f} e^f_\sigma e_b^\mu \nabla_\mu\left(\eta_{a d} g^{\rho \sigma} e^d_\rho\right)
> $$
> where, in the final equality, we've used the fact that the connection is compatible with the metric to raise the indices of $e_\rho^d$ inside the covariant derivative. Finishing off the derivation, we then have
> $$
> \Gamma_{a b c}=-\eta_{c f} e^f_\rho e_b^\mu \nabla_\mu e_a^\rho=-\Gamma_{c b a}.
> $$
> The result then follows from the definition $\omega_{a b}=\Gamma_{a c b} \hat{\theta}^c$.

As a concrete example, consider the metric of the general form
$$
ds^2 = - f(r)^2 dt^2 + f(r)^{-2} dr^2 + r^2 \left(d\theta^2+\sin^2\theta d\phi^2 \right).
$$
The basis of coordinate one-forms is
$$
\hat{\theta} = \left(f(r) d t,\ \frac{1}{f(r)} d r,\ r d \theta,\ r \sin \theta d \phi \right).
$$
Note that we have put a hat on the one-form to avoid confusion with the $\theta$ angle. The exterior derivatives are
$$
	d \hat{\theta} = \left(\frac{d}{dr}f(r)\ d r \wedge d t, \ 0, \ d r \wedge d \theta, \ \sin \theta\ d r \wedge d \phi+r \cos \theta\ d \theta \wedge d \phi \right).
$$
Then we can simply read out the non-vanishing component of the connection one form:
$$
\begin{aligned}
\omega^0{}_1 &=  \omega^1{}_0 = f^{\prime}(r) \hat{\theta}^0, & 
\omega^2{}_1 &= -\omega^1{}_2 = \frac{f}{r} \hat{\theta}^2, \\
\omega^3{}_1 &= -\omega^1{}_3 = \frac{f}{r} \hat{\theta}^3, &
\omega^3{}_2 &= -\omega^2{}_3 = \frac{\cot \theta}{r} \hat{\theta}^3.
\end{aligned}
$$

## Curvature

The curvature $R$ can be viewed as a map from $\mathfrak{X}(M) \times \mathfrak{X}(M)$ to a differential operator acting on $\mathfrak{X}(M)$,
$$
R(X, Y) = \nabla_X \nabla_Y-\nabla_Y \nabla_X-\nabla_{[X, Y]}
$$
We can evaluate these tensors on a coordinate basis $\left\{e_\mu\right\}=\left\{\partial_\mu\right\}$, with the dual basis $\left\{f^\mu\right\}=\left\{d x^\mu\right\}$. The components of $R$ are
$$
\begin{eqnarray}
	R_{\rho \mu \nu}^\sigma 
	&=& f^\sigma\left(\nabla_\mu \nabla_\nu e_\rho-\nabla_\nu \nabla_\mu e_\rho-\nabla_{\left[e_\mu, e_\nu\right]} e_\rho\right) \\
 	&=& f^\sigma\left(\nabla_\mu \nabla_\nu e_\rho-\nabla_\nu \nabla_\mu e_\rho\right) \nonumber \\
	&=& f^\sigma\left[\nabla_\mu\left(\Gamma_{\nu \rho}^\lambda e_\lambda\right)-\nabla_\nu\left(\Gamma_{\mu \rho}^\lambda e_\lambda\right)\right] \\
	&=& f^\sigma\left[\left(\partial_\mu \Gamma_{\nu \rho}^\lambda\right) e_\lambda+\Gamma_{\nu \rho}^\lambda \Gamma_{\mu \lambda}^\tau e_\tau-\left(\partial_\nu \Gamma_{\mu \rho}^\lambda\right) e_\lambda-\Gamma_{\mu \rho}^\lambda \Gamma_{\nu \lambda}^\tau e_\tau\right] \nonumber \\
	&=& \partial_\mu \Gamma_{\nu \rho}^\sigma-\partial_\nu \Gamma_{\mu \rho}^\sigma+\Gamma_{\nu \rho}^\lambda \Gamma_{\mu \lambda}^\sigma-\Gamma_{\mu \rho}^\lambda \Gamma_{\nu \lambda}^\sigma,
\end{eqnarray}
$$
where we've used the fact that, on a coordinate basis, $\left[e_\mu, e_\nu\right]=\left[\partial_\mu, \partial_\nu\right]=0$. 

There is a closely related calculation in which both the torsion and Riemann tensors appear. We look at the commutator of covariant derivatives acting on vector fields. Written in an orgy of anti-symmetrized notation, this calculation gives\footnote{We use the notation $A_{[\mu\nu]} = \frac{1}{2}(A_{\mu\nu}-A_{\nu\mu})$.}
$$
\begin{aligned}
\nabla_{[\mu} \nabla_{\nu]} Z^\sigma= & \partial_{[\mu}\left(\nabla_{\nu]} Z^\sigma\right)+\Gamma_{[\mu|\lambda|}^\sigma \nabla_{\nu]} Z^\lambda-\Gamma_{[\mu \nu]}^\rho \nabla_\rho Z^\sigma \\
= & \partial_{[\mu} \partial_{\nu]} Z^\sigma+\left(\partial_{[\mu} \Gamma_{\nu] \rho}^\sigma\right) Z^\rho+\left(\partial_{[\mu} Z^\rho\right) \Gamma_{\nu] \rho}^\sigma+\Gamma_{[\mu|\lambda|}^\sigma \partial_{\nu]} Z^\lambda +\Gamma_{[\mu|\lambda|}^\sigma \Gamma_{\nu] \rho}^\lambda Z^\rho-\Gamma_{[\mu \nu]}^\rho \nabla_\rho Z^\sigma.
\end{aligned}
$$
The first term vanishes, while the third and fourth terms cancel against each other. We're left with
$$
(\nabla_\mu\nabla_\nu - \nabla_\nu \nabla_\mu) Z^\sigma=R_{\rho \mu \nu}^\sigma Z^\rho-T_{\mu \nu}^\rho \nabla_\rho Z^\sigma,
$$
where the torsion tensor is $T_{\mu \nu}^\rho= \Gamma_{\mu\nu}^\rho - \Gamma_{\nu\mu}^\rho$. The expression is known as the Ricci identity.

We can compute the components of the Riemann tensor in our non-coordinate basis,
$$
	R_{b c d}^a=R\left(\hat{\theta}^a ; \hat{e}_c, \hat{e}_d, \hat{e}_b\right).
$$
The anti-symmetry of the last two indices, $R_{b c d}^a=-R_{b d c}^a$, makes this ripe for turning into a matrix of two-forms,
$$
\mathcal{R}^a{}_b=\frac{1}{2} R_{b c d}^a \hat{\theta}^c \wedge \hat{\theta}^d.
$$
The second of the two Cartan structure relations states that this can be written in terms of the curvature one-form as
$$
\mathcal{R}^a{}_b = d \omega^a{}_b + \omega^a{}_c \wedge \omega^c{}_b.
$$
Now we can use this to compute the curvature two-form. We will focus on $\mathcal{R}^0{}_1=d \omega^0{}_1+\omega^0{}_c \wedge \omega^c{}_1$. We have
$$
	d \omega^0{}_1 = f^{\prime} d \hat{\theta}^0+f^{\prime \prime} d r \wedge \hat{\theta}^0=\left[\left(f^{\prime}\right)^2+f^{\prime \prime} f\right] d r \wedge d t.
$$
The second term in the curvature 2-form is $\omega^0{}_c \wedge \omega^c{}_1=\omega^0{}_1 \wedge \omega^1{}_1=0$. So we're left with
$$
\mathcal{R}^0{}_1=\left[\left(f^{\prime}\right)^2+f^{\prime \prime} f\right] d r \wedge d t=\left[\left(f^{\prime}\right)^2+f^{\prime \prime} f\right] \hat{\theta}^1 \wedge \hat{\theta}^0.
$$

## Dynamics

The covariant derivative defines the *parallel transport*: let $X$ be a vector field defined along a curve $c(t)$. $X$ is said to be parallel transported if $\nabla_V X = 0$, which leads to the parallel transportation equation:
$$
\frac{d x^\mu}{dt}\left(\frac{\partial X^\lambda}{\partial x^\mu} +{\Gamma^\lambda}_{\mu\nu} X^\nu \right) = \frac{d}{dt}X^\lambda +{\Gamma^\lambda}_{\mu\nu} V^\mu X^\nu = 0,\quad \text{where}\quad V^\mu = \frac{d}{dt} x^\mu|_{c(t)}.
$$
Further, a curve $c(t)$ is a geodesic if $\nabla_V V = 0$, which leads to the geodesic equation:
$$
\frac{d^2 x^\mu}{dt^2} + {\Gamma^\mu}_{\nu\lambda} \frac{dx^\nu}{dt}\frac{dx^\lambda}{dt} = 0.
$$
