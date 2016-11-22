Flatpak Source to Image
=======================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Build wrapper for [source-to-image](https://github.com/openshift/source-to-image) binary as Flatpak application.


Usage
-----

### Prerequisites

```
$ wget https://sdk.gnome.org/keys/gnome-sdk.gpg
$ flatpak --user remote-add --gpg-import=gnome-sdk.gpg gnome http://sdk.gnome.org/repo/
$ flatpak --user install gnome org.freedesktop.Platform 1.4
```


### Install from repo

```
$ flatpak --user remote-add --no-gpg-verify source-to-image https://gbraad.gitlab.io/flatpak-source-to-image/repo
$ flatpak --user install source-to-image nl.gbraad.Source2Image
```


### Import bundle   

```
$ wget https://gbraad.gitlab.io/flatpak-source-to-image/source-to-image.flatpak
$ flatpak install --user --bundle source-to-image.flatpak
```


### Run

```
$ alias s2i='flatpak run nl.gbraad.Source2Image'
$ s2i
```


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
