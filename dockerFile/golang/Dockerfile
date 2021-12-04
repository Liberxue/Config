FROM golang:alpine

ENV GO111MODULE=on \
    GOPROXY=https://goproxy.cn,direct \
    GOPRIVATE=git.liberxue.com

WORKDIR /go/src/github.com/Liberxue


ARG SourceProxy="s/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g"

RUN sed -i $SourceProxy /etc/apk/repositories && \

    apk --no-cache add make git gcc libtool musl-dev ca-certificates dumb-init vim neovim curl nodejs npm && \

    npm install --global yarn && \

    # neovim pulg
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \

    mkdir -p ~/.config/nvim && \

    curl -o ~/.config/nvim/init.vim https://raw.githubusercontent.com/Liberxue/Config/master/nvim/init.vim && \

    alias vim=nvim



