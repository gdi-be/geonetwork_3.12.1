<stylesheet version="1.0" xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:gmd="http://www.isotc211.org/2005/gmd"
            xmlns:srv="http://www.isotc211.org/2005/srv"
            xmlns:gco="http://www.isotc211.org/2005/gco">

  <output method="xml"/>

  <template match="gmd:MD_DigitalTransferOptions">
    <choose>
      <when test="//srv:serviceTypeVersion/gco:CharacterString = 'predefined ATOM'">
        <gmd:MD_DigitalTransferOptions>
          <copy-of select="gmd:onLine[1]"/>
          <gmd:onLine>
            <gmd:CI_OnlineResource>
              <gmd:linkage>
                <gmd:URL><value-of select="gmd:onLine[1]/gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/>/0</gmd:URL>
              </gmd:linkage>
              <gmd:description>
                <gco:CharacterString>Service Feed Aufruf des Atoms mit maschinenlesbarer Antwort</gco:CharacterString>
              </gmd:description>
              <gmd:protocol>
                <gco:CharacterString>INSPIRE Atom</gco:CharacterString>
              </gmd:protocol>
              <gmd:name>
                <gco:CharacterString><value-of select="//gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString"/> - Atom Download-Dienst</gco:CharacterString>
              </gmd:name>
              <gmd:function>
                <gmd:CI_OnLineFunctionCode
                  codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#CI_OnLineFunctionCode"
                  codeListValue="information"/>
              </gmd:function>
            </gmd:CI_OnlineResource>
          </gmd:onLine>
          <copy-of select="gmd:onLine[2]"/>
        </gmd:MD_DigitalTransferOptions>
      </when>
      <otherwise>
        <copy-of select="." />
      </otherwise>
    </choose>
  </template>

  <template match="@* | node()">
    <copy>
      <apply-templates select="@* | node()"/>
    </copy>
  </template>

</stylesheet>
