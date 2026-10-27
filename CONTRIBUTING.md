# Contributing

- `main` must always run; do not push directly to `main`.
- One short branch per task: `<member>/<task>`, e.g. `A/dense-maxp`, `B/prompt-understand-v2`.
- Merge via Pull Request: 1 reviewer + `pytest -q` passing; squash merge.
- Commits: `<type>(<scope>): <description>`, type ∈ feat, fix, exp, prompt, docs, refactor, test, chore.
- The data key is always `(domain, topic_id)`; outputs are split by domain.
- Each run writes one file `outputs/results/<run_id>.json`; run_id = `YYYYMMDD-<member>-<description>`.
- Tune on train only; measure dev only at milestones (record in docs/decisions.md).
- Never commit: data, vectors, indexes, caches, `.env`, notebooks with outputs.
- Tag each milestone: level0 … level4, rc1, submit-2c-v1.
