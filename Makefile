PROJECT_DIR=$HOME/Git/rust/abitofhelp/rust-bazel

.PHONY:baz_build_all baz_clean baz_run baz_sync_from_cargo baz_test cratelist 1.cratepub_dryrun 2.cratepub

baz_build_all:
	@bazel build //...

baz_clean:
	@bazel clean --expunge --async

baz_run:
	@bazel run //crates/rust-bazel:rust-bazel

baz_sync_from_cargo:
	@CARGO_BAZEL_REPIN=1 bazel sync --only=crate_index

baz_test_calculator:
	@bazel test //crates/mycalculator:mycalculator_test

cratelist:
	@cargo package --list

cratepub_dryrun:
	@cargo publish --dry-run

cratepub:
	@cargo publish -publish rust-bazel

