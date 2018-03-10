SRC_IMAGE_DIR := src-images
TARGET_IMAGE_DIR := images
SRC_IMAGES := $(wildcard $(SRC_IMAGE_DIR)/*)
IMAGES := $(SRC_IMAGES:$(SRC_IMAGE_DIR)/%=$(TARGET_IMAGE_DIR)/%)

all: $(IMAGES)

$(TARGET_IMAGE_DIR)/%: $(SRC_IMAGE_DIR)/% Makefile
	convert -resize 1280x1280 $< $@

