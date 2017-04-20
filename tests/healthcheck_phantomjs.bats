#!/usr/bin/env bats

load helper

@test "PHANTOM: PhantomJS installed properly." {
	run ./phantomjs --version
	assert_contains "$output" "2.1.1"
}

