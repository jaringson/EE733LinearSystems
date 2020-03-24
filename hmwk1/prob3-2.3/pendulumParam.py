# Inverted Pendulum Parameter File
import numpy as np
import control as cnt

# Physical parameters of the inverted pendulum known to the controller
m = 1.0     # Mass of the pendulum, kg
ell = 1.0    # Length of the rod, m
g = 9.8       # Gravity, m/s**2
b = 0.1      # Damping coefficient, Ns


# Initial Conditions
theta0 = 90.0*np.pi/180  # ,rads
thetadot0 = 0.0         # ,rads/s

# Simulation Parameters
t_start = 0.0  # Start time of simulation
t_end = 5.0  # End time of simulation
Ts = 0.01  # sample time for simulation
t_plot = 0.1  # the plotting and animation is updated at this rate

# saturation limits
F_max = 50.0                # Max Force, N

# parameters for animation
w = 0.5       # Width of the cart, m
h = 0.15      # Height of the cart, m
gap = 0.005   # Gap between the cart and x-axis
radius = 0.06 # Radius of circular part of pendulum
