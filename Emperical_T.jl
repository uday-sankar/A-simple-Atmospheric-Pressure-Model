# A code which plots the atmospheric pressure vs altitude using an empirical exponentially decaying temperature model. 
#The code reads atmospheric data from a CSV file, and generates a plot comparing the calculated pressures with the data from the CSV file.
## this code assumes the temperature is exponentially decaying with height, and uses the ideal gas law to calculate pressure at different altitudes.

## Constants
# All units are in S.I
const P_0 = 10.13e4    # Pressure at surface
const R = 8.314462     # Gas constant
const m = (28.0*75.0 + 32.0*25.0)/100.0 * 1e-3 # Molar mass of air
const re = 6.3781e6    # Earth's radius
const G = 6.67430e-11  # Universal Gravitational constant
const M =  5.9722e24   # Mass of Earth
##
#Emperical exponentially decaying Temperature 
const Ct = 9.2e-6
T(h) = 300.0*exp(-Ct*h)# can be tuned if needed
g(h) = G*M/(re+h)^2.0
f(h) = g(h)*m/(R*T(h))
dP(h,p,dh) = -dh*f(h)*p
function Get_pressure(h)# Function to find pressure
    size_h = size(h,1) # Size of the height array
    P = zeros(size_h ) # Initializing Pressure array
    P[1] = P_0 # Initializing with surface pressure
    for i in 1:size_h - 1 
        p = P[i] # Current Pressure
        dh = h[i+1] - h[i] # Height difference (next h - current h)
        P[i+1] = p + dP(h[i],p,dh) # Evaluating the P at next height
    end
    return P
end
##
delta_h = 1.0 # in meters # Height step size (larger the delta_h, the faster less accurate)
h = 0:delta_h:100000 # Height range of interest in m
P = Get_pressure(h)/101.325e3 # convertin to atm
##
#Pressure converted to atm and height converted to km for plotting
h= h/1e3 # converting to km
##
using CSV
using DataFrames
using PlotlyJS

# Read CSV
df = CSV.read("Reference_Data/Atmos_data.csv", DataFrame)

# Extract columns
z  = df.altitude_m/1e3 # converting to km
p  = df.pressure_Pa/101.325e3 # convertin to atm

# after creating the plot
plt = Plot(
    scatter(
        x = z,
        y = p,
        mode = "markers",
        marker = attr(
            size = 4
        ),
        line = attr(
            width = 2
        ),
        name="Reference Data"
    ),
    Layout(
        xaxis = attr(title = "Altitude (km)"),
        yaxis = attr(title = "Pressure (atm)"),
        title  = "Pressure vs Altitude",
        showlegend = true,
        width = 1000,
        height = 700
    )
)

addtraces!(
    plt,
    scatter(
        x = h,
        y = P,
        mode = "lines",
        line = attr(
            width = 2
        ),
        name="Model"
    )
)

# save as PNG
savefig(plt, "pressure_vs_altitude.png")
# save as HTML
savefig(plt, "pressure_vs_altitude.html")
