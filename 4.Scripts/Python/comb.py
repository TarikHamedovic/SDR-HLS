import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import freqz

# Parameters
alphas = [-1, 0.5, 1]  # Different values of alpha
K = 5  # Fixed value of K

# Frequency vector
w = np.linspace(0, np.pi, 1000)

# Initialize figure for different values of alpha
plt.figure(figsize=(10, 8))

# Plot magnitude response
plt.subplot(2, 1, 1)
for alpha in alphas:
    # Numerator and denominator coefficients of the comb filter transfer function
    num = [1] + [0] * (K - 1) + [alpha]
    den = [1]
    
    # Frequency response
    w, h = freqz(num, den, worN=w)
    
    # Plotting the magnitude response
    plt.plot(w / np.pi, np.abs(h), linewidth=2, label=f'α = {alpha}')
    
plt.title('Magnitude Response for Different α', fontsize=12)
plt.xlabel('Normalized Frequency (×π rad/sample)', fontsize=12)
plt.ylabel('Magnitude', fontsize=12)
plt.xlim([0, 1])
plt.grid(True, which='both', linestyle=':', linewidth=0.5)
plt.legend(loc='best')
plt.gca().tick_params(axis='both', which='major', labelsize=12)
plt.gca().tick_params(axis='both', which='minor', labelsize=12)

# Plot phase response
plt.subplot(2, 1, 2)
for alpha in alphas:
    # Numerator and denominator coefficients of the comb filter transfer function
    num = [1] + [0] * (K - 1) + [alpha]
    den = [1]
    
    # Frequency response
    w, h = freqz(num, den, worN=w)
    
    # Plotting the phase response
    plt.plot(w / np.pi, np.angle(h), linewidth=2, label=f'α = {alpha}')
    
plt.title('Phase Response for Different α', fontsize=12)
plt.xlabel('Normalized Frequency (×π rad/sample)', fontsize=12)
plt.ylabel('Phase (radians)', fontsize=12)
plt.xlim([0, 1])
plt.grid(True, which='both', linestyle=':', linewidth=0.5)
plt.legend(loc='best')
plt.gca().tick_params(axis='both', which='major', labelsize=12)
plt.gca().tick_params(axis='both', which='minor', labelsize=12)

# Adjust layout and show plot
plt.tight_layout()
plt.show()

# Parameters
alpha = 1  # Fixed value of alpha
Ks = [1, 3, 5]  # Different values of K

# Frequency vector
w = np.linspace(0, 4*np.pi, 1000)

# Initialize figure for different values of K
plt.figure(figsize=(10, 8))

# Plot magnitude response
plt.subplot(2, 1, 1)
for K in Ks:
    # Numerator and denominator coefficients of the comb filter transfer function
    num = [1] + [0] * (K - 1) + [alpha]
    den = [1]
    
    # Frequency response
    w, h = freqz(num, den, worN=w)
    
    # Plotting the magnitude response
    plt.plot(w / np.pi, np.abs(h), linewidth=2, label=f'K = {K}')
    
plt.title('Magnitude Response for Different K', fontsize=12)
plt.xlabel('Normalized Frequency (×π rad/sample)', fontsize=12)
plt.ylabel('Magnitude', fontsize=12)
plt.xlim([0, 4])
plt.grid(True, which='both', linestyle=':', linewidth=0.5)
plt.legend(loc='best')
plt.gca().tick_params(axis='both', which='major', labelsize=12)
plt.gca().tick_params(axis='both', which='minor', labelsize=12)

# Plot phase response
plt.subplot(2, 1, 2)
for K in Ks:
    # Numerator and denominator coefficients of the comb filter transfer function
    num = [1] + [0] * (K - 1) + [alpha]
    den = [1]
    
    # Frequency response
    w, h = freqz(num, den, worN=w)
    
    # Plotting the phase response
    plt.plot(w / np.pi, np.angle(h), linewidth=2, label=f'K = {K}')
    
plt.title('Phase Response for Different K', fontsize=12)
plt.xlabel('Normalized Frequency (×π rad/sample)', fontsize=12)
plt.ylabel('Phase (radians)', fontsize=12)
plt.xlim([0, 1])
plt.grid(True, which='both', linestyle=':', linewidth=0.5)
plt.legend(loc='best')
plt.gca().tick_params(axis='both', which='major', labelsize=12)
plt.gca().tick_params(axis='both', which='minor', labelsize=12)

# Adjust layout and show plot
plt.tight_layout()
plt.show()
