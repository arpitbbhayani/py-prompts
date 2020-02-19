Python Prompts
===

Python prompts to make your Python interactive shell prettier.

# Installing Python prompt theme

```sh
curl -L https://raw.githubusercontent.com/arpitbbhayani/py-prompts/master/install.sh | sh
```

Above command will setup a command line utility called `py-prompts`, execute this to view, manage
and explore Python prompts themes. You will need to either source your rcfile or start a new
terminal session.

# Command Walkthrough

## List themes

```sh
$ py-prompts ls
...
```

## Applying a theme

```sh
$ py-prompts set <theme_name>
```

The changes will take effect from the next terminal session or after sourcing the existing session.
