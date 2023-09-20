# Image Inpainting with Gradio and Stable Diffusion

This repository contains code for an interactive image inpainting application built using Gradio, Stable Diffusion and Segment Anything Model. With this application, you can inpaint missing regions in an image using the Stable Diffusion inpainting model and provide a text prompt for guiding the inpainting process.

### Prerequisites

Before running the code, make sure you have the following dependencies installed:

- Python (>= 3.6)
- PyTorch
- Gradio
- NumPy
- PIL (Python Imaging Library)
- diffusers (for Stable Diffusion)
- segment_anything (for the segmentation model)

You can install these dependencies using `pip`:

```bash
pip install gradio torch numpy pillow diffusers segment_anything accelerate
```

Install weights for SAM from [here](https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth).

### Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/Kunal-Kumar-Sahoo/image-inpainting.git
   cd image-inpainting
   ```

2. Download the Stable Diffusion inpainting model checkpoint and save it as `weights/sam_vit_h_4b8939.pth` in the project directory.

3. Run the application:

   ```bash
   python app.py
   ```

4. Open a web browser and visit `http://localhost:7860` to access the inpainting interface.

### How it Works

The code in `app.py` sets up an interactive Gradio interface for inpainting images:

- You can upload an image as the input.
- Draw masks on the input image by selecting regions to inpaint.
- Provide a text prompt that guides the inpainting process.
- Click the "Submit" button to start the inpainting process.
- The inpainted output will be displayed in real-time.

### Customization

You can customize the inpainting model and other settings by modifying the code in `app.py`. For example, you can change the inpainting model architecture, prompt, or image resizing options.

### Author

- Kunal Kumar Sahoo
- Email: kunal.sahoo2003@gmail.com