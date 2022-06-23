FROM gcr.io/cloudshell-images/cloudshell:latest

# Add csv cubed in a venv
RUN python3 -m venv ./csvcubed-shell
RUN source csvcubed-shell/bin/activate
RUN pip3 install csvcubed

# Always start in the venv
RUN echo "source csvcubed-shell/bin/activate" >> ~/.bashrc
