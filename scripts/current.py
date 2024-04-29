from subprocess import check_output



# global command
HOUR = 23
EXPECTED_HOURS= 176
hours = 168

# Getting the rate
RATE = float(check_output(["forx", "usd", "mad", "-q 1", "-f"]).decode().strip())

current = hours * HOUR * RATE
expected = EXPECTED_HOURS * HOUR * RATE

print(f"{current}\t {expected}\t")
