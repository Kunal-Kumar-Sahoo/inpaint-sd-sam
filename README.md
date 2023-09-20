# Dockerized Image Inpainting Web App

This repository contains code for an interactive image inpainting web application using Gradio, Stable Diffusion, and Docker.

## Prerequisites

Before running the Dockerized web app, make sure you have the following dependencies installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Git: [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/image-inpainting.git
   cd image-inpainting
   ```

2. Build the Docker image:

   Run the following command to build the Docker image:

   ```bash
   docker build -t image-inpainting .
   ```

3. Download the weights:

   The Dockerfile will automatically download the required model weights during the image build process. The weights will be saved in the `weights` directory inside the container.

4. Run the Docker container:

   Start the Docker container using the following command:

   ```bash
   docker run -p 7860:7860 image-inpainting
   ```

   This command maps port 7860 inside the container to port 7860 on your host machine.

5. Access the web app:

   Open a web browser and visit `http://localhost:7860` to access the inpainting interface.

## How it Works

The web app allows you to:

- Upload an image as input.
- Draw masks on the input image to specify regions to inpaint.
- Provide a text prompt to guide the inpainting process.
- Click the "Submit" button to start the inpainting process.
- View the inpainted output in real-time.

## Customization

You can customize the inpainting model and other settings by modifying the code in `app.py`. For example, you can change the model architecture, prompt, or image resizing options.

## Author

- Kunal Kumar Sahoo
- Email: kunal.sahoo2003@gmail.com

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.