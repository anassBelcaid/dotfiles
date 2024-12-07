#!python

# https://github.com/Gbox4/forx 
from subprocess import check_output
import argparse

# Create the parser
parser = argparse.ArgumentParser(description="Main line argument for my program. Enter the number of hours  you worked")

# Add arguments
parser.add_argument("-c" , "--hours" , type=int, required=True, help="current worked hours")

# Parse arguments
args = parser.parse_args()




# global command
HOUR = 28
EXPECTED_HOURS= 173
hours = args.hours

# Getting the rate
RATE = float(check_output(["forx", "usd", "mad", "-q 1", "-f"]).decode().strip())

current = hours * HOUR * RATE
expected = EXPECTED_HOURS * HOUR * RATE

print("{0:.2f}\t {1:.2f}".format(current, expected))
