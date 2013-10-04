use warnings;
use strict;

# Regression test for prototypes on constant functions.

use constant::override;

use Test::More tests => 1;
ok(1);

package FirstPackage;

use constant ONE => 'TWO';

package SecondPackage;

sub test
{
    return FirstPackage::ONE 
         ? FirstPackage::ONE 
         : FirstPackage::ONE;
}

1;
