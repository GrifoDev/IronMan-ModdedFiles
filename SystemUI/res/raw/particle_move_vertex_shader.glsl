uniform mat4 u_Matrix;
attribute vec4 a_Position;
attribute float a_PointSize;
attribute float a_PointAlpha;
attribute float a_PlusAlpha;
attribute float a_LayerIndex;

uniform vec3 u_Move;
uniform vec4 u_Max;

varying float v_PointAlpha;
varying float v_PlusAlpha;
varying float v_FadeInColor;
varying float v_FadeOutColor;


void main()                    
{

        float maxX = u_Max.x;
        float maxY = u_Max.y;
        float maxZ = u_Max.z;


        float x = mod(a_Position.x + u_Move.x,maxX);
        float z = mod(a_Position.z + u_Move.z,maxZ);
        float y = a_Position.y;

         if(a_LayerIndex==0.0){
                    x = mod(a_Position.x + u_Move.x*0.4,maxX);
                    z = mod(a_Position.z + u_Move.z*0.4,maxZ);
         }

        float fronLine = 0.9;
        float particleAlpha = abs(z/(maxZ*fronLine));

        if(z>maxZ*fronLine){
            float temp = z - (maxZ*fronLine);
            particleAlpha = 1.0 - temp/(maxZ*(1.0-fronLine));
        }

        vec4 targetPosition = vec4(x, a_Position.y, z, a_Position.w);
        vec4 combinedPosition = u_Matrix*targetPosition;



        v_FadeOutColor = 1.0;
        v_FadeInColor = 1.0;

        float fadeIn = 0.4;

        if(y/maxY<fadeIn){
            v_FadeInColor = y/fadeIn;
        }

         if(u_Max.w==1.0){
            float fadeOunt = 0.97;
            if(y/maxY>fadeOunt&&z>maxZ*fronLine){
                v_FadeOutColor = 1.0 + (1.0-z/maxZ)*5.0 - 2.4*(y/maxY - fadeOunt)/(1.0 - fadeOunt);
                if(v_FadeOutColor<0.0){
                    v_FadeOutColor = 0.0;
                }
                if(v_FadeOutColor>1.0){
                    v_FadeOutColor = 1.0;
                }
            }
         }

        gl_Position = combinedPosition;
        gl_PointSize = a_PointSize;
        v_PointAlpha= a_PointAlpha*particleAlpha;
        v_PlusAlpha= a_PlusAlpha;

}   
