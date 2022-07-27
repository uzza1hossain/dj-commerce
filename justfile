# upate this if you to autoload .env file values

set dotenv-load := true

@_default:
    just --list

# installs/updates all dependencies
@bootstrap:
    echo "TODO: bootstrap"

# invoked by continuous integration servers to run tests
@cibuild:
    echo "TODO: cibuild"

# run '--fmt' in "check" mode.
@check:
    just --check --fmt --unstable

# Commit using commitizen
@commit:
    cz -n cz_commitizen_emoji c

# opens a console
@console:
    echo "TODO: console"

# format and overwrite justfile
@fmt:
    just --fmt --unstable

# starts app
@server:
    ./manage.py runserver

# sets up a project to be used for the first time
@setup:
    echo "TODO: setup"

# runs tests
@test:
    echo "TODO: test"

# updates a project to run at its current version
@update:
    echo "TODO: update"

# check/lint our README
@_cog_check_readme:
    pipx run --spec cogapp cog --check README.md

# updates our README when justfile changes
@_cog_update_readme:
    pipx run --spec cogapp cog -r README.md
