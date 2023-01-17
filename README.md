

Requirements
===========================
- docker:  wfhisper-asr-webservice (https://github.com/ahmetoner/whisper-asr-webservice)

- python 3.6+
  - srt (pip install srt)
 
Quick Start
===========================

1. start the docker: whisper-asr-webservice

- for CPU:

```sh
docker run -d -p 9000:9000 -e ASR_MODEL=base onerahmet/openai-whisper-asr-webservice:latest
```

- for GPU: 
```sh
docker run -d --gpus all -p 9000:9000 -e ASR_MODEL=base onerahmet/openai-whisper-asr-webservice:latest-gpu
```

2. run scripts  
- get automatic speech-to-text transcriptions: 
```sh
./get_asr.sh
```

- get transcriptions in srt format: 
```sh
./get_srt.sh
```

- get vtt format: 
```sh
./get_vtt.sh
```
  
3. normalize srt format (optional)
- Sometimes the srt format may become corrupted and unable to play on the built-in player of Windows 10

- to fix the srt format: 
```sh
./srt_norm.sh
```
       
For more details:
===========================
    https://github.com/openai/whisper/
    https://github.com/ahmetoner/whisper-asr-webservice
