Files:
------

	* actual.png
		This is the actual image.
	* noisy<x>.png (x = 2,5,10,20,30)
		This is the image after introducing x% random noise (by flipping pixels with probability x/100).


Hint for handling images in MATLAB:
-----------------------------------

	* Reading images
		Run this code.
			A = imread('noisy2.png', 'png');
		Now, A has an MxN matrix of 0's and 1's, with a 1 for each white pixel, and a 0 for each black pixel.
	* Writing images
		Let B be a MxN matrix of 0's and 1's, obtained after denoising A. To render this as an image, do:
			imwrite(B, 'denoised2.png', 'png');
		Now, open denoised2.png in an image viewer. Compare it with actual.png.

