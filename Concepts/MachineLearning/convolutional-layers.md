---
title: Convolutional Layers
---

A convolutional layer preforms a _convolution_ on an input matrix with a kernel
matrix (that is learned during training). The input matrix is composed of values
given by input nodes. In essence, every input value in the matrix represents one
input node into the convolutional layer. The relationship between several input
nodes and an output node is known as a
[Receptive Field](https://en.wikipedia.org/wiki/Receptive_field). In the gif
below, the receptive field is represented by the red square.

<figure>
	<image src="https://upload.wikimedia.org/wikipedia/commons/1/19/2D_Convolution_Animation.gif">
	<figcaption> 
	Visual Representation of a convolution (in the context of a layer)
	</figcaption>
</figure>

This is the representation of a 2D convolutional layer, but nD convlutional
layers can exist. The input nodes, kernel and output nodes simply need to be
organized in a 3D manner, rather than a 2D one.

Convolutional layers are particularly useful for image data and are used to
learn if the presence of a feature (edges, cars, cats) are present in the
receptive field. Each kernel matrix represents one feature, though multiple
kernel matrices can be learned for a single convolutional layer.

As convolutional layers are stacked, features can be more complex as the size of
the total receptive field increases. For example, the first layer may identify
curves and edges, while the second layer may identify numbers (for something
like [MNIST](https://en.wikipedia.org/wiki/MNIST_database)).

## Useful Links

- [convolutional layer](https://en.wikipedia.org/wiki/Convolutional_layer)
- [convolutional neural network](https://en.wikipedia.org/wiki/Convolutional_neural_network)
- [convolution](https://en.wikipedia.org/wiki/Convolution)
- [CNNs in 4 minutes](https://www.mathworks.com/videos/introduction-to-deep-learning-what-are-convolutional-neural-networks--1489512765771.html?ef_id=Cj0KCQjwiqbBBhCAARIsAJSfZka3nRBALX1tPW_SC6WusELx0SRjtBL1DbxlRpY97GyXMSLD2hEfeD8aAnLkEALw_wcB%3AG%3As&s_kwcid=AL%218664%213%21591866074057%21p%21%21g%21%21deep+learning+cnn&s_eid=psn_57384017272&q=deep+learning+cnn&gad_source=1&gad_campaignid=1472720091&gclid=Cj0KCQjwiqbBBhCAARIsAJSfZka3nRBALX1tPW_SC6WusELx0SRjtBL1DbxlRpY97GyXMSLD2hEfeD8aAnLkEALw_wcB)
