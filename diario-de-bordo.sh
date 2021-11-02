#!/bin/sh
# shellcheck disable=SC2164
echo 'cat diario-de-bordo.sh'
exit 0

# TODO: migrar conteúdo de README.old.md para cá



#### Git tags (linha de comando)________________________________________________
### Commit usando outra conta do GitHub ........................................
# Nota: normalmente você não usaria isso em um projeto real. Isso é usado
#       apenas para evitar que muitos commits fiquem associados a um humano
#       e espameie histórico do git.
git add .
GIT_COMMITTER_NAME="eticaaibot" GIT_COMMITTER_EMAIL="etica.of.a.ai@gmail.com" git commit --author="eticaaibot <etica.of.a.ai@gmail.com>" -m 'mensagem aqui'
git tag v0.3.1
git push origin tag v0.3.1
git push

### Commit tradicional .........................................................
git add .
git commit -m 'mensagem aqui'
git tag v0.3.1
git push origin tag v0.3.1
git push