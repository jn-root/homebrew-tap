# jn-root Homebrew Tap

This repository contains Homebrew formulae for public command-line tools created by Justin Nguyen.

## Install YouTube Audio and Text Transcriber

```bash
brew install jn-root/tap/youtube-transcriber
```

The current formula supports Apple Silicon Macs running macOS 14 Sonoma or newer.

Run:

```bash
yt-transcribe "https://www.youtube.com/watch?v=VIDEO_ID"
```

Project documentation is available in the [YouTube Transcriber repository](https://github.com/jn-root/youtube-transcriber).

## Install Audio Slicer

```bash
brew install jn-root/tap/audio-slicer
```

Run:

```bash
audio-slicer "/path/to/song.mp3"
```

Project documentation is available in the [Audio Slicer repository](https://github.com/jn-root/audio-slicer).

## Upgrade

```bash
brew update
brew upgrade youtube-transcriber
brew upgrade audio-slicer
```

## Uninstall

```bash
brew uninstall youtube-transcriber
brew uninstall audio-slicer
```

## Available formulae

* `youtube-transcriber`
* `audio-slicer`

Additional public tools may be added under `Formula/` in the future.
