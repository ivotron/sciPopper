#!/bin/bash
set -ex
cd ../..
# [wf] activate sciunit
#source sciunit/bin/activate
PATH=~/.local/bin:$PATH
# [wf] repeat model evaluation from sciunit repo

if [ ! -d $HOME/sciunit/fie ]; then
    unzip -d $HOME/sciunit fie.zip
fi

sciunit open fie
# [wf] repeat glmnet model evaluation
sciunit repeat e6
# [wf] repeat random forest evaluation
sciunit repeat e7

#deactivate
