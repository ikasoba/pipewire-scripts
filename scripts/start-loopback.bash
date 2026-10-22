#!/usr/bin/env bash

(

_script_name="$(basename $0)"

help() {
  echo "Usage: $_script_name <device-name>"
}

main() {
  local args=("$@")

  if [[ "${#args[@]}" != 1 ]]; then
    help
    return 1
  fi

  local name="${args[0]}"

  echo "Start loopback device: $name"

  pw-loopback \
    -name "$name" \
    -g "$name" \
    -m "[FL FR]" \
    -o "media.class=Audio/Source, node.description=${name}, node.name=${name}" \
    -i "media.class=Audio/Sink, node.description=${name}, node.name=${name}"
}

main "$@"

)
