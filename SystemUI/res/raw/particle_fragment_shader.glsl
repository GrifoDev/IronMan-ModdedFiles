precision highp float;

uniform float u_Alpha;
uniform float u_PlusAlpha;
varying float v_PointAlpha;
varying float v_PlusAlpha;
varying float v_FadeOutColor;
varying float v_FadeInColor;

void main()
{
    float xDistance = 0.5 - gl_PointCoord.x;
    float yDistance = 0.5 - gl_PointCoord.y;
    float distanceFromCenter = sqrt(xDistance * xDistance + yDistance * yDistance);

    //u_MaxDistanceFromCircle 0.5 is default
    if (distanceFromCenter >0.5) {
        discard;
    } else {
        gl_FragColor = vec4(1.0,1.0,1.0,u_Alpha*(1.0 - v_PlusAlpha*u_PlusAlpha)*v_PointAlpha*v_FadeOutColor*v_FadeInColor);

    }

}







