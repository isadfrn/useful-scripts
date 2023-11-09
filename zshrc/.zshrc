rdm() {
  echo "# Title\n\n![Languages used](https://img.shields.io/github/languages/count/isadfrn/"$1"?style=flat-square)\n![Repository size](https://img.shields.io/github/repo-size/isadfrn/"$1"?style=flat-square)\n![Last commit](https://img.shields.io/github/last-commit/isadfrn/"$1"?style=flat-square)\n\n## About\n\nAbout here\n\n## Run\n\nHow to run here\n\n## Contributing\n\nThis repository is using [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) and [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/), so if you want to contribute:\n\n- create a branch from develop branch;\n- make your contributions;\n- open a [Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) to develop branch;\n- wait for discussion and future approval;\n\nI thank you in advance for any contribution.\n\n## Status\nMaintaining\n\n## License\n\n[MIT](./LICENSE)\n" > README.md
}

lic() {
  echo "Copyright 2023 Isabella Nunes\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n" > LICENSE
}

config-repo() {
	git checkout main
	git push
	git checkout develop
	git push --set-upstream origin develop
}

update() {
	sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade
}

