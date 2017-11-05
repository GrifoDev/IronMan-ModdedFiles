precision highp float;

uniform mat4 u_Matrix;

attribute vec4 a_Position;


attribute vec2 a_TextureCoordinates;
attribute vec2 a_TextureCoordinatesMask;

varying vec2 v_TextureCoordinates;
varying vec2 v_TextureCoordinatesMask;


uniform float u_MaskMoveX;
uniform float u_MaskMoveY;




void main()                    
{

    vec2 maskPosition = vec2(a_TextureCoordinatesMask.x+u_MaskMoveX, a_TextureCoordinatesMask.y+u_MaskMoveY);

    v_TextureCoordinatesMask = maskPosition;
    v_TextureCoordinates = a_TextureCoordinates;	  	  
    gl_Position = u_Matrix*a_Position;

}          