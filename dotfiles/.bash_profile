: "${HOME:=/data/data/com.termux/files/home}"
: "${PREFIX:=/data/data/com.termux/files/usr}"
: "${TMPDIR:=/data/data/com.termux/files/usr/tmp}"
export HOME PREFIX TMPDIR

export LOCAL_PREFIX="$HOME/.local"
export PATH="${LOCAL_PREFIX}/bin:${HOME}/bin:${PREFIX}/bin"
export EDITOR="${PREFIX}/bin/nano"

## Load bashrc if shell is interactive.
if [[ "$-" == *"i"* ]]; then
	if [ -r "${HOME}/.bashrc" ]; then
		. "${HOME}"/.bashrc
	fi
fi
