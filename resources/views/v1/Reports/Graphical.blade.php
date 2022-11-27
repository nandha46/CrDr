@include('v1.Includes.Header')
@include('v1.Includes.Leftmenu')

<div class='page-wrapper'>
	@include('v1.Includes.TopMenu')

	<div class='page-content'>
		<div class='container-fluid'>

			@include('v1.Includes.PageTitleBox')

            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Report 1</h4>
                        </div>
                        <!--end card-header-->
                        <div class="card-body">
                            <div class="chart-demo" style="position: relative;">
                                <div id="apex_bar" class="apex-charts" style="min-height: 395px;">
                                    <div id="apexchartsddovbv4g" class="apexcharts-canvas apexchartsddovbv4g apexcharts-theme-light" style="width: 540px; height: 380px;">
                                        <svg id="SvgjsSvg1582" width="540" height="380" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <g id="SvgjsG1584" class="apexcharts-inner apexcharts-graphical" transform="translate(106.671875, 30)">
                                                <defs id="SvgjsDefs1583">
                                                    <linearGradient id="SvgjsLinearGradient1588" x1="0" y1="0" x2="0" y2="1">
                                                        <stop id="SvgjsStop1589" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop>
                                                        <stop id="SvgjsStop1590" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop>
                                                        <stop id="SvgjsStop1591" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop>
                                                    </linearGradient>
                                                    <clipPath id="gridRectMaskddovbv4g">
                                                        <rect id="SvgjsRect1593" width="412.77734375" height="312.348" x="-2" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="gridRectMarkerMaskddovbv4g">
                                                        <rect id="SvgjsRect1594" width="412.77734375" height="316.348" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                </defs>
                                                <rect id="SvgjsRect1592" width="0" height="312.348" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient1588)" class="apexcharts-xcrosshairs" y2="312.348" filter="none" fill-opacity="0.9"></rect>
                                                <g id="SvgjsG1630" class="apexcharts-yaxis apexcharts-xaxis-inversed" rel="0">
                                                    <g id="SvgjsG1631" class="apexcharts-yaxis-texts-g apexcharts-xaxis-inversed-texts-g" transform="translate(0, 0)">
                                                        <text id="SvgjsText1632" font-family="Helvetica, Arial, sans-serif" x="-15" y="17.037163636363637" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1633">South Korea</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1634" font-family="Helvetica, Arial, sans-serif" x="-15" y="48.27196363636364" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1635">Canada</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1636" font-family="Helvetica, Arial, sans-serif" x="-15" y="79.50676363636364" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1637">United Kingdom</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1638" font-family="Helvetica, Arial, sans-serif" x="-15" y="110.74156363636365" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1639">Netherlands</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1640" font-family="Helvetica, Arial, sans-serif" x="-15" y="141.97636363636366" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1641">Italy</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1642" font-family="Helvetica, Arial, sans-serif" x="-15" y="173.21116363636366" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1643">France</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1644" font-family="Helvetica, Arial, sans-serif" x="-15" y="204.44596363636367" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1645">Japan</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1646" font-family="Helvetica, Arial, sans-serif" x="-15" y="235.68076363636368" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1647">United States</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1648" font-family="Helvetica, Arial, sans-serif" x="-15" y="266.9155636363637" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1649">China</tspan>
                                                            <title></title>
                                                        </text>
                                                        <text id="SvgjsText1650" font-family="Helvetica, Arial, sans-serif" x="-15" y="298.1503636363637" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1651">Germany</tspan>
                                                            <title></title>
                                                        </text>
                                                    </g>
                                                    <line id="SvgjsLine1652" x1="0" y1="1" x2="0" y2="312.348" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1653" x1="-6" y1="312.348" x2="0" y2="312.348" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1654" x1="-6" y1="281.1132" x2="0" y2="281.1132" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1655" x1="-6" y1="249.8784" x2="0" y2="249.8784" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1656" x1="-6" y1="218.6436" x2="0" y2="218.6436" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1657" x1="-6" y1="187.40879999999999" x2="0" y2="187.40879999999999" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1658" x1="-6" y1="156.174" x2="0" y2="156.174" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1659" x1="-6" y1="124.9392" x2="0" y2="124.9392" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1660" x1="-6" y1="93.70439999999999" x2="0" y2="93.70439999999999" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1661" x1="-6" y1="62.4696" x2="0" y2="62.4696" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1662" x1="-6" y1="31.2348" x2="0" y2="31.2348" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1663" x1="-6" y1="0" x2="0" y2="0" stroke="#bec7e0" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1609" class="apexcharts-xaxis apexcharts-yaxis-inversed">
                                                    <g id="SvgjsG1610" class="apexcharts-xaxis-texts-g" transform="translate(0, -8)">
                                                        <text id="SvgjsText1611" font-family="Helvetica, Arial, sans-serif" x="408.77734375" y="342.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1613">1500</tspan>
                                                            <title>1500</title>
                                                        </text>
                                                        <text id="SvgjsText1614" font-family="Helvetica, Arial, sans-serif" x="326.921875" y="342.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1616">1200</tspan>
                                                            <title>1200</title>
                                                        </text>
                                                        <text id="SvgjsText1617" font-family="Helvetica, Arial, sans-serif" x="245.06640625" y="342.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1619">900</tspan>
                                                            <title>900</title>
                                                        </text>
                                                        <text id="SvgjsText1620" font-family="Helvetica, Arial, sans-serif" x="163.2109375" y="342.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1622">600</tspan>
                                                            <title>600</title>
                                                        </text>
                                                        <text id="SvgjsText1623" font-family="Helvetica, Arial, sans-serif" x="81.35546875" y="342.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1625">300</tspan>
                                                            <title>300</title>
                                                        </text>
                                                        <text id="SvgjsText1626" font-family="Helvetica, Arial, sans-serif" x="-0.5" y="342.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1628">0</tspan>
                                                            <title>0</title>
                                                        </text>
                                                    </g>
                                                    <line id="SvgjsLine1629" x1="0" y1="312.348" x2="408.77734375" y2="312.348" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1"></line>
                                                </g>
                                                <g id="SvgjsG1664" class="apexcharts-grid">
                                                    <g id="SvgjsG1665" class="apexcharts-gridlines-horizontal">
                                                        <line id="SvgjsLine1673" x1="0" y1="0" x2="408.77734375" y2="0" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1674" x1="0" y1="31.2348" x2="408.77734375" y2="31.2348" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1675" x1="0" y1="62.4696" x2="408.77734375" y2="62.4696" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1676" x1="0" y1="93.70439999999999" x2="408.77734375" y2="93.70439999999999" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1677" x1="0" y1="124.9392" x2="408.77734375" y2="124.9392" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1678" x1="0" y1="156.174" x2="408.77734375" y2="156.174" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1679" x1="0" y1="187.4088" x2="408.77734375" y2="187.4088" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1680" x1="0" y1="218.64360000000002" x2="408.77734375" y2="218.64360000000002" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1681" x1="0" y1="249.87840000000003" x2="408.77734375" y2="249.87840000000003" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1682" x1="0" y1="281.1132" x2="408.77734375" y2="281.1132" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1683" x1="0" y1="312.348" x2="408.77734375" y2="312.348" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1666" class="apexcharts-gridlines-vertical"></g>
                                                    <line id="SvgjsLine1667" x1="0" y1="313.348" x2="0" y2="319.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1668" x1="82.05546875" y1="313.348" x2="82.05546875" y2="319.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1669" x1="164.11093750000003" y1="313.348" x2="164.11093750000003" y2="319.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1670" x1="246.16640625000005" y1="313.348" x2="246.16640625000005" y2="319.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1671" x1="328.22187500000007" y1="313.348" x2="328.22187500000007" y2="319.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1672" x1="410.27734375000006" y1="313.348" x2="410.27734375000006" y2="319.348" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1685" x1="0" y1="312.348" x2="408.77734375" y2="312.348" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1684" x1="0" y1="1" x2="0" y2="312.348" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1596" class="apexcharts-bar-series apexcharts-plot-series">
                                                    <g id="SvgjsG1597" class="apexcharts-series" rel="1" seriesName="seriesx1" data:realIndex="0">
                                                        <path id="SvgjsPath1599" d="M0.1 4.685219999999999L109.10729166666665 4.685219999999999L109.10729166666665 26.54958L109.10729166666665 26.54958L0.1 26.54958L0.1 26.54958C0.1 26.54958 0.1 4.685219999999999 0.1 4.685219999999999 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 4.685219999999999L 109.10729166666665 4.685219999999999L 109.10729166666665 26.54958L 109.10729166666665 26.54958L 0.1 26.54958L 0.1 26.54958z" pathFrom="M 0.1 4.685219999999999L 0.1 4.685219999999999L 0.1 26.54958L 0.1 26.54958L 0.1 26.54958L 0.1 4.685219999999999" cy="35.92002" cx="109.10729166666665" j="0" val="400" barHeight="21.86436" barWidth="109.00729166666666"></path>
                                                        <path id="SvgjsPath1600" d="M0.1 35.92002L117.28283854166666 35.92002L117.28283854166666 57.78438L117.28283854166666 57.78438L0.1 57.78438L0.1 57.78438C0.1 57.78438 0.1 35.92002 0.1 35.92002 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 35.92002L 117.28283854166666 35.92002L 117.28283854166666 57.78438L 117.28283854166666 57.78438L 0.1 57.78438L 0.1 57.78438z" pathFrom="M 0.1 35.92002L 0.1 35.92002L 0.1 57.78438L 0.1 57.78438L 0.1 57.78438L 0.1 35.92002" cy="67.15482" cx="117.28283854166666" j="1" val="430" barHeight="21.86436" barWidth="117.18283854166667"></path>
                                                        <path id="SvgjsPath1601" d="M0.1 67.15482L122.18816666666666 67.15482L122.18816666666666 89.01918L122.18816666666666 89.01918L0.1 89.01918L0.1 89.01918C0.1 89.01918 0.1 67.15482 0.1 67.15482 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 67.15482L 122.18816666666666 67.15482L 122.18816666666666 89.01918L 122.18816666666666 89.01918L 0.1 89.01918L 0.1 89.01918z" pathFrom="M 0.1 67.15482L 0.1 67.15482L 0.1 89.01918L 0.1 89.01918L 0.1 89.01918L 0.1 67.15482" cy="98.38962000000001" cx="122.18816666666666" j="2" val="448" barHeight="21.86436" barWidth="122.08816666666667"></path>
                                                        <path id="SvgjsPath1602" d="M0.1 98.38962000000001L128.18356770833333 98.38962000000001L128.18356770833333 120.25398000000001L128.18356770833333 120.25398000000001L0.1 120.25398000000001L0.1 120.25398000000001C0.1 120.25398000000001 0.1 98.38962000000001 0.1 98.38962000000001 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 98.38962000000001L 128.18356770833333 98.38962000000001L 128.18356770833333 120.25398000000001L 128.18356770833333 120.25398000000001L 0.1 120.25398000000001L 0.1 120.25398000000001z" pathFrom="M 0.1 98.38962000000001L 0.1 98.38962000000001L 0.1 120.25398000000001L 0.1 120.25398000000001L 0.1 120.25398000000001L 0.1 98.38962000000001" cy="129.62442000000001" cx="128.18356770833333" j="3" val="470" barHeight="21.86436" barWidth="128.08356770833333"></path>
                                                        <path id="SvgjsPath1603" d="M0.1 129.62442000000001L147.25984375 129.62442000000001L147.25984375 151.48878000000002L147.25984375 151.48878000000002L0.1 151.48878000000002L0.1 151.48878000000002C0.1 151.48878000000002 0.1 129.62442000000001 0.1 129.62442000000001 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 129.62442000000001L 147.25984375 129.62442000000001L 147.25984375 151.48878000000002L 147.25984375 151.48878000000002L 0.1 151.48878000000002L 0.1 151.48878000000002z" pathFrom="M 0.1 129.62442000000001L 0.1 129.62442000000001L 0.1 151.48878000000002L 0.1 151.48878000000002L 0.1 151.48878000000002L 0.1 129.62442000000001" cy="160.85922000000002" cx="147.25984375" j="4" val="540" barHeight="21.86436" barWidth="147.15984375"></path>
                                                        <path id="SvgjsPath1604" d="M0.1 160.85922000000002L158.16057291666667 160.85922000000002L158.16057291666667 182.72358000000003L158.16057291666667 182.72358000000003L0.1 182.72358000000003L0.1 182.72358000000003C0.1 182.72358000000003 0.1 160.85922000000002 0.1 160.85922000000002 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 160.85922000000002L 158.16057291666667 160.85922000000002L 158.16057291666667 182.72358000000003L 158.16057291666667 182.72358000000003L 0.1 182.72358000000003L 0.1 182.72358000000003z" pathFrom="M 0.1 160.85922000000002L 0.1 160.85922000000002L 0.1 182.72358000000003L 0.1 182.72358000000003L 0.1 182.72358000000003L 0.1 160.85922000000002" cy="192.09402000000003" cx="158.16057291666667" j="5" val="580" barHeight="21.86436" barWidth="158.06057291666667"></path>
                                                        <path id="SvgjsPath1605" d="M0.1 192.09402000000003L188.13757812499998 192.09402000000003L188.13757812499998 213.95838000000003L188.13757812499998 213.95838000000003L0.1 213.95838000000003L0.1 213.95838000000003C0.1 213.95838000000003 0.1 192.09402000000003 0.1 192.09402000000003 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 192.09402000000003L 188.13757812499998 192.09402000000003L 188.13757812499998 213.95838000000003L 188.13757812499998 213.95838000000003L 0.1 213.95838000000003L 0.1 213.95838000000003z" pathFrom="M 0.1 192.09402000000003L 0.1 192.09402000000003L 0.1 213.95838000000003L 0.1 213.95838000000003L 0.1 213.95838000000003L 0.1 192.09402000000003" cy="223.32882000000004" cx="188.13757812499998" j="6" val="690" barHeight="21.86436" barWidth="188.03757812499998"></path>
                                                        <path id="SvgjsPath1606" d="M0.1 223.32882000000004L299.87005208333335 223.32882000000004L299.87005208333335 245.19318000000004L299.87005208333335 245.19318000000004L0.1 245.19318000000004L0.1 245.19318000000004C0.1 245.19318000000004 0.1 223.32882000000004 0.1 223.32882000000004 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 223.32882000000004L 299.87005208333335 223.32882000000004L 299.87005208333335 245.19318000000004L 299.87005208333335 245.19318000000004L 0.1 245.19318000000004L 0.1 245.19318000000004z" pathFrom="M 0.1 223.32882000000004L 0.1 223.32882000000004L 0.1 245.19318000000004L 0.1 245.19318000000004L 0.1 245.19318000000004L 0.1 223.32882000000004" cy="254.56362000000004" cx="299.87005208333335" j="7" val="1100" barHeight="21.86436" barWidth="299.7700520833333"></path>
                                                        <path id="SvgjsPath1607" d="M0.1 254.56362000000004L327.121875 254.56362000000004L327.121875 276.42798000000005L327.121875 276.42798000000005L0.1 276.42798000000005L0.1 276.42798000000005C0.1 276.42798000000005 0.1 254.56362000000004 0.1 254.56362000000004 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 254.56362000000004L 327.121875 254.56362000000004L 327.121875 276.42798000000005L 327.121875 276.42798000000005L 0.1 276.42798000000005L 0.1 276.42798000000005z" pathFrom="M 0.1 254.56362000000004L 0.1 254.56362000000004L 0.1 276.42798000000005L 0.1 276.42798000000005L 0.1 276.42798000000005L 0.1 254.56362000000004" cy="285.79842" cx="327.121875" j="8" val="1200" barHeight="21.86436" barWidth="327.02187499999997"></path>
                                                        <path id="SvgjsPath1608" d="M0.1 285.79842L376.17515625 285.79842L376.17515625 307.66278L376.17515625 307.66278L0.1 307.66278L0.1 307.66278C0.1 307.66278 0.1 285.79842 0.1 285.79842 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="square" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskddovbv4g)" pathTo="M 0.1 285.79842L 376.17515625 285.79842L 376.17515625 307.66278L 376.17515625 307.66278L 0.1 307.66278L 0.1 307.66278z" pathFrom="M 0.1 285.79842L 0.1 285.79842L 0.1 307.66278L 0.1 307.66278L 0.1 307.66278L 0.1 285.79842" cy="317.03322000000003" cx="376.17515625" j="9" val="1380" barHeight="21.86436" barWidth="376.07515624999996"></path>
                                                    </g>
                                                    <g id="SvgjsG1598" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                </g>
                                                <line id="SvgjsLine1686" x1="0" y1="0" x2="408.77734375" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1687" x1="0" y1="0" x2="408.77734375" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1688" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1689" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1690" class="apexcharts-point-annotations"></g>
                                            </g>
                                            <g id="SvgjsG1585" class="apexcharts-annotations"></g>
                                        </svg>
                                        <div class="apexcharts-legend"></div>
                                        <div class="apexcharts-tooltip apexcharts-theme-light">
                                            <div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div>
                                            <div class="apexcharts-tooltip-series-group">
                                                <span class="apexcharts-tooltip-marker" style="background-color: rgb(42, 118, 244);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 541px; height: 371px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                        </div>
                        <!--end card-body-->
                    </div>
                    <!--end card-->
                </div>
                <!--end col-->
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Report 2</h4>
                        </div>
                        <!--end card-header-->
                        <div class="card-body">
                            <div class="chart-demo" style="position: relative;">
                                <div id="apex_mixed" class="apex-charts" style="min-height: 395px;">
                                    <div id="apexchartss2et35wpg" class="apexcharts-canvas apexchartss2et35wpg apexcharts-theme-light apexcharts-zoomable" style="width: 540px; height: 380px;">
                                        <svg id="SvgjsSvg1691" width="540" height="380" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;">
                                            <foreignObject x="0" y="0" width="540" height="380">
                                                <div class="apexcharts-legend apexcharts-align-center position-bottom" xmlns="http://www.w3.org/1999/xhtml" style="inset: auto 0px -1px; position: absolute;">
                                                    <div class="apexcharts-legend-series" rel="1" data:collapsed="false" style="margin: 0px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgba(42, 118, 244, 0.18); color: rgba(42, 118, 244, 0.18); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Income" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Income</span></div>
                                                    <div class="apexcharts-legend-series" rel="2" data:collapsed="false" style="margin: 0px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(42, 118, 244); color: rgb(42, 118, 244); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Cashflow" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Cashflow</span></div>
                                                    <div class="apexcharts-legend-series" rel="3" data:collapsed="false" style="margin: 0px 5px;"><span class="apexcharts-legend-marker" rel="3" data:collapsed="false" style="background: rgba(251, 182, 36, 0.6); color: rgba(251, 182, 36, 0.6); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="3" i="2" data:default-text="Revenue" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Revenue</span></div>
                                                </div>
                                                <style type="text/css">	
                                                    .apexcharts-legend {	
                                                    display: flex;	
                                                    overflow: auto;	
                                                    padding: 0 10px;	
                                                    }	
                                                    .apexcharts-legend.position-bottom, .apexcharts-legend.position-top {	
                                                    flex-wrap: wrap	
                                                    }	
                                                    .apexcharts-legend.position-right, .apexcharts-legend.position-left {	
                                                    flex-direction: column;	
                                                    bottom: 0;	
                                                    }	
                                                    .apexcharts-legend.position-bottom.apexcharts-align-left, .apexcharts-legend.position-top.apexcharts-align-left, .apexcharts-legend.position-right, .apexcharts-legend.position-left {	
                                                    justify-content: flex-start;	
                                                    }	
                                                    .apexcharts-legend.position-bottom.apexcharts-align-center, .apexcharts-legend.position-top.apexcharts-align-center {	
                                                    justify-content: center;  	
                                                    }	
                                                    .apexcharts-legend.position-bottom.apexcharts-align-right, .apexcharts-legend.position-top.apexcharts-align-right {	
                                                    justify-content: flex-end;	
                                                    }	
                                                    .apexcharts-legend-series {	
                                                    cursor: pointer;	
                                                    line-height: normal;	
                                                    }	
                                                    .apexcharts-legend.position-bottom .apexcharts-legend-series, .apexcharts-legend.position-top .apexcharts-legend-series{	
                                                    display: flex;	
                                                    align-items: center;	
                                                    }	
                                                    .apexcharts-legend-text {	
                                                    position: relative;	
                                                    font-size: 14px;	
                                                    }	
                                                    .apexcharts-legend-text *, .apexcharts-legend-marker * {	
                                                    pointer-events: none;	
                                                    }	
                                                    .apexcharts-legend-marker {	
                                                    position: relative;	
                                                    display: inline-block;	
                                                    cursor: pointer;	
                                                    margin-right: 3px;	
                                                    border-style: solid;
                                                    }	
                                                    .apexcharts-legend.apexcharts-align-right .apexcharts-legend-series, .apexcharts-legend.apexcharts-align-left .apexcharts-legend-series{	
                                                    display: inline-block;	
                                                    }	
                                                    .apexcharts-legend-series.apexcharts-no-click {	
                                                    cursor: auto;	
                                                    }	
                                                    .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {	
                                                    display: none !important;	
                                                    }	
                                                    .apexcharts-inactive-legend {	
                                                    opacity: 0.45;	
                                                    }
                                                </style>
                                            </foreignObject>
                                            <g id="SvgjsG1693" class="apexcharts-inner apexcharts-graphical" transform="translate(158.80364583333335, 40)">
                                                <defs id="SvgjsDefs1692">
                                                    <clipPath id="gridRectMasks2et35wpg">
                                                        <rect id="SvgjsRect1704" width="338.28124999999994" height="291.348" x="-25.064062500000002" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                    <clipPath id="gridRectMarkerMasks2et35wpg">
                                                        <rect id="SvgjsRect1705" width="292.153125" height="292.348" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect>
                                                    </clipPath>
                                                </defs>
                                                <line id="SvgjsLine1703" x1="40.66473214285714" y1="0" x2="40.66473214285714" y2="288.348" stroke="#b6b6b6" stroke-dasharray="3" class="apexcharts-xcrosshairs" x="40.66473214285714" y="0" width="1" height="288.348" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line>
                                                <g id="SvgjsG1733" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                    <g id="SvgjsG1734" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)">
                                                        <text id="SvgjsText1736" font-family="Helvetica, Arial, sans-serif" x="0" y="317.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1737">2009</tspan>
                                                            <title>2009</title>
                                                        </text>
                                                        <text id="SvgjsText1739" font-family="Helvetica, Arial, sans-serif" x="41.16473214285715" y="317.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1740">2010</tspan>
                                                            <title>2010</title>
                                                        </text>
                                                        <text id="SvgjsText1742" font-family="Helvetica, Arial, sans-serif" x="82.3294642857143" y="317.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1743">2011</tspan>
                                                            <title>2011</title>
                                                        </text>
                                                        <text id="SvgjsText1745" font-family="Helvetica, Arial, sans-serif" x="123.49419642857143" y="317.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1746">2012</tspan>
                                                            <title>2012</title>
                                                        </text>
                                                        <text id="SvgjsText1748" font-family="Helvetica, Arial, sans-serif" x="164.65892857142856" y="317.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1749">2013</tspan>
                                                            <title>2013</title>
                                                        </text>
                                                        <text id="SvgjsText1751" font-family="Helvetica, Arial, sans-serif" x="205.8236607142857" y="317.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1752">2014</tspan>
                                                            <title>2014</title>
                                                        </text>
                                                        <text id="SvgjsText1754" font-family="Helvetica, Arial, sans-serif" x="246.98839285714286" y="317.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1755">2015</tspan>
                                                            <title>2015</title>
                                                        </text>
                                                        <text id="SvgjsText1757" font-family="Helvetica, Arial, sans-serif" x="288.153125" y="317.348" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                            <tspan id="SvgjsTspan1758">2016</tspan>
                                                            <title>2016</title>
                                                        </text>
                                                    </g>
                                                    <line id="SvgjsLine1759" x1="0" y1="289.348" x2="288.153125" y2="289.348" stroke="#bec7e0" stroke-dasharray="0" stroke-width="1"></line>
                                                </g>
                                                <g id="SvgjsG1832" class="apexcharts-grid">
                                                    <g id="SvgjsG1833" class="apexcharts-gridlines-horizontal">
                                                        <line id="SvgjsLine1843" x1="0" y1="0" x2="288.153125" y2="0" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1844" x1="0" y1="57.6696" x2="288.153125" y2="57.6696" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1845" x1="0" y1="115.3392" x2="288.153125" y2="115.3392" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1846" x1="0" y1="173.0088" x2="288.153125" y2="173.0088" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1847" x1="0" y1="230.6784" x2="288.153125" y2="230.6784" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                        <line id="SvgjsLine1848" x1="0" y1="288.348" x2="288.153125" y2="288.348" stroke="#f1f3fa" stroke-dasharray="0" class="apexcharts-gridline"></line>
                                                    </g>
                                                    <g id="SvgjsG1834" class="apexcharts-gridlines-vertical"></g>
                                                    <line id="SvgjsLine1835" x1="0" y1="289.348" x2="0" y2="295.348" stroke="#bec7e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1836" x1="41.16473214285714" y1="289.348" x2="41.16473214285714" y2="295.348" stroke="#bec7e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1837" x1="82.32946428571428" y1="289.348" x2="82.32946428571428" y2="295.348" stroke="#bec7e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1838" x1="123.49419642857143" y1="289.348" x2="123.49419642857143" y2="295.348" stroke="#bec7e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1839" x1="164.65892857142856" y1="289.348" x2="164.65892857142856" y2="295.348" stroke="#bec7e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1840" x1="205.8236607142857" y1="289.348" x2="205.8236607142857" y2="295.348" stroke="#bec7e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1841" x1="246.98839285714283" y1="289.348" x2="246.98839285714283" y2="295.348" stroke="#bec7e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1842" x1="288.153125" y1="289.348" x2="288.153125" y2="295.348" stroke="#bec7e0" stroke-dasharray="0" class="apexcharts-xaxis-tick"></line>
                                                    <line id="SvgjsLine1850" x1="0" y1="288.348" x2="288.153125" y2="288.348" stroke="transparent" stroke-dasharray="0"></line>
                                                    <line id="SvgjsLine1849" x1="0" y1="1" x2="0" y2="288.348" stroke="transparent" stroke-dasharray="0"></line>
                                                </g>
                                                <g id="SvgjsG1707" class="apexcharts-bar-series apexcharts-plot-series">
                                                    <g id="SvgjsG1708" class="apexcharts-series" rel="1" seriesName="Income" data:realIndex="0">
                                                        <path id="SvgjsPath1710" d="M-14.40765625 288.348L-14.40765625 207.61056000000002L0 207.61056000000002L0 207.61056000000002L0 288.348L0 288.348C0 288.348 -14.40765625 288.348 -14.40765625 288.348 " fill="rgba(42, 118, 244, .18)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M -14.40765625 288.348L -14.40765625 207.61056000000002L 0 207.61056000000002L 0 207.61056000000002L 0 288.348L 0 288.348z" pathFrom="M -14.40765625 288.348L -14.40765625 288.348L 0 288.348L 0 288.348L 0 288.348L -14.40765625 288.348" cy="207.61056000000002" cx="0" j="0" val="1.4" barHeight="80.73744" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1711" d="M26.757075892857138 288.348L26.757075892857138 173.0088L41.16473214285714 173.0088L41.16473214285714 173.0088L41.16473214285714 288.348L41.16473214285714 288.348C41.16473214285714 288.348 26.757075892857138 288.348 26.757075892857138 288.348 " fill="rgba(42, 118, 244, .18)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 26.757075892857138 288.348L 26.757075892857138 173.0088L 41.16473214285714 173.0088L 41.16473214285714 173.0088L 41.16473214285714 288.348L 41.16473214285714 288.348z" pathFrom="M 26.757075892857138 288.348L 26.757075892857138 288.348L 41.16473214285714 288.348L 41.16473214285714 288.348L 41.16473214285714 288.348L 26.757075892857138 288.348" cy="173.0088" cx="41.16473214285714" j="1" val="2" barHeight="115.3392" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1712" d="M67.92180803571428 288.348L67.92180803571428 144.174L82.32946428571428 144.174L82.32946428571428 144.174L82.32946428571428 288.348L82.32946428571428 288.348C82.32946428571428 288.348 67.92180803571428 288.348 67.92180803571428 288.348 " fill="rgba(42, 118, 244, .18)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 67.92180803571428 288.348L 67.92180803571428 144.174L 82.32946428571428 144.174L 82.32946428571428 144.174L 82.32946428571428 288.348L 82.32946428571428 288.348z" pathFrom="M 67.92180803571428 288.348L 67.92180803571428 288.348L 82.32946428571428 288.348L 82.32946428571428 288.348L 82.32946428571428 288.348L 67.92180803571428 288.348" cy="144.174" cx="82.32946428571428" j="2" val="2.5" barHeight="144.174" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1713" d="M109.08654017857143 288.348L109.08654017857143 201.8436L123.49419642857143 201.8436L123.49419642857143 201.8436L123.49419642857143 288.348L123.49419642857143 288.348C123.49419642857143 288.348 109.08654017857143 288.348 109.08654017857143 288.348 " fill="rgba(42, 118, 244, .18)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 109.08654017857143 288.348L 109.08654017857143 201.8436L 123.49419642857143 201.8436L 123.49419642857143 201.8436L 123.49419642857143 288.348L 123.49419642857143 288.348z" pathFrom="M 109.08654017857143 288.348L 109.08654017857143 288.348L 123.49419642857143 288.348L 123.49419642857143 288.348L 123.49419642857143 288.348L 109.08654017857143 288.348" cy="201.8436" cx="123.49419642857143" j="3" val="1.5" barHeight="86.5044" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1714" d="M150.25127232142856 288.348L150.25127232142856 144.174L164.65892857142856 144.174L164.65892857142856 144.174L164.65892857142856 288.348L164.65892857142856 288.348C164.65892857142856 288.348 150.25127232142856 288.348 150.25127232142856 288.348 " fill="rgba(42, 118, 244, .18)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 150.25127232142856 288.348L 150.25127232142856 144.174L 164.65892857142856 144.174L 164.65892857142856 144.174L 164.65892857142856 288.348L 164.65892857142856 288.348z" pathFrom="M 150.25127232142856 288.348L 150.25127232142856 288.348L 164.65892857142856 288.348L 164.65892857142856 288.348L 164.65892857142856 288.348L 150.25127232142856 288.348" cy="144.174" cx="164.65892857142856" j="4" val="2.5" barHeight="144.174" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1715" d="M191.41600446428572 288.348L191.41600446428572 126.87312L205.82366071428572 126.87312L205.82366071428572 126.87312L205.82366071428572 288.348L205.82366071428572 288.348C205.82366071428572 288.348 191.41600446428572 288.348 191.41600446428572 288.348 " fill="rgba(42, 118, 244, .18)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 191.41600446428572 288.348L 191.41600446428572 126.87312L 205.82366071428572 126.87312L 205.82366071428572 126.87312L 205.82366071428572 288.348L 205.82366071428572 288.348z" pathFrom="M 191.41600446428572 288.348L 191.41600446428572 288.348L 205.82366071428572 288.348L 205.82366071428572 288.348L 205.82366071428572 288.348L 191.41600446428572 288.348" cy="126.87312" cx="205.82366071428572" j="5" val="2.8" barHeight="161.47488" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1716" d="M232.58073660714285 288.348L232.58073660714285 69.20352L246.98839285714286 69.20352L246.98839285714286 69.20352L246.98839285714286 288.348L246.98839285714286 288.348C246.98839285714286 288.348 232.58073660714285 288.348 232.58073660714285 288.348 " fill="rgba(42, 118, 244, .18)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 232.58073660714285 288.348L 232.58073660714285 69.20352L 246.98839285714286 69.20352L 246.98839285714286 69.20352L 246.98839285714286 288.348L 246.98839285714286 288.348z" pathFrom="M 232.58073660714285 288.348L 232.58073660714285 288.348L 246.98839285714286 288.348L 246.98839285714286 288.348L 246.98839285714286 288.348L 232.58073660714285 288.348" cy="69.20352" cx="246.98839285714286" j="6" val="3.8" barHeight="219.14448000000002" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1717" d="M273.74546875 288.348L273.74546875 23.06783999999999L288.153125 23.06783999999999L288.153125 23.06783999999999L288.153125 288.348L288.153125 288.348C288.153125 288.348 273.74546875 288.348 273.74546875 288.348 " fill="rgba(42, 118, 244, .18)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 273.74546875 288.348L 273.74546875 23.06783999999999L 288.153125 23.06783999999999L 288.153125 23.06783999999999L 288.153125 288.348L 288.153125 288.348z" pathFrom="M 273.74546875 288.348L 273.74546875 288.348L 288.153125 288.348L 288.153125 288.348L 288.153125 288.348L 273.74546875 288.348" cy="23.06783999999999" cx="288.153125" j="7" val="4.6" barHeight="265.28016" barWidth="14.40765625"></path>
                                                    </g>
                                                    <g id="SvgjsG1718" class="apexcharts-series" rel="2" seriesName="Cashflow" data:realIndex="1">
                                                        <path id="SvgjsPath1720" d="M0 288.348L0 256.62972L14.40765625 256.62972L14.40765625 256.62972L14.40765625 288.348L14.40765625 288.348C14.40765625 288.348 0 288.348 0 288.348 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 0 288.348L 0 256.62972L 14.40765625 256.62972L 14.40765625 256.62972L 14.40765625 288.348L 14.40765625 288.348z" pathFrom="M 0 288.348L 0 288.348L 14.40765625 288.348L 14.40765625 288.348L 14.40765625 288.348L 0 288.348" cy="256.62972" cx="14.40765625" j="0" val="1.1" barHeight="31.718280000000004" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1721" d="M41.16473214285714 288.348L41.16473214285714 201.8436L55.57238839285714 201.8436L55.57238839285714 201.8436L55.57238839285714 288.348L55.57238839285714 288.348C55.57238839285714 288.348 41.16473214285714 288.348 41.16473214285714 288.348 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 41.16473214285714 288.348L 41.16473214285714 201.8436L 55.57238839285714 201.8436L 55.57238839285714 201.8436L 55.57238839285714 288.348L 55.57238839285714 288.348z" pathFrom="M 41.16473214285714 288.348L 41.16473214285714 288.348L 55.57238839285714 288.348L 55.57238839285714 288.348L 55.57238839285714 288.348L 41.16473214285714 288.348" cy="201.8436" cx="55.572388392857135" j="1" val="3" barHeight="86.5044" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1722" d="M82.32946428571428 288.348L82.32946428571428 198.96012000000002L96.73712053571428 198.96012000000002L96.73712053571428 198.96012000000002L96.73712053571428 288.348L96.73712053571428 288.348C96.73712053571428 288.348 82.32946428571428 288.348 82.32946428571428 288.348 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 82.32946428571428 288.348L 82.32946428571428 198.96012000000002L 96.73712053571428 198.96012000000002L 96.73712053571428 198.96012000000002L 96.73712053571428 288.348L 96.73712053571428 288.348z" pathFrom="M 82.32946428571428 288.348L 82.32946428571428 288.348L 96.73712053571428 288.348L 96.73712053571428 288.348L 96.73712053571428 288.348L 82.32946428571428 288.348" cy="198.96012000000002" cx="96.73712053571428" j="2" val="3.1" barHeight="89.38788000000001" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1723" d="M123.49419642857143 288.348L123.49419642857143 173.0088L137.90185267857143 173.0088L137.90185267857143 173.0088L137.90185267857143 288.348L137.90185267857143 288.348C137.90185267857143 288.348 123.49419642857143 288.348 123.49419642857143 288.348 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 123.49419642857143 288.348L 123.49419642857143 173.0088L 137.90185267857143 173.0088L 137.90185267857143 173.0088L 137.90185267857143 288.348L 137.90185267857143 288.348z" pathFrom="M 123.49419642857143 288.348L 123.49419642857143 288.348L 137.90185267857143 288.348L 137.90185267857143 288.348L 137.90185267857143 288.348L 123.49419642857143 288.348" cy="173.0088" cx="137.90185267857143" j="3" val="4" barHeight="115.3392" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1724" d="M164.65892857142856 288.348L164.65892857142856 170.12532000000002L179.06658482142856 170.12532000000002L179.06658482142856 170.12532000000002L179.06658482142856 288.348L179.06658482142856 288.348C179.06658482142856 288.348 164.65892857142856 288.348 164.65892857142856 288.348 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 164.65892857142856 288.348L 164.65892857142856 170.12532000000002L 179.06658482142856 170.12532000000002L 179.06658482142856 170.12532000000002L 179.06658482142856 288.348L 179.06658482142856 288.348z" pathFrom="M 164.65892857142856 288.348L 164.65892857142856 288.348L 179.06658482142856 288.348L 179.06658482142856 288.348L 179.06658482142856 288.348L 164.65892857142856 288.348" cy="170.12532000000002" cx="179.06658482142856" j="4" val="4.1" barHeight="118.22268" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1725" d="M205.82366071428572 288.348L205.82366071428572 147.05748L220.23131696428572 147.05748L220.23131696428572 147.05748L220.23131696428572 288.348L220.23131696428572 288.348C220.23131696428572 288.348 205.82366071428572 288.348 205.82366071428572 288.348 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 205.82366071428572 288.348L 205.82366071428572 147.05748L 220.23131696428572 147.05748L 220.23131696428572 147.05748L 220.23131696428572 288.348L 220.23131696428572 288.348z" pathFrom="M 205.82366071428572 288.348L 205.82366071428572 288.348L 220.23131696428572 288.348L 220.23131696428572 288.348L 220.23131696428572 288.348L 205.82366071428572 288.348" cy="147.05748" cx="220.23131696428572" j="5" val="4.9" barHeight="141.29052000000001" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1726" d="M246.98839285714286 288.348L246.98839285714286 100.92179999999999L261.39604910714286 100.92179999999999L261.39604910714286 100.92179999999999L261.39604910714286 288.348L261.39604910714286 288.348C261.39604910714286 288.348 246.98839285714286 288.348 246.98839285714286 288.348 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 246.98839285714286 288.348L 246.98839285714286 100.92179999999999L 261.39604910714286 100.92179999999999L 261.39604910714286 100.92179999999999L 261.39604910714286 288.348L 261.39604910714286 288.348z" pathFrom="M 246.98839285714286 288.348L 246.98839285714286 288.348L 261.39604910714286 288.348L 261.39604910714286 288.348L 261.39604910714286 288.348L 246.98839285714286 288.348" cy="100.92179999999999" cx="261.39604910714286" j="6" val="6.5" barHeight="187.42620000000002" barWidth="14.40765625"></path>
                                                        <path id="SvgjsPath1727" d="M288.153125 288.348L288.153125 43.25219999999999L302.56078125 43.25219999999999L302.56078125 43.25219999999999L302.56078125 288.348L302.56078125 288.348C302.56078125 288.348 288.153125 288.348 288.153125 288.348 " fill="rgba(42,118,244,0.85)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 288.153125 288.348L 288.153125 43.25219999999999L 302.56078125 43.25219999999999L 302.56078125 43.25219999999999L 302.56078125 288.348L 302.56078125 288.348z" pathFrom="M 288.153125 288.348L 288.153125 288.348L 302.56078125 288.348L 302.56078125 288.348L 302.56078125 288.348L 288.153125 288.348" cy="43.25219999999999" cx="302.56078125" j="7" val="8.5" barHeight="245.09580000000003" barWidth="14.40765625"></path>
                                                        <g id="SvgjsG1719" class="apexcharts-datalabels" data:realIndex="1"></g>
                                                    </g>
                                                </g>
                                                <g id="SvgjsG1728" class="apexcharts-line-series apexcharts-plot-series">
                                                    <g id="SvgjsG1729" class="apexcharts-series" seriesName="Revenue" data:longestSeries="true" rel="1" data:realIndex="2">
                                                        <path id="SvgjsPath1732" d="M0 192.232L41.16473214285714 148.9798L82.32946428571428 110.5334L123.49419642857143 115.3392L164.65892857142856 76.8928L205.82366071428572 72.08699999999999L246.98839285714286 48.05799999999999L288.153125 9.61160000000001C288.153125 9.61160000000001 288.153125 9.61160000000001 288.153125 9.61160000000001 " fill="none" fill-opacity="1" stroke="rgba(251, 182, 36, .6)" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-line" index="2" clip-path="url(#gridRectMasks2et35wpg)" pathTo="M 0 192.232L 41.16473214285714 148.9798L 82.32946428571428 110.5334L 123.49419642857143 115.3392L 164.65892857142856 76.8928L 205.82366071428572 72.08699999999999L 246.98839285714286 48.05799999999999L 288.153125 9.61160000000001" pathFrom="M -1 288.348L -1 288.348L 41.16473214285714 288.348L 82.32946428571428 288.348L 123.49419642857143 288.348L 164.65892857142856 288.348L 205.82366071428572 288.348L 246.98839285714286 288.348L 288.153125 288.348"></path>
                                                        <g id="SvgjsG1730" class="apexcharts-series-markers-wrap" data:realIndex="2">
                                                            <g class="apexcharts-series-markers">
                                                                <circle id="SvgjsCircle1856" r="0" cx="41.16473214285714" cy="148.9798" class="apexcharts-marker wovp3wadz" stroke="#ffffff" fill="rgba(251, 182, 36, .6)" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle>
                                                            </g>
                                                        </g>
                                                    </g>
                                                    <g id="SvgjsG1709" class="apexcharts-datalabels" data:realIndex="0"></g>
                                                    <g id="SvgjsG1731" class="apexcharts-datalabels" data:realIndex="2"></g>
                                                </g>
                                                <line id="SvgjsLine1851" x1="0" y1="0" x2="288.153125" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line>
                                                <line id="SvgjsLine1852" x1="0" y1="0" x2="288.153125" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                                <g id="SvgjsG1853" class="apexcharts-yaxis-annotations"></g>
                                                <g id="SvgjsG1854" class="apexcharts-xaxis-annotations"></g>
                                                <g id="SvgjsG1855" class="apexcharts-point-annotations"></g>
                                                <rect id="SvgjsRect1857" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect>
                                                <rect id="SvgjsRect1858" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect>
                                            </g>
                                            <rect id="SvgjsRect1702" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect>
                                            <g id="SvgjsG1760" class="apexcharts-yaxis" rel="0" transform="translate(103.23958333333334, 0)">
                                                <g id="SvgjsG1761" class="apexcharts-yaxis-texts-g">
                                                    <text id="SvgjsText1762" font-family="Helvetica, Arial, sans-serif" x="20" y="41.5" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1763">5.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1764" font-family="Helvetica, Arial, sans-serif" x="20" y="99.1696" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1765">4.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1766" font-family="Helvetica, Arial, sans-serif" x="20" y="156.8392" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1767">3.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1768" font-family="Helvetica, Arial, sans-serif" x="20" y="214.5088" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1769">2.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1770" font-family="Helvetica, Arial, sans-serif" x="20" y="272.1784" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1771">1.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1772" font-family="Helvetica, Arial, sans-serif" x="20" y="329.848" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1773">0.0</tspan>
                                                    </text>
                                                </g>
                                                <g id="SvgjsG1774" class="apexcharts-yaxis-title">
                                                    <text id="SvgjsText1775" font-family="Helvetica, Arial, sans-serif" x="58.1484375" y="184.174" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="900" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-title-text " style="font-family: Helvetica, Arial, sans-serif;" transform="rotate(-90 -10.59375 180.4239959716797)">Income (thousand crores)</text>
                                                </g>
                                                <line id="SvgjsLine1776" x1="31" y1="38" x2="31" y2="330.348" stroke="#20016c" stroke-dasharray="0" stroke-width="1"></line>
                                                <line id="SvgjsLine1777" x1="25" y1="39.5" x2="31" y2="39.5" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1778" x1="25" y1="97.1696" x2="31" y2="97.1696" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1779" x1="25" y1="154.8392" x2="31" y2="154.8392" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1780" x1="25" y1="212.5088" x2="31" y2="212.5088" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1781" x1="25" y1="270.1784" x2="31" y2="270.1784" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1782" x1="25" y1="327.848" x2="31" y2="327.848" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                            </g>
                                            <g id="SvgjsG1783" class="apexcharts-yaxis" rel="1" transform="translate(55.14583333333334, 0)">
                                                <g id="SvgjsG1784" class="apexcharts-yaxis-texts-g">
                                                    <text id="SvgjsText1785" font-family="Helvetica, Arial, sans-serif" x="20" y="41.5" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1786">10.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1787" font-family="Helvetica, Arial, sans-serif" x="20" y="99.1696" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1788">8.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1789" font-family="Helvetica, Arial, sans-serif" x="20" y="156.8392" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1790">6.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1791" font-family="Helvetica, Arial, sans-serif" x="20" y="214.5088" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1792">4.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1793" font-family="Helvetica, Arial, sans-serif" x="20" y="272.1784" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1794">2.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1795" font-family="Helvetica, Arial, sans-serif" x="20" y="329.848" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1796">0.0</tspan>
                                                    </text>
                                                </g>
                                                <g id="SvgjsG1797" class="apexcharts-yaxis-title">
                                                    <text id="SvgjsText1798" font-family="Helvetica, Arial, sans-serif" x="85.22265625" y="184.174" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="900" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-title-text " style="font-family: Helvetica, Arial, sans-serif;" transform="rotate(-90 -16.8125 180.4239959716797)">Operating Cashflow (thousand crores)</text>
                                                </g>
                                                <line id="SvgjsLine1799" x1="31" y1="38" x2="31" y2="330.348" stroke="#77d0ba" stroke-dasharray="0" stroke-width="1"></line>
                                                <line id="SvgjsLine1800" x1="25" y1="39.5" x2="31" y2="39.5" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1801" x1="25" y1="97.1696" x2="31" y2="97.1696" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1802" x1="25" y1="154.8392" x2="31" y2="154.8392" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1803" x1="25" y1="212.5088" x2="31" y2="212.5088" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1804" x1="25" y1="270.1784" x2="31" y2="270.1784" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1805" x1="25" y1="327.848" x2="31" y2="327.848" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                            </g>
                                            <g id="SvgjsG1806" class="apexcharts-yaxis" rel="2" transform="translate(495.52083333333337, 0)">
                                                <g id="SvgjsG1807" class="apexcharts-yaxis-texts-g">
                                                    <text id="SvgjsText1808" font-family="Helvetica, Arial, sans-serif" x="-20" y="41.6" text-anchor="start" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1809">60.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1810" font-family="Helvetica, Arial, sans-serif" x="-20" y="89.65799999999999" text-anchor="start" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1811">50.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1812" font-family="Helvetica, Arial, sans-serif" x="-20" y="137.71599999999998" text-anchor="start" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1813">40.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1814" font-family="Helvetica, Arial, sans-serif" x="-20" y="185.77399999999997" text-anchor="start" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1815">30.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1816" font-family="Helvetica, Arial, sans-serif" x="-20" y="233.83199999999997" text-anchor="start" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1817">20.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1818" font-family="Helvetica, Arial, sans-serif" x="-20" y="281.89" text-anchor="start" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1819">10.0</tspan>
                                                    </text>
                                                    <text id="SvgjsText1820" font-family="Helvetica, Arial, sans-serif" x="-20" y="329.948" text-anchor="start" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;">
                                                        <tspan id="SvgjsTspan1821">0.0</tspan>
                                                    </text>
                                                </g>
                                                <g id="SvgjsG1822" class="apexcharts-yaxis-title">
                                                    <text id="SvgjsText1823" font-family="Helvetica, Arial, sans-serif" x="89.2734375" y="184.174" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="900" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-title-text " style="font-family: Helvetica, Arial, sans-serif;" transform="rotate(90 16.8125 180.4239959716797)">Revenue (thousand crores)</text>
                                                </g>
                                                <line id="SvgjsLine1824" x1="-31" y1="38" x2="-31" y2="330.348" stroke="#fa5c7c" stroke-dasharray="0" stroke-width="1"></line>
                                                <line id="SvgjsLine1825" x1="-31" y1="39.6" x2="-25" y2="39.6" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1826" x1="-31" y1="87.65799999999999" x2="-25" y2="87.65799999999999" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1827" x1="-31" y1="135.71599999999998" x2="-25" y2="135.71599999999998" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1828" x1="-31" y1="183.77399999999997" x2="-25" y2="183.77399999999997" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1829" x1="-31" y1="231.83199999999997" x2="-25" y2="231.83199999999997" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1830" x1="-31" y1="279.89" x2="-25" y2="279.89" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1831" x1="-31" y1="327.948" x2="-25" y2="327.948" stroke="#e0e0e0" stroke-dasharray="0"></line>
                                            </g>
                                            <g id="SvgjsG1694" class="apexcharts-annotations"></g>
                                        </svg>
                                        <div class="apexcharts-tooltip apexcharts-theme-light" style="left: 205.968px; top: 74.5px;">
                                            <div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">2010</div>
                                            <div class="apexcharts-tooltip-series-group apexcharts-active" style="display: flex;">
                                                <span class="apexcharts-tooltip-marker" style="background-color: rgba(42, 118, 244, 0.18);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label">Income: </span><span class="apexcharts-tooltip-text-value">2 thousand crores</span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                            <div class="apexcharts-tooltip-series-group apexcharts-active" style="display: flex;">
                                                <span class="apexcharts-tooltip-marker" style="background-color: rgb(42, 118, 244);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label">Cashflow: </span><span class="apexcharts-tooltip-text-value">3 thousand crores</span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                            <div class="apexcharts-tooltip-series-group apexcharts-active" style="display: flex;">
                                                <span class="apexcharts-tooltip-marker" style="background-color: rgba(251, 182, 36, 0.6);"></span>
                                                <div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">
                                                    <div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label">Revenue: </span><span class="apexcharts-tooltip-text-value">29 thousand crores</span></div>
                                                    <div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light" style="left: 173.808px; top: 330.348px;">
                                            <div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px; min-width: 29.3203px;">2010</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="resize-triggers">
                                    <div class="expand-trigger">
                                        <div style="width: 541px; height: 371px;"></div>
                                    </div>
                                    <div class="contract-trigger"></div>
                                </div>
                            </div>
                        </div>
                        <!--end card-body-->
                    </div>
                    <!--end card-->
                </div>
				
			</div>

            <div class="row">
                <div class="col-lg-12 col-xl-8">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Report 3</h4>
                            <p class="text-muted mb-0">
                            </p>
                        </div>
                        <!--end card-header-->
                        <div class="card-body">
                            <div class="chartjs-size-monitor">
                                <div class="chartjs-size-monitor-expand">
                                    <div class=""></div>
                                </div>
                                <div class="chartjs-size-monitor-shrink">
                                    <div class=""></div>
                                </div>
                            </div>
                            <canvas id="lineChart" class="drop-shadow chartjs-render-monitor" height="600" width="1472" style="display: block; height: 300px; width: 736px;"></canvas>
                        </div>
                        <!--end card-body-->
                    </div>
                    <!--end card-->
                </div>
                <!-- end col -->
                <div class="col-lg-12 col-xl-4">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Report 4</h4>
                            <p class="text-muted mb-0">
                            </p>
                        </div>
                        <!--end card-header-->
                        <div class="card-body">
                            <div class="chartjs-size-monitor">
                                <div class="chartjs-size-monitor-expand">
                                    <div class=""></div>
                                </div>
                                <div class="chartjs-size-monitor-shrink">
                                    <div class=""></div>
                                </div>
                            </div>
                            <canvas id="doughnut" class="drop-shadow chartjs-render-monitor" height="600" width="686" style="display: block; height: 300px; width: 343px;"></canvas>
                        </div>
                        <!--end card-body-->
                    </div>
                    <!--end card-->
                </div>
                <!-- end col -->
                <div class="col-lg-12 col-xl-8">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Report 5</h4>
                            <p class="text-muted mb-0">
                            </p>
                        </div>
                        <!--end card-header-->
                        <div class="card-body">
                            <div class="chartjs-size-monitor">
                                <div class="chartjs-size-monitor-expand">
                                    <div class=""></div>
                                </div>
                                <div class="chartjs-size-monitor-shrink">
                                    <div class=""></div>
                                </div>
                            </div>
                            <canvas id="bar" class="drop-shadow chartjs-render-monitor" height="600" width="1472" style="display: block; height: 300px; width: 736px;"></canvas>
                        </div>
                        <!--end card-body-->
                    </div>
                    <!--end card-->
                </div>
                <!-- end col -->
                <div class="col-lg-12 col-xl-4">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Report 6</h4>
                            <p class="text-muted mb-0">
                            </p>
                        </div>
                        <!--end card-header-->
                        <div class="card-body">
                            <div class="chartjs-size-monitor">
                                <div class="chartjs-size-monitor-expand">
                                    <div class=""></div>
                                </div>
                                <div class="chartjs-size-monitor-shrink">
                                    <div class=""></div>
                                </div>
                            </div>
                            <canvas id="polarArea" class="drop-shadow chartjs-render-monitor" height="600" width="686" style="display: block; height: 300px; width: 343px;"> </canvas>
                        </div>
                        <!--end card-body-->
                    </div>
                    <!--end card-->
                </div>
                <!-- end col -->                                
            </div>
		</div>
	</div>
</div>

@include('v1.Includes.Footer')
