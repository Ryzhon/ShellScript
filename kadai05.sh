#!/bin/bash
df / | tail -n 1 |awk '{print $4}'
