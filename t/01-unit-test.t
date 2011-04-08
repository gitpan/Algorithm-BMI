#!perl

use strict; use warnings;
use Algorithm::BMI;
use Test::More tests => 2;

my ($bmi, $got);

$bmi = Algorithm::BMI->new({ mass_unit => 'st', height_unit => 'ft' });
$got = $bmi->get_bmi(6, 5);
is($got, "16.40");

$bmi = Algorithm::BMI->new({ mass_unit => 'kg', height_unit => 'm' });
$bmi->get_bmi(90, 1.68);
$got = $bmi->get_category();
is($got, 'Obese Class I');