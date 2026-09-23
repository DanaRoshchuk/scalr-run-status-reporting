# scalr-run-status-reporting

Test repo for Scalr run status reporting (SCALRCORE-39313): commit statuses and GitHub checks
posted per commit.

Two workspaces, one per folder:

| Workspace | Working directory | Branch |
|-----------|-------------------|--------|
| `ws-a`    | `ws-a`            | `main` |
| `ws-b`    | `ws-b`            | `main` |

Both use the built-in `terraform_data` resource, so no provider is downloaded
(Terraform >= 1.4 or OpenTofu).

## Triggering runs

Bump `revision` in `ws-a/main.tf` and/or `ws-b/main.tf`, commit and push to `main`
(or open a PR against `main`). Every bump plans one resource replacement.

To make a plan fail, break the syntax in one of the `main.tf` files.
