PROJECT_DIR=$HOME/Git/rust/abitofhelp/helloworld-tonic-bsr
PROTO_DIR=$(PROJECT_DIR)/proto
VERSION=

.PHONY:baz_build_all baz_clean baz_run baz_sync_from_cargo cratelist 1.cratepub_dryrun 2.cratepub

baz_build_all:
	@bazel build //...

baz_clean:
	@bazel clean --expunge

baz_run:
	@./bazel-bin/crates/rust-bazel/rust-bazel

baz_sync_from_cargo:
	@CARGO_BAZEL_REPIN=1 bazel sync --only=crate_index

cratelist:
	@cargo package --list

cratepub_dryrun:
	@cargo publish --dry-run

cratepub:
	@cargo publish

