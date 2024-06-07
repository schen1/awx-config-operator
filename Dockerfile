FROM quay.io/operator-framework/ansible-operator:v1.34.0

USER root
RUN dnf update --security --bugfix -y

USER 1001

COPY requirements.yml ${HOME}/requirements.yml
RUN ansible-galaxy collection install -r ${HOME}/requirements.yml \
 && chmod -R ug+rwx ${HOME}/.ansible \
 && pip3 install --user jmespath \
 && chmod -R ug+rwx ${HOME}/.local

COPY watches.yaml ${HOME}/watches.yaml
COPY roles/ ${HOME}/roles/
COPY playbooks/ ${HOME}/playbooks/
