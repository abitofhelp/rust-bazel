PROJECT_DIR=$HOME/Git/rust/abitofhelp/helloworld-tonic-bsr
PROTO_DIR=$(PROJECT_DIR)/proto
VERSION=

.PHONY:baz_sync_from_cargo baz_run cratelist 1.cratepub_dryrun 2.cratepub

baz_sync_from_cargo:
	@CARGO_BAZEL_REPIN=1 bazel sync --only=crate_index

baz_run:
	@./bazel-bin/crates/rustbazel/rustbazel

cratelist:
	@cargo package --list

cratepub_dryrun:
	@cargo publish --dry-run

cratepub:
	@cargo publish

