#! /bin/bash

if [ -n "$CI_OS_NAME" ]; then
    lix install haxelib:hxnodejs
fi

# Run these tests on every target that could be used for a NAT front-end
haxe test.hxml py.hxml &&
haxe test.hxml js.hxml &&
haxe test.hxml cpp.hxml &&
haxe test.hxml --interp &&
haxelib run nat-archive-tool _TEST_