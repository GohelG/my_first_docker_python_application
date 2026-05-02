**Small description of the project**
This repository, my_first_docker_python_application, serves as a straightforward demonstration of how to containerize a Python application using Docker. It includes a basic Python server script (**server.py**), a dependency list (**requirements.txt**), and a **Dockerfile** to build the environment.

**Building the image**: docker build -t kgcorp/python-app .

**Running the container**: Mapping local port 8091 to the application port.

**Verifying the setup**: Using curl to test the live endpoint.

**Prepare the Environment**: Ensure you are inside the directory /home/kgcorp/docker-app (or wherever your Dockerfile and src folder are located).

**Build the Image**: Create the Docker image from your Dockerfile.
   bash command - docker build -t kgcorp/python-app .

**Run the Container**: Start the container in detached mode (-d).
   - 8091: The port you will use on your machine.
   - 8082: The port the Flask app is actually listening on.
   bash command - docker run -d --name pythonapp_kgcorp -p 8091:8082 kgcorp/python-app

**Verify the Status**: Check if the container is up and running. Look for the "Up" status and the correct port mapping.
   bash command - docker ps -a

**Test the Application**: Use curl to confirm the web server is responding with your "Welcome" message.
   bash command - curl http://localhost:8091

   **⚠️ Troubleshooting Tips**
   
   **Fix the Code**: In your server.py snippet, you need to add from flask import Flask at the very top, or the build will fail during the run stage.
   
   **Clean Up**: If you need to restart because of an error, remove the old container first:
   * docker stop pythonapp_kgcorp
   * docker rm pythonapp_kgcorp
   
   **Port Conflicts:** Ensure port 8091 isn't already being used by another service on your host.
