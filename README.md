# More-Colors.less by Jason Robb

White, black, and grayscale variables for easier color manipulation while you design in the browser.

## White, Black to transparent

Use any variable from <code>@white1</code> to <code>@white99</code>, the lower the number, the more transparent the color.
Black and white work the same way. The higher the suffix number, the more solid (i.e. not transparent) the color will be.

	// syntax: 	@white##
	// 			@black##
	
	@white: #fff;
	
	@white1:  fade(@white, 1%);
	@white2:  fade(@white, 2%);
	@white3:  fade(@white, 3%);
	@white4:  fade(@white, 4%);
	...
	@white96: fade(@white, 96%);
	@white97: fade(@white, 97%);
	@white98: fade(@white, 98%);
	@white99: fade(@white, 99%);

## Solid grayscale colors

Grayscale colors are solid, as in they have no transparency. I found these to be useful sometimes when I didn't want the <code>background-color</code> to bleed through. <code>@gray99</code> is closest to white, while <code>@gray1</code> is closest to black.

	// syntax: @gray##
	
	@black: #000;
	@white: #fff;
	
	@gray99: mix(@black, @white, 1%);
	@gray98: mix(@black, @white, 2%);
	@gray97: mix(@black, @white, 3%);
	@gray96: mix(@black, @white, 4%);
	...
	@gray4: mix(@black, @white, 96%);
	@gray3: mix(@black, @white, 97%);
	@gray2: mix(@black, @white, 98%);
	@gray1: mix(@black, @white, 99%);

## Best used in...

Try using these variables to:

* setting the background-color a little lighter or darker;
* make an <code>&lt;hr /&gt;</code> with a light top border and a dark bottom border; the horizontal rules on this page were made with these variables;
* mix colors like this: <code>mix(@color, @white50, 50)</code> which provides an additional point of adjustment. Hey don't knock it 'til you've tried it&mdash;it's helped me.

## How I built it

<a href="http://smilesoftware.com/TextExpander/">TextExpander</a> is an amazing piece of software. I was using a snippet in <code>#!/bin/sh</code> mode to generate lists really quickly. I needed to create lists super fast and a shell script was just the way to do it. Anyhow, I edited that shell script to work with these color variables. And voila, incremented numbers from 1&ndash;99. Here's that shell script, in you're interested.

	#!/bin/sh
	
	numberA=0
	numberB=%fill:numbers%
	
	until [ $numberA == %fill:numbers% ]; do
	    echo "@black$numberB: fadeout(@black, $numberA%);"
	    numberA=$((numberA + 1))
	    numberB=$((numberB - 1))
	done

And again, but without those TextExpander placeholder variables:
	
	#!/bin/sh
	
	numberA=0
	numberB=10 # has to match the until == 10
	
	until [ $numberA == 10 ]; do
	    echo "@black$numberB: fadeout(@black, $numberA%);"
	    numberA=$((numberA + 1))
	    numberB=$((numberB - 1))
	done

I've included the snippet in the folder /assets/ in this project.

## Why do this?

Thanks to <a href="http://lesscss.org/">LessCSS</a> I can do my color exploration in the browser, instead of the Photoshop color palette. Sure, I could be using <code>hsla(0,0,0,0.5)</code>, but that's a lot more characters and shift key usage than just typing in <code>@black50</code> and being done with it.</p>

Are there better ways to do this? Probably. If it was designed by a human then its fallible, and there is always a better way to do it.

-----

<a href="http://jasonrobb.com">Jason Robb</a> &copy; 2012.