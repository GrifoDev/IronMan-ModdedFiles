precision lowp float;


varying vec4 v_Color;
uniform float u_Opacity;

void main()
{
    gl_FragColor = vec4(v_Color.r,v_Color.g,v_Color.b,u_Opacity);
}