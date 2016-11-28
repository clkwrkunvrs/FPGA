create_clock -period 10 [get_ports {CLK}];
set_property PACKAGE_PIN Y9 [get_ports {CLK}];
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}];


##Push Buttons
set_property   PACKAGE_PIN N15  [get_ports { PBrst} ]; #BTNL
set_property  IOSTANDARD LVCMOS18   [get_ports { PBrst } ];
set_property   PACKAGE_PIN T18 [get_ports { PBen } ]; #BTNU
set_property  IOSTANDARD LVCMOS18   [get_ports { PBen } ];


##LED'S left to right
##testing Moore first
set_property   PACKAGE_PIN U14    [get_ports { OUT[3] } ];
set_property  IOSTANDARD LVCMOS33   [get_ports { OUT[3] } ];
set_property    PACKAGE_PIN U19 [get_ports { OUT[2] }  ];
set_property  IOSTANDARD LVCMOS33   [get_ports { OUT[2] } ];
set_property  PACKAGE_PIN W22   [get_ports { OUT[1] } ];
set_property  IOSTANDARD LVCMOS33   [get_ports { OUT[1] } ];
set_property   PACKAGE_PIN V22  [get_ports { OUT[0] }  ];
set_property  IOSTANDARD LVCMOS33   [get_ports { OUT[0] } ];
set_property   PACKAGE_PIN U21 [get_ports { Cout[1] } ];
set_property  IOSTANDARD LVCMOS33   [get_ports { Cout[1] } ];
set_property  PACKAGE_PIN U22  [get_ports { Cout[0] } ];
set_property  IOSTANDARD LVCMOS33   [get_ports { Cout[0] } ];
#set_property -dict {  PACKAGE_PIN   T21 IOSTANDARD LVCMOS33  }
#set_property -dict {  PACKAGE_PIN   T22 IOSTANDARD LVCMOS33  }

#testing Counter 2nd
set_property PACKAGE_PIN Y11  [get_ports { Dout[3] } ]; #JA1
set_property IOSTANDARD LVCMOS33 [get_ports { Dout[3] } ];
set_property PACKAGE_PIN AA11  [get_ports { Dout[2] }]; #JA2
set_property IOSTANDARD LVCMOS33 [get_ports {  Dout[2] }];
set_property PACKAGE_PIN Y10  [get_ports { Dout[1] } ]; # JA3
set_property IOSTANDARD LVCMOS33 [get_ports {Dout[1] } ];
set_property PACKAGE_PIN AA9  [get_ports { Dout[0] } ]; #JA4
set_property IOSTANDARD LVCMOS33 [get_ports {Dout[0] } ];
#set_property -dict {  PACKAGE_PIN   U19 IOSTANDARD LVCMOS33  } [get_ports Dout[2]];
#set_property -dict {  PACKAGE_PIN   W22 IOSTANDARD LVCMOS33  } [get_ports Dout[1]];
#set_property -dict {  PACKAGE_PIN   V22 IOSTANDARD LVCMOS33  } [get_ports Dout[0]];
#set_property -dict {  PACKAGE_PIN   U21 IOSTANDARD LVCMOS33  } 
#set_property -dict {  PACKAGE_PIN   U22 IOSTANDARD LVCMOS33  } 
#set_property -dict {  PACKAGE_PIN   T21 IOSTANDARD LVCMOS33  }
#set_property -dict {  PACKAGE_PIN   T22 IOSTANDARD LVCMOS33  }

#SWITCHES left to right
set_property  PACKAGE_PIN M15  [get_ports { Din[3] } ]; # SW7
set_property  IOSTANDARD LVCMOS18   [get_ports { Din[3] } ];
set_property   PACKAGE_PIN H17    [get_ports { Din[2] } ];# SW6
set_property  IOSTANDARD LVCMOS18   [get_ports { Din[2] } ];
set_property   PACKAGE_PIN H18    [get_ports { Din[1] } ];# SW5
set_property  IOSTANDARD LVCMOS18   [get_ports { Din[1] } ];
set_property   PACKAGE_PIN H19    [get_ports { Din[0] } ];# SW4
set_property  IOSTANDARD LVCMOS18   [get_ports { Din[0] } ];

set_property  PACKAGE_PIN F22 [get_ports { Mu[0] } ];  # "SW0"
set_property  IOSTANDARD LVCMOS18   [get_ports { Mu[0] } ];
set_property  PACKAGE_PIN G22    [get_ports { Mu[1] } ];  # "SW1"
set_property  IOSTANDARD LVCMOS18   [get_ports { Mu[1] } ];
set_property  PACKAGE_PIN H22 [get_ports { CE } ];  # "SW2"
set_property  IOSTANDARD LVCMOS18   [get_ports { CE } ];



# set_property -dict {  PACKAGE_PIN   W8 [get_ports {F}];  # "JB4"
#  set_property -dict {  PACKAGE_PIN   V10 [get_ports {G}];  # "JB3"
#set_property -dict {  PACKAGE_PIN   W11 [get_ports {C}];  # "JB2"
#set_property -dict {  PACKAGE_PIN   W12 [get_ports {B}];  # "JB1"
#set_property -dict {  PACKAGE_PIN   AA9  [get_ports {E}];  # "JA4"
#set_property -dict {  PACKAGE_PIN   AA11 [get_ports {A}];  # "JA2"
#set_property -dict {  PACKAGE_PIN   Y11  [get_ports {D}];  # "JA1"
#set_property -dict IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
#set_property -dict IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];