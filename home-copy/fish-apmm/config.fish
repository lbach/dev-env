set -x EDITOR mg
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x ERL_AFLAGS -kernel shell_history enabled
set -x LSCOLORS ExGxBxDxCxEgEdxbxgxcxd

abbr -a gu git pull --rebase --autostash
abbr -a gup 'git pull --rebase && git push'
abbr -a gp git push
abbr -a gs git status
abbr -a gd git diff
abbr -a ga git add
abbr -a gap git add -p
abbr -a gci git commit
abbr -a gcim git commit -m \'\'
abbr -a gcia git commit -a
abbr -a gciam git commit -a -m \'\'
abbr -a gco git checkout
abbr -a gcob git checkout -b
abbr -a gcom git checkout master
abbr -a gl git log
abbr -a gls git log --stat
abbr -a glp git log -p
abbr -a gbd git pull --prune


abbr -a kg kubectl get
abbr -a kgns kubectl get ns -l product=forecasting
abbr -a kga kubectl get all
abbr -a kgc kubectl get cronjobs
abbr -a kgd kubectl get deployments
abbr -a kgr kubectl get replicasets
abbr -a kgj kubectl get jobs
abbr -a kgp kubectl get pods
abbr -a kgi kubectl get ingress
abbr -a kgs kubectl get services

abbr -a kd kubectl describe
abbr -a kdns kubectl describe ns
abbr -a kdc kubectl describe cronjob
abbr -a kdd kubectl describe deployment
abbr -a kdr kubectl describe replicaset
abbr -a kdj kubectl describe job
abbr -a kdp kubectl describe pod
abbr -a kdi kubectl describe ingress
abbr -a kds kubectl describe service

abbr -a kdel kubectl delete
abbr -a kdelns kubectl delete ns
abbr -a kdelc kubectl delete cronjob
abbr -a kdeld kubectl delete deployment
abbr -a kdelr kubectl delete replicaset
abbr -a kdelj kubectl delete job
abbr -a kdelp kubectl delete pod
abbr -a kdeli kubectl delete ingress
abbr -a kdels kubectl delete service

abbr -a klogs kubectl logs
abbr -a klogsf kubectl logs -f
abbr -a klogscontainer kubectl logs -f -c container_name

if test -d ~/bin
    set PATH ~/bin $PATH
end


source ~/.asdf/asdf.fish
status --is-interactive; and source (pyenv init -|psub)


function start-job-from-cronjob -a job_name job_id
    kubectl create job --from=cronjob/$job_name--cronjob $job_name--job-$job_id
end
