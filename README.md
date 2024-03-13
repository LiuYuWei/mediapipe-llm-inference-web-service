# mediapipe-llm-inference-web-service
Use MediaPipe LLM Inference API to chat with LLM in UI

## Overview
This web sample demonstrates how to use the LLM Inference API to run common text-to-text generation tasks like information retrieval, email drafting, and document summarization, on web.

## Prerequisites
A browser with WebGPU support (eg. Chrome on macOS or Windows).

## Running the demo
Follow the following instructions to run the sample on your device:

1. Download Gemma 2B (TensorFlow Lite 2b-it-gpu-int4 or 2b-it-gpu-int8) or convert an external LLM (Phi-2, Falcon, or StableLM) following the guide (only gpu backend is currently supported), into the llm_task folder.

2. Build and run the 
```bash
$ docker build -t <dockerhub-name>/mediapipe-llm-inference-web-service:v0.0.1 .
$ docker run -v .../mediapipe-llm-inference-web-service/gemma-2b-it-gpu-int4.bin:/app/gemma-2b-it-gpu-int4.bin -p 8000:8000 <dockerhub-name>/mediapipe-llm-inference-web-service:v0.0.1
```

## Reference

- googlesamples/mediapipe Github Repo:

https://github.com/googlesamples/mediapipe/tree/main/examples/llm_inference/js?fbclid=IwAR1RqS300JyIvs-FVZhNY8CiB-BEY4e5aL8t-0IU7IbWepLUaF8przBwPz8