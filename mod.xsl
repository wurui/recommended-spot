<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.recommended-spot">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-recommended-spot" ox-mod="recommended-spot">
            <xsl:for-each select="data/recommended-spot/i">
	            <div class="item">
	            	<img src="//a.oxm1.cc/img/blank.png" style="background-image:url({img})"/>
	            	<h4 class="title">
	            		<xsl:value-of select="title"/>
	            		<xsl:if test="tag != '' "><span class="tag"><xsl:value-of select="tag"/></span></xsl:if>
	            	</h4>
	            	<p class="reason">
	            		推荐理由：<xsl:value-of select="reason"/>
	            	</p>
	            </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>
