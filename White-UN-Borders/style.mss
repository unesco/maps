@white: #F0F8FF; /* blue-tinted, for Antarctica */
@red: #ffd;
@orange: #ffd;
@yellow: #ffd;
@green: #ffd;
@turquoise: #ffd;
@blue: #ffd;
@purple: #ffd;
@pink: #ffd;
@grey: lightgrey;
@f00: #f00;

@water: #ddeeff;
@land: #ffffdd;
@line: #226688;

@textcolor: #444;
@citytextcolor: #666;
@texthalo: @land;

@futura_med: "Ubuntu Regular","DejaVu Sans Book";
@futura_italic: "Ubuntu Italic","DejaVu Sans Oblique";
@futura_bold: "Ubuntu Bold","DejaVu Sans Bold";

Map {
    background-color: @water;
    buffer-size: 256;
    font-directory: url(../fonts);
}

#land {
    polygon-fill: @land;
    polygon-gamma: 0.75;
}

#costal {
    line-color: @blue;
}

#water[zoom>2] {
    polygon-fill: @water;
    text-face-name: @futura_med;
    text-halo-fill: @texthalo;
    text-transform: capitalize;
    text-halo-radius: 1;
    text-size: 12;
    text-fill: @textcolor;
    text-wrap-width: 50;
    text-line-spacing: -2;
    text-min-distance: 5;
    text-name: "''";
    [zoom>4] { text-name: '[Name]'; } 
}

#boundary {
    line-color: @line;
    line-join: round;
    line-dasharray: 15, 10, 5, 5, 5, 10;
    text-face-name:@futura_med;
    text-fill:@line;
    text-placement:line;
    text-spacing:600;
    text-dy:-7;
    text-name:"''";
    [zoom<=1] {line-width: 0;}
    [zoom>1][zoom<=3] {line-width: 1;}
    [zoom>3] {line-width: 2;}
    /* -- Geographic lines -- */    
    [CARTOGRAPH='Dashed boundary line'] { 
        line-dasharray: 10, 10; 
        [BDY_CNT01='EGY'][BDY_CNT02='SDN']{ text-name:"'Administrative line'"; } 
        [BDY_CNT01='KEN'][BDY_CNT02='SSD']{ text-name:"'Administrative line'"; } 
        [BDY_CNT01='ETH'][BDY_CNT02='SOM']{ text-name:"'Provisionnal administrative line'"; } 
        [BDY_CNT01='ISR'][BDY_CNT02='PSE']{ text-name:"'Armistice Demarcation Line'"; } 
        [BDY_CNT01='ISR'][BDY_CNT02='XXX']{ text-name:"'Armistice Demarcation Line'"; } 
        [BDY_CNT01='KOR'][BDY_CNT02='PRK']{ text-name:"'Armistice Demarcation Line'"; } 
    }
    [CARTOGRAPH='Dotted boundary line'] { 
        line-dasharray: 2, 5; 
        [BDY_CNT01='XXX'][BDY_CNT02='XXX']{ text-name:"'Line of Control as promulgated in the 1972 SIMLA Agreement'"; } 
    }
    [CARTOGRAPH='Dotted boundary line (Abyei)'] { 
        line-dasharray: 2, 5; 
        [BDY_CNT01='XXX'][BDY_CNT02='XXX']{ text-name:"'Undeteremined area'"; } 
    }
    [CARTOGRAPH='Not represented'] { line-dasharray: 10, 10, 2.5, 10; }
    [CARTOGRAPH='Undetemined international dashed boundary line'] {
        line-dasharray: 10, 10;
        [BDY_CNT01='SDN'][BDY_CNT02='SSD']{ text-name:"'Undetermined boundary'"; } 
    }
    [BDY_CNT01='AZE'][BDY_CNT02='AZE']{ line-opacity: 0; }
}

/* ---- Countries ---- */
/* -- Colors -- */
#countries {
    polygon-opacity: 0.75;
    [Color_Code='AFG'] { polygon-fill:@red; }
    [Color_Code='AGO'] { polygon-fill:@yellow; }
    [Color_Code='ALB'] { polygon-fill:@purple; }
    [Color_Code='AND'] { polygon-fill:@purple; }
    [Color_Code='ARE'] { polygon-fill:@green; }
    [Color_Code='ARG'] { polygon-fill:@green; }
    [Color_Code='ARM'] { polygon-fill:@pink; }
    [Color_Code='ATA'] { polygon-fill:@white; }
    [Color_Code='ATG'] { polygon-fill:@pink; }
    [Color_Code='AUS'] { polygon-fill:@pink; }
    [Color_Code='AUT'] { polygon-fill:@turquoise; }
    [Color_Code='AZE'] { polygon-fill:@orange; }
    [Color_Code='BDI'] { polygon-fill:@yellow; }
    [Color_Code='BEL'] { polygon-fill:@turquoise; }
    [Color_Code='BEN'] { polygon-fill:@red; }
    [Color_Code='BFA'] { polygon-fill:@yellow; }
    [Color_Code='BGD'] { polygon-fill:@orange; }
    [Color_Code='BGR'] { polygon-fill:@yellow; }
    [Color_Code='BHR'] { polygon-fill:@turquoise; }
    [Color_Code='BHS'] { polygon-fill:@green; }
    [Color_Code='BIH'] { polygon-fill:@blue; }
    [Color_Code='BLR'] { polygon-fill:@red; }
    [Color_Code='BLZ'] { polygon-fill:@yellow; }
    [Color_Code='BOL'] { polygon-fill:@purple; }
    [Color_Code='BRA'] { polygon-fill:@yellow; }
    [Color_Code='BRB'] { polygon-fill:@turquoise; }
    [Color_Code='BRN'] { polygon-fill:@blue; }
    [Color_Code='BTN'] { polygon-fill:@pink; }
    [Color_Code='BWA'] { polygon-fill:@red; }
    [Color_Code='CAF'] { polygon-fill:@blue; }
    [Color_Code='CAN'] { polygon-fill:@pink; }
    [Color_Code='CHE'] { polygon-fill:@blue; }
    [Color_Code='CHL'] { polygon-fill:@orange; }
    [Color_Code='CHN'] { polygon-fill:@yellow; }
    [Color_Code='CIV'] { polygon-fill:@green; }
    [Color_Code='CMR'] { polygon-fill:@orange; }
    [Color_Code='COD'] { polygon-fill:@purple; }
    [Color_Code='COG'] { polygon-fill:@pink; }
    [Color_Code='COL'] { polygon-fill:@red; }
    [Color_Code='COM'] { polygon-fill:@blue; }
    [Color_Code='CPV'] { polygon-fill:@blue; }
    [Color_Code='CRI'] { polygon-fill:@yellow; }
    [Color_Code='CUB'] { polygon-fill:@blue; }
    [Color_Code='CYP'] { polygon-fill:@purple; }
    [Color_Code='CZE'] { polygon-fill:@pink; }
    [Color_Code='DEU'] { polygon-fill:@orange; }
    [Color_Code='DJI'] { polygon-fill:@orange; }
    [Color_Code='DMA'] { polygon-fill:@green; }
    [Color_Code='DNK'] { polygon-fill:@red; }
    [Color_Code='DOM'] { polygon-fill:@red; }
    [Color_Code='DZA'] { polygon-fill:@turquoise; }
    [Color_Code='ECU'] { polygon-fill:@blue; }
    [Color_Code='EGY'] { polygon-fill:@purple; }
    [Color_Code='ERI'] { polygon-fill:@red; }
    [Color_Code='EST'] { polygon-fill:@turquoise; }
    [Color_Code='ETH'] { polygon-fill:@green; }
    [Color_Code='FIN'] { polygon-fill:@red; }
    [Color_Code='FJI'] { polygon-fill:@purple; }
    [Color_Code='FRA'] { polygon-fill:@red; }
    [Color_Code='FSM'] { polygon-fill:@blue; }
    [Color_Code='GAB'] { polygon-fill:@green; }
    [Color_Code='GBR'] { polygon-fill:@blue; }
    [Color_Code='GEO'] { polygon-fill:@blue; }
    [Color_Code='GHA'] { polygon-fill:@pink; }
    [Color_Code='GIN'] { polygon-fill:@pink; }
    [Color_Code='GMB'] { polygon-fill:@turquoise; }
    [Color_Code='GNB'] { polygon-fill:@red; }
    [Color_Code='GNQ'] { polygon-fill:@red; }
    [Color_Code='GRC'] { polygon-fill:@red; }
    [Color_Code='GRD'] { polygon-fill:@green; }
    [Color_Code='GUY'] { polygon-fill:@orange; }
    [Color_Code='HMD'] { polygon-fill:@green; }
    [Color_Code='HND'] { polygon-fill:@turquoise; }
    [Color_Code='HRV'] { polygon-fill:@yellow; }
    [Color_Code='HTI'] { polygon-fill:@pink; }
    [Color_Code='HUN'] { polygon-fill:@orange; }
    [Color_Code='IDN'] { polygon-fill:@yellow; }
    [Color_Code='IRL'] { polygon-fill:@green; }
    [Color_Code='IRN'] { polygon-fill:@yellow; }
    [Color_Code='IRQ'] { polygon-fill:@green; }
    [Color_Code='ISL'] { polygon-fill:@pink; }
    [Color_Code='ISR'] { polygon-fill:@yellow; }
    [Color_Code='ITA'] { polygon-fill:@green; }
    [Color_Code='JAM'] { polygon-fill:@orange; }
    [Color_Code='JOR'] { polygon-fill:@pink; }
    [Color_Code='JPN'] { polygon-fill:@red; }
    [Color_Code='KAZ'] { polygon-fill:@purple; }
    [Color_Code='KEN'] { polygon-fill:@blue; }
    [Color_Code='KGZ'] { polygon-fill:@turquoise; }
    [Color_Code='KHM'] { polygon-fill:@pink; }
    [Color_Code='KIR'] { polygon-fill:@red; }
    [Color_Code='KNA'] { polygon-fill:@yellow; }
    [Color_Code='KWT'] { polygon-fill:@purple; }
    [Color_Code='LAO'] { polygon-fill:@purple; }
    [Color_Code='LBN'] { polygon-fill:@orange; }
    [Color_Code='LBR'] { polygon-fill:@yellow; }
    [Color_Code='LBY'] { polygon-fill:@orange; }
    [Color_Code='LCA'] { polygon-fill:@yellow; }
    [Color_Code='LIE'] { polygon-fill:@turquoise; }
    [Color_Code='LKA'] { polygon-fill:@red; }
    [Color_Code='LSO'] { polygon-fill:@orange; }
    [Color_Code='LTU'] { polygon-fill:@blue; }
    [Color_Code='LUX'] { polygon-fill:@green; }
    [Color_Code='LVA'] { polygon-fill:@pink; }
    [Color_Code='MAR'] { polygon-fill:@blue; }
    [Color_Code='MCO'] { polygon-fill:@blue; }
    [Color_Code='MDA'] { polygon-fill:@turquoise; }
    [Color_Code='MDG'] { polygon-fill:@orange; }
    [Color_Code='MDV'] { polygon-fill:@blue; }
    [Color_Code='MEX'] { polygon-fill:@green; }
    [Color_Code='MHL'] { polygon-fill:@red; }
    [Color_Code='MKD'] { polygon-fill:@orange; }
    [Color_Code='MLI'] { polygon-fill:@purple; }
    [Color_Code='MLT'] { polygon-fill:@pink; }
    [Color_Code='MMR'] { polygon-fill:@red; }
    [Color_Code='MNE'] { polygon-fill:@pink; }
    [Color_Code='MNG'] { polygon-fill:@orange; }
    [Color_Code='MOZ'] { polygon-fill:@pink; }
    [Color_Code='MRT'] { polygon-fill:@orange; }
    [Color_Code='MUS'] { polygon-fill:@yellow; }
    [Color_Code='MWI'] { polygon-fill:@red; }
    [Color_Code='MYS'] { polygon-fill:@purple; }
    [Color_Code='NAM'] { polygon-fill:@green; }
    [Color_Code='NER'] { polygon-fill:@green; }
    [Color_Code='NGA'] { polygon-fill:@turquoise; }
    [Color_Code='NIC'] { polygon-fill:@blue; }
    [Color_Code='NLD'] { polygon-fill:@purple; }
    [Color_Code='NOR'] { polygon-fill:@yellow; }
    [Color_Code='NPL'] { polygon-fill:@blue; }
    [Color_Code='NRU'] { polygon-fill:@turquoise; }
    [Color_Code='NZL'] { polygon-fill:@orange; }
    [Color_Code='OMN'] { polygon-fill:@red; }
    [Color_Code='PAK'] { polygon-fill:@purple; }
    [Color_Code='PAN'] { polygon-fill:@purple; }
    [Color_Code='PER'] { polygon-fill:@pink; }
    [Color_Code='PHL'] { polygon-fill:@green; }
    [Color_Code='PLW'] { polygon-fill:@yellow; }
    [Color_Code='PNG'] { polygon-fill:@blue; }
    [Color_Code='POL'] { polygon-fill:@yellow; }
    [Color_Code='PRK'] { polygon-fill:@purple; }
    [Color_Code='PRT'] { polygon-fill:@green; }
    [Color_Code='PRY'] { polygon-fill:@blue; }
    [Color_Code='QAT'] { polygon-fill:@blue; }
    [Color_Code='ROU'] { polygon-fill:@purple; }
    [Color_Code='RUS'] { polygon-fill:@green; }
    [Color_Code='RWA'] { polygon-fill:@red; }
    [Color_Code='SAU'] { polygon-fill:@orange; }
    [Color_Code='SDN'] { polygon-fill:@yellow; }
    [Color_Code='SEN'] { polygon-fill:@green; }
    [Color_Code='SGP'] { polygon-fill:@pink; }
    [Color_Code='SLB'] { polygon-fill:@turquoise; }
    [Color_Code='SLE'] { polygon-fill:@blue; }
    [Color_Code='SLV'] { polygon-fill:@pink; }
    [Color_Code='SMR'] { polygon-fill:@red; }
    [Color_Code='SOM'] { polygon-fill:@pink; }
    [Color_Code='SRB'] { polygon-fill:@turquoise; }
    [Color_Code='SSD'] { polygon-fill:@turquoise; }
    [Color_Code='STP'] { polygon-fill:@orange; }
    [Color_Code='SUR'] { polygon-fill:@green; }
    [Color_Code='SVK'] { polygon-fill:@red; }
    [Color_Code='SVN'] { polygon-fill:@purple; }
    [Color_Code='SWE'] { polygon-fill:@purple; }
    [Color_Code='SWZ'] { polygon-fill:@turquoise; }
    [Color_Code='SYC'] { polygon-fill:@blue; }
    [Color_Code='SYR'] { polygon-fill:@red; }
    [Color_Code='TCD'] { polygon-fill:@red; }
    [Color_Code='TGO'] { polygon-fill:@purple; }
    [Color_Code='THA'] { polygon-fill:@turquoise; }
    [Color_Code='TJK'] { polygon-fill:@pink; }
    [Color_Code='TKM'] { polygon-fill:@blue; }
    [Color_Code='TLS'] { polygon-fill:@blue; }
    [Color_Code='TON'] { polygon-fill:@red; }
    [Color_Code='TTO'] { polygon-fill:@orange; }
    [Color_Code='TUN'] { polygon-fill:@yellow; }
    [Color_Code='TUR'] { polygon-fill:@turquoise; }
    [Color_Code='TUV'] { polygon-fill:@pink; }
    [Color_Code='TZA'] { polygon-fill:@green; }
    [Color_Code='UGA'] { polygon-fill:@orange; }
    [Color_Code='UKR'] { polygon-fill:@pink; }
    [Color_Code='URY'] { polygon-fill:@red; }
    [Color_Code='USA'] { polygon-fill:@yellow; }
    [Color_Code='UZB'] { polygon-fill:@orange; }
    [Color_Code='VAT'] { polygon-fill:@green; }
    [Color_Code='VCT'] { polygon-fill:@purple; }
    [Color_Code='VEN'] { polygon-fill:@turquoise; }
    [Color_Code='VNM'] { polygon-fill:@blue; }
    [Color_Code='VUT'] { polygon-fill:@yellow; }
    [Color_Code='WSM'] { polygon-fill:@pink; }
    [Color_Code='YEM'] { polygon-fill:@blue; }
    [Color_Code='ZAF'] { polygon-fill:@purple; }
    [Color_Code='ZMB'] { polygon-fill:@orange; }
    [Color_Code='ZWE'] { polygon-fill:@blue; }
    /* -- special colors -- */
    [Color_Code='XXX'] { 
        polygon-fill:#ffffff;
        [Terr_Name='Jammu and Kashmir'] {polygon-fill:@grey;}
        [Terr_Name='Aksai Chin'] {}
        [STATUS='Occupied Palestinan Territory'] {polygon-fill:@blue;}
    }
}

/* -- labels -- */
#labels[zoom>1]{
    text-name: '[Terr_Name]';
    text-face-name: @futura_italic;
    text-transform: capitalize;
    text-placement-type: simple;
    text-placements: "S,N,E,W";
    text-vertical-alignment:bottom;
    text-size:9;
    text-line-spacing:1;
    text-fill:@line * 0.6;
    text-halo-fill:rgba(255,255,255,0.5);
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-placement: point;
    [zoom=5] {
        text-size:9;
        text-wrap-width: 35;
    }
    [zoom=6] {
        text-size:10;
        text-wrap-width: 40;
    }
    [zoom=7] {
        text-size:11;
        text-wrap-width: 50;
    }
    [zoom>8] {
        text-halo-radius: 2;
    }
    [zoom=8] {
        text-size:11;
        text-wrap-width: 50;
        text-line-spacing: 1;
    }
    [zoom=9] {
        text-size:12;
        text-character-spacing: 1;
        text-wrap-width: 80;
        text-line-spacing: 2;
    }
    [STATUS='Member State']{ 
        text-transform: uppercase; 
        text-face-name: @futura_bold;
        [Terr_Name='Israel'] { text-dy: 5; }
        [Terr_Name='Spain'] { text-dy: -20; }
        [zoom=3] {
            text-size:10;
            text-wrap-width: 40;
        }
        [zoom>=4] {
            text-size: 11;
            text-wrap-width: 50;
        }
        [zoom>=5] {
            text-halo-radius: 2;
            text-wrap-width: 50;
            text-line-spacing: 1;
        }
        [zoom>=6] {
            text-size: 13;
            text-character-spacing: 1;
            text-wrap-width: 80;
            text-line-spacing: 2;
        }
        [zoom>=7] {
            text-size: 14;
            text-character-spacing: 2;
            [Terr_Name='Israel'] { text-dy: 30; }
        }
    }
    /* -- special names -- */
    [Terr_Name='Netherlands Antilles'] { text-name: "'Curaçao'"; }
    [Terr_Name='West Bank'] { 
        text-name: "'Palestine'";
        text-transform: uppercase; 
        text-face-name: @futura_bold;
        [zoom=3] {
            text-size:10;
            text-wrap-width: 40;
        }
        [zoom>=4] {
            text-size: 11;
            text-wrap-width: 50;
        }
        [zoom>=5] {
            text-halo-radius: 2;
            text-wrap-width: 50;
            text-line-spacing: 1;
        }
        [zoom>=6] {
            text-size: 13;
            text-character-spacing: 1;
            text-wrap-width: 80;
            text-line-spacing: 2;
        }
        [zoom>=7] {
            text-size: 14;
            text-character-spacing: 2;
        }
    }
    [STATUS='Occupied Palestinian Territory'] { text-name: "''"; }
}

/* ---- CITIES ---- */
#cities[is_capital='country'][zoom>2],
#cities[zoom>7]{
    shield-file: url(../icons/circle-7.png);
    shield-name:'[name:en]';
    shield-size: 9;
    shield-face-name: @futura_italic;
    shield-halo-radius: 1;
    shield-wrap-width: 50;
    shield-fill: @line * 0.6;
    shield-halo-fill: rgba(255,255,255,0.5);
    shield-placement-type: simple;
    shield-placements: 'SW,NW,SE,NE';
    shield-text-dy: 3;
    shield-text-dx: 3;
    shield-unlock-image: true;
    shield-min-distance: 10;
    [is_capital='country'] {
        shield-file: url(../icons/star-10.png);
        shield-face-name: @futura_med;
        shield-fill: @line * 0.8;
        shield-halo-fill: rgba(255,255,255,0.5);
    }
    [zoom=3] {
        shield-size:10;
        shield-wrap-width: 40;
        [is_capital='country'] {
            shield-size:11;
        }
    }
    [zoom>=4] {
        shield-size: 10;
        shield-wrap-width: 50;
        [is_capital='country'] {
            shield-size:11;
        }
    }
    [zoom>=5] {
        shield-halo-radius: 2;
        shield-wrap-width: 50;
        shield-line-spacing: 1;
        [is_capital='country'] {
            shield-size:11;
        }
    }
    [zoom>=6] {
        shield-size: 12;
        shield-character-spacing: 1;
        shield-wrap-width: 80;
        shield-line-spacing: 2;
        [is_capital='country'] {
            shield-size:13;
        }
    }
    [zoom>=7] {
        shield-size: 12;
        shield-character-spacing: 2;
        [is_capital='country'] {
            shield-size:14;
        }
    }
}
