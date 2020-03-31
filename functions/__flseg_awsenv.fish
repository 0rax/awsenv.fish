#!/usr/bin/env fish

function __flseg_awsenv

    if set -q "$AWSENV_PROFILE"
        __fishline_segment ffcc66 393939
        printf "\uf0c2 $AWSENV_PROFILE[$AWSENV_PROVIDER]"
    end

end
