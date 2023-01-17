

# Requirements

    - docker:  whisper-asr-webservice (https://github.com/ahmetoner/whisper-asr-webservice)
    - python 3.6+
        - srt (pip install srt)
 
# Quick Start

    1. start the docker: whisper-asr-webservice
      - for CPU: `docker run -d -p 9000:9000 -e ASR_MODEL=base onerahmet/openai-whisper-asr-webservice:latest`
      - for GPU: `docker run -d --gpus all -p 9000:9000 -e ASR_MODEL=base onerahmet/openai-whisper-asr-webservice:latest-gpu`

    2. run scripts  
      - get automatic speech-to-text transcriptions: `get_asr.sh`
      - get transcriptions in srt format: `get_srt.sh`  
      - get vtt format: `get_vtt.sh` 
  
    3. normalize srt format (optional)
      - Sometimes the srt format may become corrupted and unable to play on the built-in player of Windows 10
      - to fix the srt format: `.srt_norm.sh`
       
# For more details:
    https://github.com/openai/whisper/
    https://github.com/ahmetoner/whisper-asr-webservice
