# Repack

Repack is a shell script that allows repackaging of the node_modules in any JavaScript project, providing the option to use either npm or yarn for package management.

## Installation

You can install Repack using Homebrew:

```sh
brew tap gthrm/repack
```

```sh
brew install repack
```

## Usage

After installation, you can use Repack in your JavaScript projects:

```sh
repack
```

When running the command without any flags, you will be prompted to choose whether to repack the node_modules using npm or yarn.

If you prefer to specify the package manager upfront, you can use the `-n` flag for npm or the `-y` flag for yarn, the `-d` flag for `npm run dev`:

```sh
repack -n
```

```sh
repack -y
```

```sh
repack -d
```

These will use npm and yarn for repackaging, respectively, without prompting for a choice.

## License

Please see the [LICENSE](./LICENSE) file for details on the license of this script.
