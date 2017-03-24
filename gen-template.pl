# generate a template for a problem

$folder = $ARGV[0];
$module = $ARGV[1];

if (not defined $folder or not defined $module) {
  die "usage : perl gen-template.pl problem_folder main_module\n";
}

mkdir ("$folder") or die "Couldn't create $folder directory, $!";

$srcFolder = "$folder/src";
mkdir( $srcFolder ) or die "Couldn't create $srcFolder directory, $!";
writeContent ("$srcFolder/$module.elm", templateMainModule());

$testFolder = "$folder/tests";
mkdir( $testFolder ) or die "Couldn't create $testFolder directory, $!";
writeContent ("$testFolder/elm-package.json", templateTestElmPackageJSON());
writeContent ("$testFolder/Tests$folder.elm", templateTestsModule());
writeContent ("$testFolder/Main.elm", templateMainTestModule());

sub writeContent {
    $filePath = $_[0];
    $content = $_[1];

    open($file, '>', "$filePath");
    print $file $content;
    close $file;
}

sub templateMainModule {
  return 'module $module exposing (..)';
}

sub templateTestElmPackageJSON { return
'{
    "version": "1.0.0",
    "summary": "Sample Elm Test",
    "repository": "https://github.com/user/project.git",
    "license": "BSD-3-Clause",
    "source-directories": [
        ".",
        "../src"
    ],
    "exposed-modules": [],
    "dependencies": {
        "elm-community/json-extra": "2.0.0 <= v < 3.0.0",
        "elm-lang/html": "2.0.0 <= v < 3.0.0",
        "mgold/elm-random-pcg": "4.0.2 <= v < 5.0.0",
        "elm-lang/core": "5.0.0 <= v < 6.0.0",
        "elm-community/elm-test": "3.0.0 <= v < 4.0.0",
        "rtfeldman/node-test-runner": "3.0.0 <= v < 4.0.0"
  },
  "elm-version": "0.18.0 <= v < 0.19.0"
}';
}

sub templateTestsModule { return
"module Tests$folder exposing (..)

import Test exposing (..)
import Expect
import String
import List
import $module exposing (..)


all : Test
all =
    describe \"Problem $folder tests\"
        [
        ]
";
}

sub templateMainTestModule { return
"port module Main exposing (..)

import Tests$folder
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
run emit Tests$folder.all


port emit : ( String, Value ) -> Cmd msg";
}
