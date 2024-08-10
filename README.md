# rabbitmq-docker
Repository with scripts to create a RabbitMQ container with Docker.

1. **Store RabbitMQ Root Password:**

    ```bash
    secret-tool store --label="rabbitmq_root_password" secret rabbitmq_root_password
    ```

2. **Retrieve RabbitMQ Root Password:**

    ```bash
    secret-tool lookup secret "rabbitmq_root_password" | copy
    ```

3. **Set Environment Variable:**

    ```bash
    export RABBITMQ_ROOT_PASSWORD="$(secret-tool lookup secret 'rabbitmq_root_password')"
    ```

4. **Start the Container:**

    ```bash
    docker-compose up -d
    ```

5. **Access the Container:**

    ```bash
    docker exec -it rabbitmq bash
    ```

6. **View Container Logs:**

    ```bash
    docker-compose logs -f rabbitmq
    ```

7. **Stop the Container:**

    ```bash
    docker-compose down
    ```

8. **Access the UI:**
    - [https://edge-rabbitmq.lan.homelab](https://edge-rabbitmq.lan.homelab)

[MIT License](LICENSE "MIT License")

### Created by:

1. Luciano Sampaio.
