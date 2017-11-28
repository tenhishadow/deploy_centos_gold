#!/bin/bash

$( which find )  /var/log/ -name "*.gz"-exec rm -rf {} \;
