# Height vs Pressure derivation

Symbols:
- $\rho$: density of fluid
- $g$: acceleration due to gravity
- $h$: height
- $A$: area of an element
- $P$: Pressure

## Constants g
$\rho$, $P$, will vary as h changes.
conider an elemnt of area $A$ and thickness $dh$
Equating forces due to pressure($F_p$) and gravity ($F_g$)

$F_P = $ Force due to pressure from above + force from above

$$\begin{align}
F_P &= A\times P_{bottom} - A\times P_{above}\\
F_p &= -A (\delta P); \delta P = P_{above} - P_{bottom}
\end{align}$$

$F_p$ should match force of gravity
$$\begin{align}
F_P = F_g = A\times dh\times \rho\times g\\
-A (\delta P) &= Adh\times g\times \rho\\
\delta P & = - dh\times g\times \rho
\end{align}$$
both $\rho$ and $g$ change when we go up towards space.
To simplify the problem. Let's attack it one by one.
Starting with a fixed $g$ and $\rho$
## Constant Fluid Density and Gravity: *Incompressible fuild in constant gravity*
> Assumption: $\rho$ is fixed $\delta P$ can be evaluated from equation 5. Let $P$ at surface be $P_0$.

>Validity: fixed $g$ can be assumed till atleast a few  km, but fixed $\rho$ limits our system to maybe a few meters (< 50m).   

Near the surface pf earth we can assume $g$ is fixed.
$$\begin{align}
 \int_{P_0}^{P(h)}\delta P  &= \int_0^h -dh\times g \times \rho \\
 P(h) -  P_0&=- g\rho h\\
 P(h) &= P_0 - g\rho h
 \end{align}$$
 **This equation is only valide till a few meters, hence $P$ will never 0**
 > But if we have a truely incompressible fluid, which dosen't vaporize this equation is valid.

------
## Compresible Fluid in Constatnt Gravity
> Assumptions: $\rho$ varies but $g$ remains fixed. Valid upto a few Kms (I think, not sure) 

But $\rho$ is also a function of h. Therefore the equation 7 is only valid very very close to the surface (maybe for a few 100 m at max, but g is constant to a few Km).
But equation 5 is still valid.
$$\begin{align}
\delta P & = -dh\times g\times \rho(h)
\end{align}$$
Assume Ideal gas law.
$$\begin{align} 
PV &= nRT\\
P &= \frac{n}{V}RT \\
P\times m &= \frac{nm}{V}RT=\rho RT; \text{m is the molar mass of the gass}\\
P &= \rho/m\times RT \\
\delta P &= \delta \rho/m\times RT + \rho/m\times R\delta T \\
\end{align} $$
Now we are faced with the problem of Temperature. 

### Fixed Temperature System
> Assume T is fixed. $\delta T = 0$. Validity: unknown
$$\begin{align}
\delta P &= \delta \rho/m\times RT \\
\end{align} $$

Substituting equation 14 in 8 for $\delta P$
$$\begin{align}
\delta P &= \delta \rho/m\times RT  = -dh\times g\times \rho(h)\\
\delta \rho/m\times RT  &= -dh\times g\times \rho(h)\\
\frac{\delta \rho}{\rho(h)}\times RT  &= -dh\times g\times m \\
\frac{\delta \rho}{\rho(h)}   &= -dh\frac{g\times m}{RT} \\
\int_{\rho_0}^{\rho(h)}\delta \rho/\rho &= -\int_0^h dh \frac{gm}{RT}\\
ln(\rho(h)) - ln(\rho_0) &= -h\frac{gm}{RT}\\
ln(\rho(h)/\rho_0) &= -h\frac{gm}{RT}\\
\rho(h) &= \rho_0\times exp(-h\frac{gm}{RT})\\
\rho(h) &= \rho_0\times exp(-h\frac{f_d}{T});  f_d= \frac{gm}{R} 
\end{align} $$
Using  equation 9, and subtituing equation 24 for $\rho$ in 9
$$\begin{align}
\delta P &=  -dh\times g\times \rho_0\times exp(-h\frac{f_d}{T})\\
\delta P &=  - g\rho_0\times exp(-h\frac{f_d}{T})dh\\
\int_{P_0}^{P(h)} \delta P &= - g\rho_0\times \int_0^h exp(-h\frac{f_d}{T})dh\\
 P(h) - P_0 &= -g\rho_0\times \{-\frac{T}{f_d}\times (exp(-h\frac{f_d}{T})-1) \}\\
  P(h) - P_0 &= -g\rho_0\times \frac{T}{f_d}\times (1 - exp(-h\frac{f_d}{T})) \\
  P(h) - P_0 &= -g\rho_0\times \frac{TR}{gm}\times (1 - exp(-h\frac{f_d}{T}))\\ 
  P(h) - P_0 &= - \frac{\rho_0RT}{m}\times (1 - exp(-h\frac{f_d}{T}))\\ 
  P(h)  &= P_0 - \frac{\rho_0RT}{m}\times (1 - exp(-h\frac{f_d}{T}))\\ 
  P(h)  &= P_0 - P_0\times (1 - exp(-h\frac{f_d}{T})); P_0 = \rho_0\frac{RT}{m}\text{from equation 13}\\ 
   P(h)  &= P_0\times exp(-h\frac{f_d}{T})
\end{align} $$
### Variable Temeprature
T goes up and down as we go up (as $h$ increases).
But , I speculate the T is a decreasing function near the surface upto a km.
assume $T$ is propotional to $\rho^n$, since a denser gas will absrobe more sunlight hence more $T$ (similar to beer-lamberts law).

----
Energy released is propotional to $T^4$, assuming thermal equilibrium,
$$ E_{abs} = E_m\times T^4 \tag{T1}$$
Here  $E_m$ is some emmission coefficient.
And assuming: 
$$ E_{abs} = A\times \rho \tag{T2}$$
Here A is some absrobtion coefficient.
Combining T1 and T2, we get:
$$\begin{align} 
T^4 &= \frac{A}{E_m}\rho \tag{T3}\\
T &= (\frac{A}{E_m}\rho)^{\frac{1}{4}}\tag{T4}
\end{align}$$

Let,  $(\frac{A}{E_m})^{\frac{1}{4}} = H$, some heat constant.
>$$
T = H\rho^{\frac{1}{4}} \tag{T5}
$$
----
Using T5, we get get good get: 
$$\begin{align} 
\delta T &= \frac{H}{4} \rho^{\frac{-3}{4}}\tag{T4}\delta \rho
\end{align}$$

## Important Equations
A thin horizontal layer of gas, with constant density throughout it. Pressure will be different above and below the thin layer.
> Fundamental equation:
>$$ \begin{align}
\delta P|_h & = - dh\times g\times \rho; \text{Force Equilibirum}\tag{F1}\\
P &= \frac{R}{m} \rho T \tag{G1}\\
\delta P &= \frac{R}{m}\{T\delta \rho  + \rho\delta T \}; \text{Ideal Gas Law}\tag{G2}\\
\delta \rho &= f(\delta T); \text{some function to connect $\rho$ and $T$} \tag{H1}\\
T &= H\rho^{\frac{1}{4}} \tag{T5}\\
\end{align}
$$ 
$H1$ is a general equation which can be used when the exact correlation between $\rho$ and $T$ is known.

### Alterate Approach: Compresible Isothermic gas
Substituting equation G1 in F1 we get:
$$\begin{align}
\delta P|_h &= -dh\times g \times \frac{P}{RT}m\\
\delta P/P &= -dh\frac{mg}{RT}\\
\int_{P_0}^{P(h)}\delta P/P &= \int_0^h-dh\frac{mg}{RT}\\
ln(P(h)) - ln(P_0)&= -h\frac{mg}{RT}\\
P(h) &= P_0e^{-h\frac{mg}{RT}}
\end{align}
$$
### Alternat Approach: Compreisible Gas
Subtitute equation T5 in G1 to get:
$$ \begin{align}
P &= \frac{RH}{m}\rho^{\frac{5}{4}} \tag{TG1}\\
\rho^{\frac{5}{4}} &=\frac{Pm}{RH} \tag{TG2}\\
\rho &= \Big (\frac{Pm}{RH}\Big)^{\frac{4}{5}} \tag{TG3}\\
\end{align}
$$
Substitute TG3 if F1:
$$ \begin{align}
\delta P|_h &= - P^{\frac{4}{5}}dh \Big (\frac{mg}{RH}\Big)^{\frac{4}{5}} \tag{FTG1} \\
P^{-\frac{4}{5}} \delta P &= - dh \Big (\frac{mg}{RH}\Big)^{\frac{4}{5}} \tag{FTG2}\\
\int_{P_0}^{P(h)}P^{-\frac{4}{5}} \delta P &=\int_{0}^{h} - dh \Big (\frac{mg}{RH}\Big)^{\frac{4}{5}} \tag{FTG3}\\
5(P(h)^{\frac{1}{5}} -P_0^{\frac{1}{5}})  &= - h \Big (\frac{mg}{RH}\Big)^{\frac{4}{5}} \tag{FTG4}\\
P(h)^{\frac{1}{5}}  &= P_0^{\frac{1}{5}} - \frac{h}{5} \Big (\frac{mg}{RH}\Big)^{\frac{4}{5}} \tag{FTG5}\\
P(h)  &= \Big( P_0^{\frac{1}{5}} - \frac{h}{5} \Big (\frac{mg}{RH}\Big)^{\frac{4}{5}}\Big)^5 \tag{FTG6}\\
\end{align}
$$
Equation FTG2:
>$$ P(h)  = \Big( P_0^{\frac{1}{5}} - \frac{h}{5} \Big (\frac{mg}{RH}\Big)^{\frac{4}{5}}\Big)^5 \tag{FTG6} $$
works well in the range where $g$ remains constant.
Now let's make g also a variable.
## Changing Gravitational field

$$ 
 F_g = \frac{GMm}{r^2} \\
 g = \frac{GM}{r^2}
 $$ 
At the surface of earth g = 9.81 $m/s^2$. At the surface $r_0=64\times 10^5 m$
$GM = 9.81*r_0^2 = 4.018176\times10^{14}$. 
Now the euation for gravity becomes:
$$
g = \frac{6.2784}{r^2}\times10^7\tag{GR1}
$$
$$
g = \frac{4.018176}{(6.4\times 10^6 + h)^2}\times10^{14}\tag{GR2}
$$
We can now use this equation in FTG2:
$$
\begin{align}

P^{-\frac{4}{5}} \delta P &= - dh \Big (\frac{mg}{RH}\Big)^{\frac{4}{5}} \tag{FTG2}\\
P^{-\frac{4}{5}} \delta P &= - dh \Big (\frac{m\times 4.018176\times 10^{14}}{RH\times(6.4\times 10^6 + h)^2}\Big)^{\frac{4}{5}} \tag{P1}\\
P^{-\frac{4}{5}} \delta P &= - \frac{dh}{(6.4\times 10^6 + h)^\frac{8}{5}} \Big (\frac{m\times 4.018176\times 10^{14}}{RH}\Big)^{\frac{4}{5}} \tag{P2}\\
P^{-\frac{4}{5}} \delta P &= - \frac{dh}{(6.4\times 10^6 + h)^\frac{8}{5}} \mathcal{K}; \mathcal{K} = \Big (\frac{m\times 4.018176\times 10^{14}}{RH}\Big)^{\frac{4}{5}} \tag{P3}\\
\int_{P_0}^{P(h)} P^{-\frac{4}{5}} \delta P &= \int_0^h- \frac{dh}{(r_0+ h)^\frac{8}{5}} \mathcal{K} \tag{P4}\\
5(P(h)^{\frac{1}{5}} -P_0^{\frac{1}{5}})  &= -\mathcal{K}  \int_0^h (r_0+ h)^\frac{-8}{5} dh \tag{P5}\\
5(P(h)^{\frac{1}{5}} -P_0^{\frac{1}{5}})  &= -\mathcal{K}  ( -\frac{5}{3} (r_0+ h)^{-\frac{3}{5}} )_0^h \tag{P6}\\
(P(h)^{\frac{1}{5}} -P_0^{\frac{1}{5}})  &= \frac{\mathcal{K}}{3}  ( (r_0+ h)^{-\frac{3}{5}} - r_0^{-\frac{3}{5}}) \tag{P7}\\
P(h)^{\frac{1}{5}}   &= \frac{\mathcal{K}}{3}  ( (r_0+ h)^{-\frac{3}{5}} - r_0^{-\frac{3}{5}}) +P_0^{\frac{1}{5}} \tag{P8}\\
P(h)   &=\Big (\frac{\mathcal{K}}{3}  ( (r_0+ h)^{-\frac{3}{5}} - r_0^{-\frac{3}{5}}) +P_0^{\frac{1}{5}} \Big )^5\tag{P9}\\
\end{align}
$$

# Notes
$$
P = \frac{R}{m}\rho T\\ 
T = H \rho^{1/4} \\
P = \frac{RH}{m}\rho^{5/4} \\
$$
$$
\rho = \Big (\frac{Pm}{RH} \Big)^{4/5} \\
T = H\Big (\frac{Pm}{RH} \Big)^{1/5} 
$$