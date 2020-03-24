# Inverted Pendulum Parameter File
import numpy as np
# import control as cnt
import sys
sys.path.append('..')  # add parent directory
import pendulumParam as P

kp_th  = 10.0
kd_th = 5.0

m = P.m
ell = P.ell
g = P.g

F_max = P.F_max

Ts = P.Ts

# dirty derivative parameters
sigma = 0.05  # cutoff freq for dirty derivative
beta = (2 * sigma - Ts) / (2 * sigma + Ts)  # dirty derivative gain
