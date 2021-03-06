## Conv-TasNet
A PyTorch implementation of Conv-TasNet described in ["TasNet: Surpassing Ideal Time-Frequency Masking for Speech Separation"](https://arxiv.org/abs/1809.07454).

## Results
| From |  Activatoin |Norm | Causal | batch size | #GPU | SI-SDRi(dB) | SDRi(dB)|
|:----:|:-----------:|:---:|:------:|:----------:|:----:|:-----------:|:-------:|
| Paper|   Softmax   | gLN |   X    |     -      |  -   |    14.6     |  15.0   |
| Here |   Softmax   | gLN |   X    |     8      |  2   |    5.0      |  5.2    |
| Here |   Sigmoid   | gLN |   X    |     8      |  2   |    14.6     |  14.9   |
| Here |     ReLU    | gLN |   X    |     8      |  2   |    15.6     |  15.8   |

## Install
- PyTorch 0.4.1+
- Python3 (Recommend Anaconda)
- `pip install -r requirements.txt`

## Usage
```bash
scripts/run_tasnet.sh
```
