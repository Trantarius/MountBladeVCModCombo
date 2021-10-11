
varying float Fog;	
varying float4 Color;
varying float2 Tex0;
varying float4 SunLight;
varying float4 ShadowTexCoord;
#ifdef USE_ShadowTexelPos_INTERPOLATOR
varying float2 ShadowTexelPos;
#endif

void main()
{
	VS_OUTPUT_FLORA_SEASON VSOut;
	VSOut.Fog = Fog;
	VSOut.Color = Color;
	VSOut.Tex0 = Tex0;
	VSOut.SunLight = SunLight;
	VSOut.ShadowTexCoord = ShadowTexCoord;
	#ifdef USE_ShadowTexelPos_INTERPOLATOR
		VSOut.ShadowTexelPos = ShadowTexelPos;
	#endif

	gl_FragColor = ps_flora_season(VSOut, CURRENT_PCF_MODE).RGBColor;
}
