use strict;
use warnings;

use Test::More;

eval {
    require Test::Pod;
    Test::Pod->import();
};
plan skip_all => "Test::Pod required for testing POD" if $@;

all_pod_files_ok();

1;
