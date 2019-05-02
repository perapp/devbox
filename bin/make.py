#!/usr/bin/python3
import pathlib
import subprocess

proj_home=pathlib.Path(__file__).parent.parent
subprocess.run(f"docker build -t perapp/devbox {proj_home}", shell=True)
