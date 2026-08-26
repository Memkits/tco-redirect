# Upgrade Calcit, skir, and the project snapshot

- Migrate the legacy compact snapshot to canonical `calcit.cirru` and use the
  current `calcit` CLI in CI.
- Upgrade Calcit/procs to 0.13.46 and pin the maintained skir 0.0.22 release;
  remove the unmaintained Lilac dependency.
- Add a typed skir request boundary while retaining explicit Dynamic/JS
  boundaries for HTTP and Axios host values.
- Validate generated JavaScript by starting the Node server and exercising
  both the missing-URL and asynchronous proxy request paths.
