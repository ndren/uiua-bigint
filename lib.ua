N    ← 5
Base ← ⁿ N 10
New  ← ⍥(⊥Base)⊸(=₀⧻△)
Call ← New
Str  ← ⌅(▽¬\×⊸=@0/⊂⇌⬚@0°⋕|⇌⋕↯∞_N⊂˜▽@0+N¯◿N⊸⧻)

Fix ↚ (
  Overflow ← ⍢(
    ⨬(+°↻₁|+⊓⌞⊂˜⊂0)⊸(±⊣) ⊃(⌊÷|◿)Base
  | ¬/××⊃(≥₀|<Base))
  ▽¬⍜⇌\×⊸=₀ Overflow
)

Eq ← ≍ ∩New
Ne ← ¬Eq
Le ← ⨬(⍥⋅(<∩⌞⊏⊣⊚◡≠)⊃=<◡∩⧻|1)◡Eq ∩New
Ge ← ˜Le
Gt ← ¬Le
Lt ← ˜Gt

Add ← ⌅(Fix ⬚0+ ∩New|Fix ⬚0- ◡(˙⍤Ge) ∩New)
Sub ← ⌝Add

ModDiv ← (
  ∩New
  ⊸Eq0
  ⨬(◡Lt
    ⨬(⤚(⊃↘↙¯-₁⧻)
      ⊙Fix⊙◌∧(⊃⋅⊙∘(⊂⊙⋅⋅∘) °⍥°⍣⊸˜Sub∘ ⊂) ⇌ ⊙⊙⊙[]
    | ⋅⊙[])
  | ˙⍤0)
)

Mul ← ⌅(Fix /+⬚0≡⌝↘°⊏⊞× ∩New|⋅∘ModDiv)
Div ← ⌝Mul

Pow ← ⨬(New 1|⋅New|/Mul↯) ⊸⨂0_1 °[]⊸△

Mod ← ⊙◌ModDiv

Gcd ← ◌⍢⤚Mod(Ne0)
