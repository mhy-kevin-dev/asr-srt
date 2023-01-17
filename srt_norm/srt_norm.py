# -*- coding: utf-8 -*-


""" 
  - python 3.4
  - srt (pip install srt) 
      - https://pypi.org/project/srt/
"""
import os
import json
import argparse
import srt


parser = argparse.ArgumentParser(description='SRT -> TXT')
parser.add_argument('--srt', default="sample.srt", help="srt file")
parser.add_argument('--exp', default="exp", help="output folder path, no need txt name")
args = parser.parse_args()

srt_filename = os.path.basename(args.srt)

file = open(args.srt, "r", encoding="utf-8")
lines = file.read()
file.close()

subs = list(srt.parse(lines))
norm_lines = srt.compose(subs)

print("[ {} ] -> [ {} ]".format(args.srt, args.exp + "/"  + srt_filename.replace(".srt", "") + ".norm.srt"))
fp = open(args.exp + "/"  + srt_filename.replace(".srt", "") + ".norm.srt", "w")
fp.write(norm_lines)
fp.close
print("done")
