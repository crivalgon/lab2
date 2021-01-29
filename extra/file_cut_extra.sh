#!/bin/bash


# Vamos a modificar los archivos .fastq de manera que nos quedemos con las lineas
# que no comienzan con @ o + : 

filename=$(echo $1)

result_file=$(echo $filename | tr -d "./")

awk '!/^@|+/' $filename > "mod_$result_file"

