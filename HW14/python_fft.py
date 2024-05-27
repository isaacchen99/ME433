import csv
import numpy as np
import matplotlib.pyplot as plt

file_names = ['sigA.csv', 'sigB.csv', 'sigC.csv', 'sigD.csv']

for file_name in file_names:
    # Read data from CSV
    t = []  # column 0
    data1 = []  # column 1

    with open(file_name) as f:
        # open the csv file
        reader = csv.reader(f)
        for row in reader:
            # read the rows one by one
            t.append(float(row[0]))  # leftmost column
            data1.append(float(row[1]))  # second column

    # Convert lists to numpy arrays
    t = np.array(t)
    data1 = np.array(data1)

    # Define sampling parameters based on the provided data
    Fs = 1 / (t[1] - t[0])  # sample rate from the time difference
    Ts = 1.0 / Fs  # sampling interval
    n = len(data1)  # length of the signal
    k = np.arange(n)
    T = n / Fs
    frq = k / T  # two sides frequency range
    frq = frq[range(int(n / 2))]  # one side frequency range

    # Compute FFT
    Y = np.fft.fft(data1) / n  # fft computing and normalization
    Y = Y[range(int(n / 2))]

    # Plotting
    fig, (ax1, ax2) = plt.subplots(2, 1)
    fig.suptitle(f'{file_name}')  # Adding a title to the plot
    ax1.plot(t, data1, 'b')
    ax1.set_xlabel('Time')
    ax1.set_ylabel('Amplitude')
    ax2.loglog(frq, abs(Y), 'b')  # plotting the fft
    ax2.set_xlabel('Freq (Hz)')
    ax2.set_ylabel('|Y(freq)|')

    # Save the plot
    plt.savefig(f'FFT-{file_name.split(".")[0]}.png')
    plt.close()  # Close the figure to avoid displaying it in a loop
