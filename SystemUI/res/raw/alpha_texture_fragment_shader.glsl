precision mediump float; 
      	 				
uniform sampler2D u_TextureUnit;
uniform float u_Alpha;
varying vec2 v_TextureCoordinates;      	   								
  
void main()                    		
{
    vec4 tempColor = texture2D(u_TextureUnit, v_TextureCoordinates);
    if(tempColor.w==0.0){
        discard;
    }
    else{
     gl_FragColor = tempColor*u_Alpha;
    }


}