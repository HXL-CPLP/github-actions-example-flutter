# programma-exemplum-flutter
programma-exemplum-flutter. Veja https://github.com/HXL-CPLP/forum/issues/61

```bash
# https://github.com/marketplace/actions/flutter-action
# https://github.com/marketplace/actions/dart-and-flutter-package-publisher
# https://flutter.dev/docs/get-started/install/linux
# https://flutter.dev/docs/get-started/editor?tab=vscode
# https://github.com/gskinnerTeam/flutter-folio
```

---

**Índice de conteúdo**

<!-- TOC depthFrom:2 -->

- [Links](#links)
- [Documentōrum](#documentōrum)
    - [Android (Termux)](#android-termux)
    - [macOS](#macos)
    - [Linux-like](#linux-like)
    - [Online](#online)
    - [Windows-like](#windows-like)
- [Licentiam](#licentiam)

<!-- /TOC -->

---

## Links

- **Automation**
  - **GitHub Actions**
    - https://docs.github.com/pt/actions
  - **Flutter Action**
    - https://github.com/marketplace/actions/flutter-action
- **Programma codicem**
  - **Electron JS (oficial)**
    - https://www.electronjs.org/
  - **Electron Builder**
    - https://www.electron.build/
    - https://github.com/electron-userland/electron-builder
  - **Exemplum**
    - https://www.electron.build/#boilerplates
    - https://github.com/samuelmeuli/mini-diary


## Documentōrum
> \_[eng-Latn] Logbook [eng-Latn]\_
>
> \_[por-Latn] Diário de bordo [por-Latn]\_

### Android (Termux)

```bash
# _[por-Latn]
# Pergunta: é possível fazer bootstrapping de deploy de Electron usando
# Android (termux)?
# Editar aplicação DEPOIS de todo pipeline pronto online certamente é
# (já que pessoa poderia usar até GitHub web).
# TODO: https://github.com/EticaAI/inclusao-digital
# [por-Latn]_

```
### macOS

```bash
#### VSCode (One example of IDE) _______________________________________________
# @see https://code.visualstudio.com/download

#### Flutter, install __________________________________________________________
# @see https://flutter.dev/docs/get-started/install/macos

#### TODO
# This is a draft. See Linux-like

```

### Linux-like

```bash
# Linux version used: Ubuntu 20.04
cat /etc/*release | grep VERSION=
# VERSION="20.04.3 LTS (Focal Fossa)"

#### VSCode install ____________________________________________________________
# @see https://code.visualstudio.com/download
# @see https://snapcraft.io/code

#### Flutter, install __________________________________________________________
# @see https://flutter.dev/docs/get-started/install/macos
sudo snap install flutter --classic

## Download SDK and show path
flutter sdk-path
# >>>
#    Running "flutter pub get" in flutter_tools...                       8,1s
#    Doctor summary (to see all details, run flutter doctor -v):
#    [✓] Flutter (Channel stable, 2.2.1, on Linux, locale pt_BR.UTF-8)
#    [✗] Android toolchain - develop for Android devices
#        ✗ Unable to locate Android SDK.
#        Install Android Studio from: https://developer.android.com/studio/index.html
#        On first launch it will assist you in installing the Android SDK components.
#        (or visit https://flutter.dev/docs/get-started/install/linux#android-setup for detailed instructions).
#        If the Android SDK has been installed to a custom location, please use
#        `flutter config --android-sdk` to update to that location.
#
#    [✗] Chrome - develop for the web (Cannot find Chrome executable at google-chrome)
#        ! Cannot find Chrome. Try setting CHROME_EXECUTABLE to a Chrome executable.
#    [!] Android Studio (not installed)
#    [!] Connected device
#        ! No devices available
#
#    ! Doctor found issues in 4 categories.

#### Android Studio, ___________________________________________________________
### Install ....................................................................
# @see https://snapcraft.io/android-studio
sudo snap install android-studio --classic

### Android Studio setup .......................................................
android-studio
# Fluter asks:
#  'Start Android Studio, and go through the  ‘Android Stu#dio Setup Wizard’.
#   This installs the latest Android SDK, Android SDK Command-line Tools,
#   and Android SDK Build-Tools, which are required by Flutter when
#    developing for Android.

# Before 'flutter doctor --android-licenses'
# For Android SDK Command-line Tools, see guide here
# @see https://stackoverflow.com/questions/49758849/flutter-io-android-license-status-unknown

flutter doctor --android-licenses

### executable at google-chrome ................................................
# flutter doctor
#    [✗] Chrome - develop for the web (Cannot find Chrome executable at google-chrome)
#        ! Cannot find Chrome. Try setting CHROME_EXECUTABLE to a Chrome executable.
which chromium
# /snap/bin/chromium

# If the following works, then you're free to add to the path for next runs
CHROME_EXECUTABLE=/snap/bin/chromium flutter doctor

# In this case, we add this line to ~/.bashrc to affect NEW terminals
code ~/.bashrc
#    export CHROME_EXECUTABLE=/snap/bin/chromium

# Now, on this case, worked
flutter doctor
#    Doctor summary (to see all details, run flutter doctor -v):
#    [✓] Flutter (Channel stable, 2.2.1, on Linux, locale pt_BR.UTF-8)
#    [✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
#    [✓] Chrome - develop for the web
#    [✓] Android Studio (version 2020.3)
#    [✓] Connected device (1 available)
#
#    • No issues found!

#### emulator-acceleration (if hardware supports) ______________________________
# @see https://developer.android.com/studio/run/emulator-acceleration

~/Android/Sdk/emulator/emulator -accel-check
#    accel:
#    0
#    KVM (version 12) is installed and usable.
#    accel

# Okay, alread configured

#### Setup Android emulator (local) ____________________________________________
# @see https://flutter.dev/docs/get-started/install/linux#set-up-the-android-emulator
```




<!--

TODO: this is only failing because Electron is trying to upload to
      snapcraft (which was not configured to upload). So the current
      build is actually okay

Para commitar com outro usuário
$ GIT_COMMITTER_NAME="eticaaibot" GIT_COMMITTER_EMAIL="etica.of.a.ai@gmail.com" git commit --author="eticaaibot <etica.of.a.ai@gmail.com>" (...)


$ GIT_COMMITTER_NAME="eticaaibot" GIT_COMMITTER_EMAIL="etica.of.a.ai@gmail.com" git commit --author="eticaaibot <etica.of.a.ai@gmail.com>" -m 'v0.3.5'

Create a tag (no need to commit)
$ git tag v0.3.5

git push origin tag v0.3.5
git push
-->

### Online

> TODO:
> - https://vscode.dev/ (?)
> - https://github.dev/ (?)

### Windows-like

```bash
#### VSCode (One example of IDE) _______________________________________________
# @see https://code.visualstudio.com/download

#### Flutter, install __________________________________________________________
# @see https://flutter.dev/docs/get-started/install/windows

#### TODO
# This is a draft. See Linux-like
```

## Licentiam
> \_[eng-Latn] License [eng-Latn]\_
>
> \_[por-Latn] Licença [por-Latn]\_


[![Dominium publicum](https://i.creativecommons.org/p/zero/1.0/88x31.png)](https://unlicense.org/)

Licentiam: [Dominium publicum](https://unlicense.org/).