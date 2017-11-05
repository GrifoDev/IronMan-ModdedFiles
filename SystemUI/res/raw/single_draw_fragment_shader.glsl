precision highp float;
      	 				
uniform sampler2D u_TextureUnit;
uniform float u_Alpha;
varying vec2 v_TextureCoordinates;      	   								
varying vec2 v_TextureCoordinatesMask;



void main()                    		
{

    vec4 tempColor = texture2D(u_TextureUnit, v_TextureCoordinates);
    vec4 tempColorMask = texture2D(u_TextureUnit, v_TextureCoordinatesMask);

    if(tempColor.a==0.0){
        discard;
    }
    else{
        gl_FragColor = tempColorMask*u_Alpha*tempColor.a;
//          gl_FragColor = tempColorMask*u_Alpha;
    }


}