#include "NodeMCU.h"


// green and red SOS

void setup()
{
  pinMode(NodeMCU::D7, OUTPUT);
  pinMode(NodeMCU::SD1, OUTPUT);
}

void loop()
{
  dot(NodeMCU::D7); dot(NodeMCU::D7); dot(NodeMCU::D7);
  dash(NodeMCU::D1); dash(NodeMCU::D1); dash(NodeMCU::D1);
  dot(NodeMCU::D7); dot(NodeMCU::D7); dot(NodeMCU::D7);
  delay(1000);
}

void dot(int pin)
{
  digitalWrite(pin, HIGH);
  delay(100);
  digitalWrite(pin, LOW);
  delay(100);
}

void dash(int pin)
{
  digitalWrite(pin, HIGH);
  delay(350);
  digitalWrite(pin, LOW);
  delay(100);
}
