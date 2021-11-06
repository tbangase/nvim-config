#!/bin/zsh

for (( i = 0; i < 1000000; i++ )); do
  sapaces=$((i % 10))
  printf " %0.s     /(     \n" {0..spaces}
  printf " %0.s    (__)    \n" {0..spaces} 
  printf " %0.s   (____)   \n" {0..spaces} 
  printf " %0.s  (_o__<_)  \n" {0..spaces} 
  printf " %0.s (___qq___) \n" {0..spaces} 
  printf " %0.s(__________)\n" {0..spaces} 
done

