
with Ada.Text_IO.Unbounded_IO;     use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;        use Ada.Strings.Unbounded;
with Ada.Numerics;                
with Ada.Numerics.Discrete_Random;

procedure Hello is

  starts     : array(1..4) of Ada.Strings.Unbounded.Unbounded_String;
  middles    : array(1..4) of Ada.Strings.Unbounded.Unbounded_String;
  qualifiers : array(1..4) of Ada.Strings.Unbounded.Unbounded_String;
  finishes   : array(1..4) of Ada.Strings.Unbounded.Unbounded_String;

  subtype Rand_Idx_Range is integer range 1 .. 4;
  
  package Rand_Idx is new Ada.Numerics.Discrete_Random(Rand_Idx_Range);
  use Rand_Idx;
  
  seed : Rand_Idx.Generator;
  idx  : Rand_Idx_Range;


begin

  Rand_Idx.Reset(seed);

  starts(1)     := Ada.Strings.Unbounded.To_Unbounded_String ("Experiential truth ");
  starts(2)     := Ada.Strings.Unbounded.To_Unbounded_String ("The physical world ");
  starts(3)     := Ada.Strings.Unbounded.To_Unbounded_String ("Non-judgment ");
  starts(4)     := Ada.Strings.Unbounded.To_Unbounded_String ("Quantum physics ");

  middles(1)    := Ada.Strings.Unbounded.To_Unbounded_String ("nurtures an ");
  middles(2)    := Ada.Strings.Unbounded.To_Unbounded_String ("projects onto ");
  middles(3)    := Ada.Strings.Unbounded.To_Unbounded_String ("imparts reality to ");
  middles(4)    := Ada.Strings.Unbounded.To_Unbounded_String ("constructs with ");

  qualifiers(1) := Ada.Strings.Unbounded.To_Unbounded_String ("abundance of ");
  qualifiers(2) := Ada.Strings.Unbounded.To_Unbounded_String ("the barrier of ");
  qualifiers(3) := Ada.Strings.Unbounded.To_Unbounded_String ("self-righteous ");
  qualifiers(4) := Ada.Strings.Unbounded.To_Unbounded_String ("potential ");

  finishes(1)   := Ada.Strings.Unbounded.To_Unbounded_String ("marvel.");
  finishes(2)   := Ada.Strings.Unbounded.To_Unbounded_String ("choices.");
  finishes(3)   := Ada.Strings.Unbounded.To_Unbounded_String ("creativity.");
  finishes(4)   := Ada.Strings.Unbounded.To_Unbounded_String ("actions.");

  Put(      starts     (Rand_Idx.Random(seed) ) );
  Put(      middles    (Rand_Idx.Random(seed) ) );
  Put(      qualifiers (Rand_Idx.Random(seed) ) );
  Put_Line( finishes   (Rand_Idx.Random(seed) ) );

end Hello;
