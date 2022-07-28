# upate this if you to autoload .env file values

set dotenv-load := true

@_default:
    just --list

# installs/updates all dependencies
@bootstrap:
    pip-compile
    pip-compile requirements-dev.in
    pip-sync requirements-dev.txt requirements.txt


# invoked by continuous integration servers to run tests
@cibuild:
    echo "TODO: cibuild"

# run '--fmt' in "check" mode.
@check:
    just --check --fmt --unstable

# Commit using commitizen
@commit: pre-commit
    cz -n cz_commitizen_emoji c

# opens a console
@console:
    echo "TODO: console"

# deploy to the caprover
@deploy:
    caprover deploy -h $DEPLOY_HOST -p $DEPLOY_PASS -b $DEPLOY_BRANCH -a $DEPLOY_APP

# format and overwrite justfile
@fmt:
    just --fmt --unstable

# run pre-commit to all file
@pre-commit:
    pip-compile
    pip-compile requirements-dev.in
    pre-commit run --all-files

# starts app
@server:
    DJANGO_SETTINGS_MODULE=core.settings_local ./manage.py runserver

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
