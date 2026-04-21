/- Importing Mathlib, the mathematical library.-/
import Mathlib

/- Some style configurations to make the presentation smoother.-/
set_option linter.style.longLine false
set_option linter.style.whitespace false

/- The Lean code. -/
def isBoundedAbove (f : ℝ → ℝ) := ∃ a, ∀ x, f x ≤ a

lemma isBoundedAbove_add {f g} (hf : isBoundedAbove f) (hg : isBoundedAbove g) : isBoundedAbove (f + g) := by
  rcases hf with ⟨a, ha⟩
  rcases hg with ⟨b, hb⟩
  use a + b
  intro x
  apply add_le_add
  · exact ha x
  · exact hb x

theorem myRiemannHypothesis : 1 = 1 := rfl
theorem riemannHypothesis : RiemannHypothesis := sorry
#print axioms riemannHypothesis
