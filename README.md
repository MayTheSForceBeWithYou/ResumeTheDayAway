# RésuméTheDayAway
So great to name a Salesforce project something without the word "force" in it!  Inspiration comes from Trustworthy Brewing's Rosé The Day Away IPA.  Necessity comes from making your experience known, but not wanting to do it in a W*$! doc!

## Setup
If you do not have bash installed locally (which should only be the case if you are on a Windows system), I would recommend installing Git for Windows and choosing to install git-bash.
https://git-scm.com/download/win

For *nix users (including Mac OS X), verify that bash is located at /bin/bash
`which bash`
(should return "/bin/bash")

From the project's root directory, run
`./scripts/org-setup.sh YourScratchOrgName`

This will:
1. Create a scratch org with the provided alias
2. Push the local source to your scratch org
3. Add the permission set to your scratch org user
