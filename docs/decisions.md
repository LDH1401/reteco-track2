# Design decisions

## Memory is an optional experiment, scoped to a single conversation
- Conversations are short (3–12 turns, ~440 tokens) and each comes from an independent user, so putting the history directly into the prompt/query is enough; there is no cross-conversation memory.
- `src/reteco/memory/` only serves the week-8 experiment: reusing documents from previous turns (`prev_docs`) and detecting topic shifts by similarity (`shift`).
- Memory must be cleared when moving to a new conversation; `tests/test_memory.py` checks this.
- Measure the oracle (previous-turn gold) first; keep it only if it improves train without lowering dev.
