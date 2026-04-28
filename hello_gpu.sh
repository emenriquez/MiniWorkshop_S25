#!/bin/bash
#SBATCH --job-name=hello_gpu
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --time=00:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --output=hello_%j.out

# ============================================================
# Workshop Demo: "Hello GPU" on the UTRGV HPC Cluster
# ============================================================
# This script demonstrates submitting a simple GPU job via SLURM.
# It loads the necessary modules, checks GPU availability with
# PyTorch, and runs a tiny matrix multiplication on the GPU.
#
# Usage:
#   sbatch hello_gpu.sh
#
# Then check your job:
#   squeue -u $USER
#
# Once complete, view output:
#   cat hello_*.out
# ============================================================

echo "=== Job started at $(date) ==="
echo "Running on host: $(hostname)"
echo ""

# Load the modules available on the cluster
# (Adjust module names to match your cluster's module system)
module load cuda pytorch

echo "--- Python & PyTorch Info ---"
python3 -c "
import torch
import sys

print(f'Python version:  {sys.version}')
print(f'PyTorch version: {torch.__version__}')
print(f'CUDA available:  {torch.cuda.is_available()}')

if torch.cuda.is_available():
    print(f'GPU device:      {torch.cuda.get_device_name(0)}')
    print(f'GPU memory:      {torch.cuda.get_device_properties(0).total_mem / 1e9:.1f} GB')

    # Quick GPU computation demo
    print()
    print('--- GPU Matrix Multiply Demo ---')
    a = torch.randn(1000, 1000, device='cuda')
    b = torch.randn(1000, 1000, device='cuda')
    c = torch.matmul(a, b)
    print(f'Multiplied two 1000x1000 matrices on the GPU.')
    print(f'Result shape: {c.shape}, mean: {c.mean().item():.4f}')
else:
    print('No GPU detected — running on CPU only.')
"

echo ""
echo "=== Job finished at $(date) ==="
