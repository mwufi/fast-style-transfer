
# train it for this
IMG_STYLE=examples/style/wave.jpg

# training details
CKPT_DIR=checkpoints
GPUS=0

# path to save test images in
TEST_DIR=..
IMG_TEST=examples/content/chicago.jpg

CUDA_VISIBLE_DEVICES=$GPUS python style.py --style $IMG_STYLE \
	--checkpoint-dir $CKPT_DIR \
	--test $IMG_TEST \
	--test-dir $TEST_DIR \
	--content-weight 7.5e-1 \
	--checkpoint-iterations 1000 \
	--batch-size 18 \
