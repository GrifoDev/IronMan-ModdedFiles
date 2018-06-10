uniform mat4 u_Matrix;
attribute vec4 a_Position;
attribute float a_PointSize;
attribute float a_PointAlpha;
attribute float a_PlusAlpha;


varying float v_PointAlpha;
varying float v_PlusAlpha;
void main()                    
{                              
    gl_Position = u_Matrix*a_Position;
    gl_PointSize = a_PointSize;
    v_PointAlpha= a_PointAlpha;
    v_PlusAlpha= a_PlusAlpha;

}   
