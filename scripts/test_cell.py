import pyautogui
import time
from random import randint
from random import gauss
from math import ceil

pyautogui.FAILSAFE = False

x, y = pyautogui.size()


def user_session(t: float, activity=1):
    """
    Simulute a briev movement for  a time [t]
    [activity] represent the mean of the activity in milli-seconds
    the function  will repeat mouse movement
    """

    t = ceil(5 * t)

    for _ in range(t):
        # simulate a mouse movement
        pyautogui.move(randint(-1, 1), randint(-1, 1))

        # time to sleep
        time_to_sleep = max(0, gauss(activity, 2))

        # sleep to go to the next milliseconds
        time.sleep(time_to_sleep / 30)


def simulate_user(interval: float, t: float, activity=1):
    """
    Simulate a set of [user session] separated by [interval]
    the parameter should be calibrated to get the desired acitivyt score
    """
    # Enter the infinite loop
    while True:
        # run a session
        t = max(1, gauss(t, 3))
        user_session(t, activity)

        # now rest for a given random interval
        time_to_wait = max(25, gauss(interval, 20))
        # time_to_wait = max(20, gauss(interval, 20))
        # print("sleeping")
        time.sleep(time_to_wait)


while True:
    simulate_user(2, 7, 40)
