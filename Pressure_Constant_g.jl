# constant gravitational attarction with changing temperature determined using ideal gas law
using Plots

h = 0:01:1000
P_0 = 1e5
g = 9.81
R = 8.314
m = (28.0*75.0 + 32*25.0)/100.0 
H = 2e5
function P(h)
    # Compresible gas in uniform gravitational field with changing temperature
    # Temeprature is determined by density alone
    p = (P_0^(0.2) - h *(m*g/(R*H))/5.0)^5.0
    #ρ = (p*m/(R*H))^(0.8)
    #T = H*(p*m/(R*H))^(0.2)
    return p#, ρ, T
end
##
function Den(p)
    # Compresible gas in uniform gravitational field with changing temperature
    # Temeprature is determined by density alone
    ρ = (p*m/(R*H))^(0.8)
    #T = H*(p*m/(R*H))^(0.2)
    return ρ
end
##
function Temp(p)
    # Compresible gas in uniform gravitational field with changing temperature
    # Temeprature is determined by density alone
    #ρ = (p*m/(R*H))^(0.8)
    T = H*(p*m/(R*H))^(0.2)
    return T
end
##
p = P.(h)#(P_0^(0.2) .- h .*(m*g/(R*H))./5.0).^5.0
ρ = Den.(p)
T = Temp.(p)
##
plot(h,ph)
plot(h,ρ)
plot(h,T)
##
##

##
r0 = 6.4e6
k = (m*4.018176*1e14/(R*H))^(4.0/5.0)
function P(h)
    return (P_0^(0.2) + ((r0 + h)^(-3.0/5.0) - r0^(-3.0/5.0))*k/3.0 )^5.0
end
##
p = P.(h)
plot(h,p)
##
