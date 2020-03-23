#!/bin/bash
grep "bash$" /etc/passwd |wc -l
awk -f: '/bash$/{x++}end{print x}' /etc/passwd
