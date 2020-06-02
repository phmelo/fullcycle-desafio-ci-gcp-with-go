package main

import "testing"

func TestSoma(t *testing.T){
  expected := 10
  actual := soma(5,5)
  if actual != expected {
		t.Errorf("Test failed, expected: '%d', got:  '%d'", expected, actual)
  }
}