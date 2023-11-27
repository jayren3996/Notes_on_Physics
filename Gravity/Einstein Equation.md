# Einstein Equation

## The Einstein-Hilbert Action

Given a Ricci scalar $R$, the action for the gravitational field is
$$
S = \frac{M^2_\mathrm{pl}}{2} \int d^4 x \sqrt{|g|} R.
$$
Note that $S$ is non-renormalizable. In the following, we will choose the unit so that $M^2_\text{pl}/2=1$.

We would like to determine the Euler-Lagrange equations arising from the action. We do this in the usual way, by starting with some fixed metric $g_{\mu \nu}(x)$ and seeing how the action changes when we shift $g_{\mu \nu}(x) \rightarrow g_{\mu \nu}(x)+\delta g_{\mu \nu}(x)$. Writing the Ricci scalar as $R=g^{\mu \nu} R_{\mu \nu}$, the Einstein-Hilbert action clearly changes as
$$
\delta S=\int d^4 x\left[(\delta \sqrt{|g|}) g^{\mu \nu} R_{\mu \nu}+\sqrt{|g|}\left(\delta g^{\mu \nu}\right) R_{\mu \nu}+\sqrt{|g|} g^{\mu \nu} \delta R_{\mu \nu}\right].
$$
It turns out that it's slightly easier to think of the variation in terms of the inverse metric $\delta g^{\mu \nu}$. This is equivalent to the variation of the metric $\delta g_{\mu \nu}$; the two are related by
$$
g_{\rho \mu} g^{\mu \nu}=\delta_\rho^\nu \Rightarrow\left(\delta g_{\rho \mu}\right) g^{\mu \nu}+g_{\rho \mu} \delta g^{\mu \nu}=0 \quad \Rightarrow \quad \delta g^{\mu \nu}=-g^{\mu \rho} g^{\nu \sigma} \delta g_{\rho \sigma}.
$$
To proceed, we will need to calculate $\delta \sqrt{|g|}$. Using the identity $\log \operatorname{det} A=\operatorname{tr} \log A$, we have
$$
\frac{1}{\operatorname{det} A} \delta(\operatorname{det} A)=\operatorname{tr}\left(A^{-1} \delta A\right).
$$
Applying this to the metric, we have
$$
\delta \sqrt{|g|}=\frac{1}{2} \frac{1}{\sqrt{|g|}}|g| g^{\mu \nu} \delta g_{\mu \nu}=\frac{1}{2} \sqrt{|g|} g^{\mu \nu} \delta g_{\mu \nu}
=-\frac{1}{2} \sqrt{|g|} g_{\mu \nu} \delta g^{\mu \nu}.
$$
Now we turn to $\delta R_{\mu\nu}$. We claim that $\delta R_{\mu \nu}=\nabla_\rho \delta \Gamma_{\mu \nu}^\rho-\nabla_\nu \delta \Gamma_{\mu \rho}^\rho$, where
$$
\delta \Gamma_{\mu \nu}^\rho=\frac{1}{2} g^{\rho \sigma}\left(\nabla_\mu \delta g_{\sigma \nu}+\nabla_\nu \delta g_{\sigma \mu}-\nabla_\sigma \delta g_{\mu \nu}\right).
$$
is a tensor. The last expression now becomes a total derivative 
$$
g^{\mu \nu} \delta R_{\mu \nu}=\nabla_\mu X^\mu \quad \text { with } \quad X^\mu=g^{\rho \nu} \delta \Gamma_{\rho \nu}^\mu-g^{\mu \nu} \delta \Gamma_{\nu \rho}^\rho.
$$
The variation of the action can then be written as
$$
\delta S=\int d^4 x \sqrt{-g}\left[\left(R_{\mu \nu}-\frac{1}{2} R g_{\mu \nu}\right) \delta g^{\mu \nu}+\nabla_\mu X^\mu\right].
$$
This final term is a total derivative and, by the divergence, we ignore it. Requiring $\delta S=0$, we have the equations of motion
$$
G_{\mu \nu}:=R_{\mu \nu}-\frac{1}{2} R g_{\mu \nu}=0.
$$
