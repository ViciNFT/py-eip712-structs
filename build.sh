#!/bin/bash
cd `dirname $0`

rm dist/*
pyproject-build --sdist --outdir dist
twine upload -r local dist/*
