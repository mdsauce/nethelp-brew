# nethelp-brew

### Mac OS installation - Homebrew
1. brew tap mdsauce/nethelp https://github.com/mdsauce/nethelp-brew
2. brew install nethelp

Releasing a new version?

Make sure you change ALL existing versions listed. There should be three

    the url: ..."/schelper/archive/v1.0.4.tar.gz"
    the version: " version "1.0.4"
    the install block: ..."r/cmd.CurVersion=1.0.4", "-o"...

Run brew fetch your-formula --build-from-source to get the proper checksum

Run 'brew upgrade nethelp' locally to make sure the new version upgrades properly.

