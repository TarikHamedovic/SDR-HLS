
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.13.0.56.2

-- ldbanno -n VHDL -o sqrt_test_impl1_vho.vho -w -neg -gui sqrt_test_impl1.ncd 
-- Netlist created on Wed Jul  3 15:27:09 2024
-- Netlist written on Wed Jul  3 15:27:47 2024
-- Design is for device LFE5U-85F
-- Design is for package CABGA381
-- Design is for performance grade 6

-- entity sapiobuf
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf : ENTITY IS TRUE;

  end sapiobuf;

  architecture Structure of sapiobuf is
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity result_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_0_B : ENTITY IS TRUE;

  end result_0_B;

  architecture Structure of result_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result0_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_0: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result0_out)
    VARIABLE result0_zd         	: std_logic := 'X';
    VARIABLE result0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result0_zd 	:= result0_out;

    VitalPathDelay01 (
      OutSignal => result0, OutSignalName => "result0", OutTemp => result0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result0,
                           PathCondition => TRUE)),
      GlitchData => result0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sapiobuf0001
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sapiobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sapiobuf0001 : ENTITY IS TRUE;

  end sapiobuf0001;

  architecture Structure of sapiobuf0001 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity num_0_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_0_B";

      tipd_num0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num0 	: VitalDelayType := 0 ns;
      tpw_num0_posedge	: VitalDelayType := 0 ns;
      tpw_num0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_0_B : ENTITY IS TRUE;

  end num_0_B;

  architecture Structure of num_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num0_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_0: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num0_ipd, num0, tipd_num0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num0_num0          	: x01 := '0';
    VARIABLE periodcheckinfo_num0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num0_ipd,
        TestSignalName => "num0",
        Period => tperiod_num0,
        PulseWidthHigh => tpw_num0_posedge,
        PulseWidthLow => tpw_num0_negedge,
        PeriodData => periodcheckinfo_num0,
        Violation => tviol_num0_num0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num0_ipd'last_event,
                           PathDelay => tpd_num0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_15_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_15_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_15_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result15	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result15: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_15_B : ENTITY IS TRUE;

  end result_15_B;

  architecture Structure of result_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result15_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_15: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result15_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result15_out)
    VARIABLE result15_zd         	: std_logic := 'X';
    VARIABLE result15_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result15_zd 	:= result15_out;

    VitalPathDelay01 (
      OutSignal => result15, OutSignalName => "result15", OutTemp => result15_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result15,
                           PathCondition => TRUE)),
      GlitchData => result15_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_14_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_14_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_14_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result14	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result14: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_14_B : ENTITY IS TRUE;

  end result_14_B;

  architecture Structure of result_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result14_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_14: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result14_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result14_out)
    VARIABLE result14_zd         	: std_logic := 'X';
    VARIABLE result14_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result14_zd 	:= result14_out;

    VitalPathDelay01 (
      OutSignal => result14, OutSignalName => "result14", OutTemp => result14_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result14,
                           PathCondition => TRUE)),
      GlitchData => result14_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_13_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_13_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_13_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result13	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result13: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_13_B : ENTITY IS TRUE;

  end result_13_B;

  architecture Structure of result_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result13_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_13: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result13_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result13_out)
    VARIABLE result13_zd         	: std_logic := 'X';
    VARIABLE result13_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result13_zd 	:= result13_out;

    VitalPathDelay01 (
      OutSignal => result13, OutSignalName => "result13", OutTemp => result13_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result13,
                           PathCondition => TRUE)),
      GlitchData => result13_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_12_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_12_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result12	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result12: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_12_B : ENTITY IS TRUE;

  end result_12_B;

  architecture Structure of result_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result12_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_12: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result12_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result12_out)
    VARIABLE result12_zd         	: std_logic := 'X';
    VARIABLE result12_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result12_zd 	:= result12_out;

    VitalPathDelay01 (
      OutSignal => result12, OutSignalName => "result12", OutTemp => result12_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result12,
                           PathCondition => TRUE)),
      GlitchData => result12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_11_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_11_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result11	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result11: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_11_B : ENTITY IS TRUE;

  end result_11_B;

  architecture Structure of result_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result11_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_11: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result11_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result11_out)
    VARIABLE result11_zd         	: std_logic := 'X';
    VARIABLE result11_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result11_zd 	:= result11_out;

    VitalPathDelay01 (
      OutSignal => result11, OutSignalName => "result11", OutTemp => result11_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result11,
                           PathCondition => TRUE)),
      GlitchData => result11_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_10_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_10_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result10	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result10: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_10_B : ENTITY IS TRUE;

  end result_10_B;

  architecture Structure of result_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result10_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_10: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result10_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result10_out)
    VARIABLE result10_zd         	: std_logic := 'X';
    VARIABLE result10_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result10_zd 	:= result10_out;

    VitalPathDelay01 (
      OutSignal => result10, OutSignalName => "result10", OutTemp => result10_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result10,
                           PathCondition => TRUE)),
      GlitchData => result10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_9_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_9_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result9	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result9: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_9_B : ENTITY IS TRUE;

  end result_9_B;

  architecture Structure of result_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result9_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_9: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result9_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result9_out)
    VARIABLE result9_zd         	: std_logic := 'X';
    VARIABLE result9_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result9_zd 	:= result9_out;

    VitalPathDelay01 (
      OutSignal => result9, OutSignalName => "result9", OutTemp => result9_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result9,
                           PathCondition => TRUE)),
      GlitchData => result9_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_8_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_8_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result8	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result8: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_8_B : ENTITY IS TRUE;

  end result_8_B;

  architecture Structure of result_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result8_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_8: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result8_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result8_out)
    VARIABLE result8_zd         	: std_logic := 'X';
    VARIABLE result8_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result8_zd 	:= result8_out;

    VitalPathDelay01 (
      OutSignal => result8, OutSignalName => "result8", OutTemp => result8_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result8,
                           PathCondition => TRUE)),
      GlitchData => result8_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_7_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_7_B : ENTITY IS TRUE;

  end result_7_B;

  architecture Structure of result_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result7_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_7: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result7_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result7_out)
    VARIABLE result7_zd         	: std_logic := 'X';
    VARIABLE result7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result7_zd 	:= result7_out;

    VitalPathDelay01 (
      OutSignal => result7, OutSignalName => "result7", OutTemp => result7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result7,
                           PathCondition => TRUE)),
      GlitchData => result7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_6_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_6_B : ENTITY IS TRUE;

  end result_6_B;

  architecture Structure of result_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result6_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_6: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result6_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result6_out)
    VARIABLE result6_zd         	: std_logic := 'X';
    VARIABLE result6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result6_zd 	:= result6_out;

    VitalPathDelay01 (
      OutSignal => result6, OutSignalName => "result6", OutTemp => result6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result6,
                           PathCondition => TRUE)),
      GlitchData => result6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_5_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_5_B : ENTITY IS TRUE;

  end result_5_B;

  architecture Structure of result_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result5_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_5: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result5_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result5_out)
    VARIABLE result5_zd         	: std_logic := 'X';
    VARIABLE result5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result5_zd 	:= result5_out;

    VitalPathDelay01 (
      OutSignal => result5, OutSignalName => "result5", OutTemp => result5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result5,
                           PathCondition => TRUE)),
      GlitchData => result5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_4_B : ENTITY IS TRUE;

  end result_4_B;

  architecture Structure of result_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result4_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_4: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result4_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result4_out)
    VARIABLE result4_zd         	: std_logic := 'X';
    VARIABLE result4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result4_zd 	:= result4_out;

    VitalPathDelay01 (
      OutSignal => result4, OutSignalName => "result4", OutTemp => result4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result4,
                           PathCondition => TRUE)),
      GlitchData => result4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_3_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_3_B : ENTITY IS TRUE;

  end result_3_B;

  architecture Structure of result_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result3_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_3: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result3_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result3_out)
    VARIABLE result3_zd         	: std_logic := 'X';
    VARIABLE result3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result3_zd 	:= result3_out;

    VitalPathDelay01 (
      OutSignal => result3, OutSignalName => "result3", OutTemp => result3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result3,
                           PathCondition => TRUE)),
      GlitchData => result3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_2_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_2_B : ENTITY IS TRUE;

  end result_2_B;

  architecture Structure of result_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result2_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_2: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result2_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result2_out)
    VARIABLE result2_zd         	: std_logic := 'X';
    VARIABLE result2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result2_zd 	:= result2_out;

    VitalPathDelay01 (
      OutSignal => result2, OutSignalName => "result2", OutTemp => result2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result2,
                           PathCondition => TRUE)),
      GlitchData => result2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity result_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity result_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "result_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_result1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; result1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF result_1_B : ENTITY IS TRUE;

  end result_1_B;

  architecture Structure of result_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal result1_out 	: std_logic := 'X';

    component sapiobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    result_pad_1: sapiobuf
      port map (I=>PADDO_ipd, PAD=>result1_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, result1_out)
    VARIABLE result1_zd         	: std_logic := 'X';
    VARIABLE result1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    result1_zd 	:= result1_out;

    VitalPathDelay01 (
      OutSignal => result1, OutSignalName => "result1", OutTemp => result1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_result1,
                           PathCondition => TRUE)),
      GlitchData => result1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_31_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_31_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_31_B";

      tipd_num31  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num31_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num31 	: VitalDelayType := 0 ns;
      tpw_num31_posedge	: VitalDelayType := 0 ns;
      tpw_num31_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num31: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_31_B : ENTITY IS TRUE;

  end num_31_B;

  architecture Structure of num_31_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num31_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_31: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num31_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num31_ipd, num31, tipd_num31);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num31_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num31_num31          	: x01 := '0';
    VARIABLE periodcheckinfo_num31	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num31_ipd,
        TestSignalName => "num31",
        Period => tperiod_num31,
        PulseWidthHigh => tpw_num31_posedge,
        PulseWidthLow => tpw_num31_negedge,
        PeriodData => periodcheckinfo_num31,
        Violation => tviol_num31_num31,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num31_ipd'last_event,
                           PathDelay => tpd_num31_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_30_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_30_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_30_B";

      tipd_num30  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num30_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num30 	: VitalDelayType := 0 ns;
      tpw_num30_posedge	: VitalDelayType := 0 ns;
      tpw_num30_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num30: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_30_B : ENTITY IS TRUE;

  end num_30_B;

  architecture Structure of num_30_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num30_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_30: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num30_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num30_ipd, num30, tipd_num30);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num30_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num30_num30          	: x01 := '0';
    VARIABLE periodcheckinfo_num30	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num30_ipd,
        TestSignalName => "num30",
        Period => tperiod_num30,
        PulseWidthHigh => tpw_num30_posedge,
        PulseWidthLow => tpw_num30_negedge,
        PeriodData => periodcheckinfo_num30,
        Violation => tviol_num30_num30,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num30_ipd'last_event,
                           PathDelay => tpd_num30_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_29_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_29_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_29_B";

      tipd_num29  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num29_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num29 	: VitalDelayType := 0 ns;
      tpw_num29_posedge	: VitalDelayType := 0 ns;
      tpw_num29_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num29: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_29_B : ENTITY IS TRUE;

  end num_29_B;

  architecture Structure of num_29_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num29_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_29: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num29_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num29_ipd, num29, tipd_num29);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num29_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num29_num29          	: x01 := '0';
    VARIABLE periodcheckinfo_num29	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num29_ipd,
        TestSignalName => "num29",
        Period => tperiod_num29,
        PulseWidthHigh => tpw_num29_posedge,
        PulseWidthLow => tpw_num29_negedge,
        PeriodData => periodcheckinfo_num29,
        Violation => tviol_num29_num29,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num29_ipd'last_event,
                           PathDelay => tpd_num29_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_28_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_28_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_28_B";

      tipd_num28  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num28_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num28 	: VitalDelayType := 0 ns;
      tpw_num28_posedge	: VitalDelayType := 0 ns;
      tpw_num28_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num28: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_28_B : ENTITY IS TRUE;

  end num_28_B;

  architecture Structure of num_28_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num28_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_28: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num28_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num28_ipd, num28, tipd_num28);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num28_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num28_num28          	: x01 := '0';
    VARIABLE periodcheckinfo_num28	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num28_ipd,
        TestSignalName => "num28",
        Period => tperiod_num28,
        PulseWidthHigh => tpw_num28_posedge,
        PulseWidthLow => tpw_num28_negedge,
        PeriodData => periodcheckinfo_num28,
        Violation => tviol_num28_num28,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num28_ipd'last_event,
                           PathDelay => tpd_num28_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_27_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_27_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_27_B";

      tipd_num27  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num27_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num27 	: VitalDelayType := 0 ns;
      tpw_num27_posedge	: VitalDelayType := 0 ns;
      tpw_num27_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num27: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_27_B : ENTITY IS TRUE;

  end num_27_B;

  architecture Structure of num_27_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num27_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_27: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num27_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num27_ipd, num27, tipd_num27);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num27_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num27_num27          	: x01 := '0';
    VARIABLE periodcheckinfo_num27	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num27_ipd,
        TestSignalName => "num27",
        Period => tperiod_num27,
        PulseWidthHigh => tpw_num27_posedge,
        PulseWidthLow => tpw_num27_negedge,
        PeriodData => periodcheckinfo_num27,
        Violation => tviol_num27_num27,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num27_ipd'last_event,
                           PathDelay => tpd_num27_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_26_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_26_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_26_B";

      tipd_num26  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num26_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num26 	: VitalDelayType := 0 ns;
      tpw_num26_posedge	: VitalDelayType := 0 ns;
      tpw_num26_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num26: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_26_B : ENTITY IS TRUE;

  end num_26_B;

  architecture Structure of num_26_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num26_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_26: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num26_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num26_ipd, num26, tipd_num26);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num26_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num26_num26          	: x01 := '0';
    VARIABLE periodcheckinfo_num26	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num26_ipd,
        TestSignalName => "num26",
        Period => tperiod_num26,
        PulseWidthHigh => tpw_num26_posedge,
        PulseWidthLow => tpw_num26_negedge,
        PeriodData => periodcheckinfo_num26,
        Violation => tviol_num26_num26,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num26_ipd'last_event,
                           PathDelay => tpd_num26_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_25_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_25_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_25_B";

      tipd_num25  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num25_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num25 	: VitalDelayType := 0 ns;
      tpw_num25_posedge	: VitalDelayType := 0 ns;
      tpw_num25_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num25: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_25_B : ENTITY IS TRUE;

  end num_25_B;

  architecture Structure of num_25_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num25_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_25: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num25_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num25_ipd, num25, tipd_num25);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num25_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num25_num25          	: x01 := '0';
    VARIABLE periodcheckinfo_num25	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num25_ipd,
        TestSignalName => "num25",
        Period => tperiod_num25,
        PulseWidthHigh => tpw_num25_posedge,
        PulseWidthLow => tpw_num25_negedge,
        PeriodData => periodcheckinfo_num25,
        Violation => tviol_num25_num25,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num25_ipd'last_event,
                           PathDelay => tpd_num25_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_24_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_24_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_24_B";

      tipd_num24  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num24_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num24 	: VitalDelayType := 0 ns;
      tpw_num24_posedge	: VitalDelayType := 0 ns;
      tpw_num24_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num24: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_24_B : ENTITY IS TRUE;

  end num_24_B;

  architecture Structure of num_24_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num24_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_24: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num24_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num24_ipd, num24, tipd_num24);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num24_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num24_num24          	: x01 := '0';
    VARIABLE periodcheckinfo_num24	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num24_ipd,
        TestSignalName => "num24",
        Period => tperiod_num24,
        PulseWidthHigh => tpw_num24_posedge,
        PulseWidthLow => tpw_num24_negedge,
        PeriodData => periodcheckinfo_num24,
        Violation => tviol_num24_num24,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num24_ipd'last_event,
                           PathDelay => tpd_num24_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_23_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_23_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_23_B";

      tipd_num23  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num23_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num23 	: VitalDelayType := 0 ns;
      tpw_num23_posedge	: VitalDelayType := 0 ns;
      tpw_num23_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num23: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_23_B : ENTITY IS TRUE;

  end num_23_B;

  architecture Structure of num_23_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num23_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_23: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num23_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num23_ipd, num23, tipd_num23);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num23_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num23_num23          	: x01 := '0';
    VARIABLE periodcheckinfo_num23	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num23_ipd,
        TestSignalName => "num23",
        Period => tperiod_num23,
        PulseWidthHigh => tpw_num23_posedge,
        PulseWidthLow => tpw_num23_negedge,
        PeriodData => periodcheckinfo_num23,
        Violation => tviol_num23_num23,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num23_ipd'last_event,
                           PathDelay => tpd_num23_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_22_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_22_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_22_B";

      tipd_num22  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num22_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num22 	: VitalDelayType := 0 ns;
      tpw_num22_posedge	: VitalDelayType := 0 ns;
      tpw_num22_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num22: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_22_B : ENTITY IS TRUE;

  end num_22_B;

  architecture Structure of num_22_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num22_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_22: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num22_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num22_ipd, num22, tipd_num22);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num22_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num22_num22          	: x01 := '0';
    VARIABLE periodcheckinfo_num22	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num22_ipd,
        TestSignalName => "num22",
        Period => tperiod_num22,
        PulseWidthHigh => tpw_num22_posedge,
        PulseWidthLow => tpw_num22_negedge,
        PeriodData => periodcheckinfo_num22,
        Violation => tviol_num22_num22,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num22_ipd'last_event,
                           PathDelay => tpd_num22_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_21_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_21_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_21_B";

      tipd_num21  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num21_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num21 	: VitalDelayType := 0 ns;
      tpw_num21_posedge	: VitalDelayType := 0 ns;
      tpw_num21_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num21: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_21_B : ENTITY IS TRUE;

  end num_21_B;

  architecture Structure of num_21_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num21_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_21: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num21_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num21_ipd, num21, tipd_num21);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num21_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num21_num21          	: x01 := '0';
    VARIABLE periodcheckinfo_num21	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num21_ipd,
        TestSignalName => "num21",
        Period => tperiod_num21,
        PulseWidthHigh => tpw_num21_posedge,
        PulseWidthLow => tpw_num21_negedge,
        PeriodData => periodcheckinfo_num21,
        Violation => tviol_num21_num21,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num21_ipd'last_event,
                           PathDelay => tpd_num21_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_20_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_20_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_20_B";

      tipd_num20  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num20_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num20 	: VitalDelayType := 0 ns;
      tpw_num20_posedge	: VitalDelayType := 0 ns;
      tpw_num20_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num20: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_20_B : ENTITY IS TRUE;

  end num_20_B;

  architecture Structure of num_20_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num20_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_20: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num20_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num20_ipd, num20, tipd_num20);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num20_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num20_num20          	: x01 := '0';
    VARIABLE periodcheckinfo_num20	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num20_ipd,
        TestSignalName => "num20",
        Period => tperiod_num20,
        PulseWidthHigh => tpw_num20_posedge,
        PulseWidthLow => tpw_num20_negedge,
        PeriodData => periodcheckinfo_num20,
        Violation => tviol_num20_num20,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num20_ipd'last_event,
                           PathDelay => tpd_num20_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_19_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_19_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_19_B";

      tipd_num19  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num19_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num19 	: VitalDelayType := 0 ns;
      tpw_num19_posedge	: VitalDelayType := 0 ns;
      tpw_num19_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num19: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_19_B : ENTITY IS TRUE;

  end num_19_B;

  architecture Structure of num_19_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num19_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_19: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num19_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num19_ipd, num19, tipd_num19);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num19_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num19_num19          	: x01 := '0';
    VARIABLE periodcheckinfo_num19	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num19_ipd,
        TestSignalName => "num19",
        Period => tperiod_num19,
        PulseWidthHigh => tpw_num19_posedge,
        PulseWidthLow => tpw_num19_negedge,
        PeriodData => periodcheckinfo_num19,
        Violation => tviol_num19_num19,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num19_ipd'last_event,
                           PathDelay => tpd_num19_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_18_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_18_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_18_B";

      tipd_num18  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num18_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num18 	: VitalDelayType := 0 ns;
      tpw_num18_posedge	: VitalDelayType := 0 ns;
      tpw_num18_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num18: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_18_B : ENTITY IS TRUE;

  end num_18_B;

  architecture Structure of num_18_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num18_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_18: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num18_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num18_ipd, num18, tipd_num18);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num18_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num18_num18          	: x01 := '0';
    VARIABLE periodcheckinfo_num18	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num18_ipd,
        TestSignalName => "num18",
        Period => tperiod_num18,
        PulseWidthHigh => tpw_num18_posedge,
        PulseWidthLow => tpw_num18_negedge,
        PeriodData => periodcheckinfo_num18,
        Violation => tviol_num18_num18,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num18_ipd'last_event,
                           PathDelay => tpd_num18_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_17_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_17_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_17_B";

      tipd_num17  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num17_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num17 	: VitalDelayType := 0 ns;
      tpw_num17_posedge	: VitalDelayType := 0 ns;
      tpw_num17_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num17: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_17_B : ENTITY IS TRUE;

  end num_17_B;

  architecture Structure of num_17_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num17_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_17: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num17_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num17_ipd, num17, tipd_num17);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num17_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num17_num17          	: x01 := '0';
    VARIABLE periodcheckinfo_num17	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num17_ipd,
        TestSignalName => "num17",
        Period => tperiod_num17,
        PulseWidthHigh => tpw_num17_posedge,
        PulseWidthLow => tpw_num17_negedge,
        PeriodData => periodcheckinfo_num17,
        Violation => tviol_num17_num17,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num17_ipd'last_event,
                           PathDelay => tpd_num17_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_16_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_16_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_16_B";

      tipd_num16  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num16_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num16 	: VitalDelayType := 0 ns;
      tpw_num16_posedge	: VitalDelayType := 0 ns;
      tpw_num16_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num16: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_16_B : ENTITY IS TRUE;

  end num_16_B;

  architecture Structure of num_16_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num16_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_16: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num16_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num16_ipd, num16, tipd_num16);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num16_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num16_num16          	: x01 := '0';
    VARIABLE periodcheckinfo_num16	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num16_ipd,
        TestSignalName => "num16",
        Period => tperiod_num16,
        PulseWidthHigh => tpw_num16_posedge,
        PulseWidthLow => tpw_num16_negedge,
        PeriodData => periodcheckinfo_num16,
        Violation => tviol_num16_num16,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num16_ipd'last_event,
                           PathDelay => tpd_num16_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_15_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_15_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_15_B";

      tipd_num15  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num15_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num15 	: VitalDelayType := 0 ns;
      tpw_num15_posedge	: VitalDelayType := 0 ns;
      tpw_num15_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num15: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_15_B : ENTITY IS TRUE;

  end num_15_B;

  architecture Structure of num_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num15_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_15: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num15_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num15_ipd, num15, tipd_num15);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num15_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num15_num15          	: x01 := '0';
    VARIABLE periodcheckinfo_num15	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num15_ipd,
        TestSignalName => "num15",
        Period => tperiod_num15,
        PulseWidthHigh => tpw_num15_posedge,
        PulseWidthLow => tpw_num15_negedge,
        PeriodData => periodcheckinfo_num15,
        Violation => tviol_num15_num15,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num15_ipd'last_event,
                           PathDelay => tpd_num15_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_14_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_14_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_14_B";

      tipd_num14  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num14_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num14 	: VitalDelayType := 0 ns;
      tpw_num14_posedge	: VitalDelayType := 0 ns;
      tpw_num14_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num14: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_14_B : ENTITY IS TRUE;

  end num_14_B;

  architecture Structure of num_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num14_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_14: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num14_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num14_ipd, num14, tipd_num14);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num14_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num14_num14          	: x01 := '0';
    VARIABLE periodcheckinfo_num14	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num14_ipd,
        TestSignalName => "num14",
        Period => tperiod_num14,
        PulseWidthHigh => tpw_num14_posedge,
        PulseWidthLow => tpw_num14_negedge,
        PeriodData => periodcheckinfo_num14,
        Violation => tviol_num14_num14,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num14_ipd'last_event,
                           PathDelay => tpd_num14_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_13_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_13_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_13_B";

      tipd_num13  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num13_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num13 	: VitalDelayType := 0 ns;
      tpw_num13_posedge	: VitalDelayType := 0 ns;
      tpw_num13_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num13: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_13_B : ENTITY IS TRUE;

  end num_13_B;

  architecture Structure of num_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num13_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_13: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num13_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num13_ipd, num13, tipd_num13);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num13_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num13_num13          	: x01 := '0';
    VARIABLE periodcheckinfo_num13	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num13_ipd,
        TestSignalName => "num13",
        Period => tperiod_num13,
        PulseWidthHigh => tpw_num13_posedge,
        PulseWidthLow => tpw_num13_negedge,
        PeriodData => periodcheckinfo_num13,
        Violation => tviol_num13_num13,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num13_ipd'last_event,
                           PathDelay => tpd_num13_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_12_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_12_B";

      tipd_num12  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num12_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num12 	: VitalDelayType := 0 ns;
      tpw_num12_posedge	: VitalDelayType := 0 ns;
      tpw_num12_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num12: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_12_B : ENTITY IS TRUE;

  end num_12_B;

  architecture Structure of num_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num12_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_12: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num12_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num12_ipd, num12, tipd_num12);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num12_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num12_num12          	: x01 := '0';
    VARIABLE periodcheckinfo_num12	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num12_ipd,
        TestSignalName => "num12",
        Period => tperiod_num12,
        PulseWidthHigh => tpw_num12_posedge,
        PulseWidthLow => tpw_num12_negedge,
        PeriodData => periodcheckinfo_num12,
        Violation => tviol_num12_num12,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num12_ipd'last_event,
                           PathDelay => tpd_num12_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_11_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_11_B";

      tipd_num11  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num11_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num11 	: VitalDelayType := 0 ns;
      tpw_num11_posedge	: VitalDelayType := 0 ns;
      tpw_num11_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num11: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_11_B : ENTITY IS TRUE;

  end num_11_B;

  architecture Structure of num_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num11_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_11: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num11_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num11_ipd, num11, tipd_num11);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num11_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num11_num11          	: x01 := '0';
    VARIABLE periodcheckinfo_num11	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num11_ipd,
        TestSignalName => "num11",
        Period => tperiod_num11,
        PulseWidthHigh => tpw_num11_posedge,
        PulseWidthLow => tpw_num11_negedge,
        PeriodData => periodcheckinfo_num11,
        Violation => tviol_num11_num11,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num11_ipd'last_event,
                           PathDelay => tpd_num11_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_10_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_10_B";

      tipd_num10  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num10_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num10 	: VitalDelayType := 0 ns;
      tpw_num10_posedge	: VitalDelayType := 0 ns;
      tpw_num10_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num10: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_10_B : ENTITY IS TRUE;

  end num_10_B;

  architecture Structure of num_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num10_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_10: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num10_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num10_ipd, num10, tipd_num10);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num10_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num10_num10          	: x01 := '0';
    VARIABLE periodcheckinfo_num10	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num10_ipd,
        TestSignalName => "num10",
        Period => tperiod_num10,
        PulseWidthHigh => tpw_num10_posedge,
        PulseWidthLow => tpw_num10_negedge,
        PeriodData => periodcheckinfo_num10,
        Violation => tviol_num10_num10,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num10_ipd'last_event,
                           PathDelay => tpd_num10_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_9_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_9_B";

      tipd_num9  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num9_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num9 	: VitalDelayType := 0 ns;
      tpw_num9_posedge	: VitalDelayType := 0 ns;
      tpw_num9_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num9: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_9_B : ENTITY IS TRUE;

  end num_9_B;

  architecture Structure of num_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num9_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_9: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num9_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num9_ipd, num9, tipd_num9);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num9_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num9_num9          	: x01 := '0';
    VARIABLE periodcheckinfo_num9	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num9_ipd,
        TestSignalName => "num9",
        Period => tperiod_num9,
        PulseWidthHigh => tpw_num9_posedge,
        PulseWidthLow => tpw_num9_negedge,
        PeriodData => periodcheckinfo_num9,
        Violation => tviol_num9_num9,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num9_ipd'last_event,
                           PathDelay => tpd_num9_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_8_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_8_B";

      tipd_num8  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num8_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num8 	: VitalDelayType := 0 ns;
      tpw_num8_posedge	: VitalDelayType := 0 ns;
      tpw_num8_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num8: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_8_B : ENTITY IS TRUE;

  end num_8_B;

  architecture Structure of num_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num8_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_8: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num8_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num8_ipd, num8, tipd_num8);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num8_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num8_num8          	: x01 := '0';
    VARIABLE periodcheckinfo_num8	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num8_ipd,
        TestSignalName => "num8",
        Period => tperiod_num8,
        PulseWidthHigh => tpw_num8_posedge,
        PulseWidthLow => tpw_num8_negedge,
        PeriodData => periodcheckinfo_num8,
        Violation => tviol_num8_num8,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num8_ipd'last_event,
                           PathDelay => tpd_num8_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_7_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_7_B";

      tipd_num7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num7 	: VitalDelayType := 0 ns;
      tpw_num7_posedge	: VitalDelayType := 0 ns;
      tpw_num7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_7_B : ENTITY IS TRUE;

  end num_7_B;

  architecture Structure of num_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num7_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_7: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num7_ipd, num7, tipd_num7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num7_num7          	: x01 := '0';
    VARIABLE periodcheckinfo_num7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num7_ipd,
        TestSignalName => "num7",
        Period => tperiod_num7,
        PulseWidthHigh => tpw_num7_posedge,
        PulseWidthLow => tpw_num7_negedge,
        PeriodData => periodcheckinfo_num7,
        Violation => tviol_num7_num7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num7_ipd'last_event,
                           PathDelay => tpd_num7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_6_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_6_B";

      tipd_num6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num6 	: VitalDelayType := 0 ns;
      tpw_num6_posedge	: VitalDelayType := 0 ns;
      tpw_num6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_6_B : ENTITY IS TRUE;

  end num_6_B;

  architecture Structure of num_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num6_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_6: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num6_ipd, num6, tipd_num6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num6_num6          	: x01 := '0';
    VARIABLE periodcheckinfo_num6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num6_ipd,
        TestSignalName => "num6",
        Period => tperiod_num6,
        PulseWidthHigh => tpw_num6_posedge,
        PulseWidthLow => tpw_num6_negedge,
        PeriodData => periodcheckinfo_num6,
        Violation => tviol_num6_num6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num6_ipd'last_event,
                           PathDelay => tpd_num6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_5_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_5_B";

      tipd_num5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num5 	: VitalDelayType := 0 ns;
      tpw_num5_posedge	: VitalDelayType := 0 ns;
      tpw_num5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_5_B : ENTITY IS TRUE;

  end num_5_B;

  architecture Structure of num_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num5_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_5: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num5_ipd, num5, tipd_num5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num5_num5          	: x01 := '0';
    VARIABLE periodcheckinfo_num5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num5_ipd,
        TestSignalName => "num5",
        Period => tperiod_num5,
        PulseWidthHigh => tpw_num5_posedge,
        PulseWidthLow => tpw_num5_negedge,
        PeriodData => periodcheckinfo_num5,
        Violation => tviol_num5_num5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num5_ipd'last_event,
                           PathDelay => tpd_num5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_4_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_4_B";

      tipd_num4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num4 	: VitalDelayType := 0 ns;
      tpw_num4_posedge	: VitalDelayType := 0 ns;
      tpw_num4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_4_B : ENTITY IS TRUE;

  end num_4_B;

  architecture Structure of num_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num4_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_4: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num4_ipd, num4, tipd_num4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num4_num4          	: x01 := '0';
    VARIABLE periodcheckinfo_num4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num4_ipd,
        TestSignalName => "num4",
        Period => tperiod_num4,
        PulseWidthHigh => tpw_num4_posedge,
        PulseWidthLow => tpw_num4_negedge,
        PeriodData => periodcheckinfo_num4,
        Violation => tviol_num4_num4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num4_ipd'last_event,
                           PathDelay => tpd_num4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_3_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_3_B";

      tipd_num3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num3 	: VitalDelayType := 0 ns;
      tpw_num3_posedge	: VitalDelayType := 0 ns;
      tpw_num3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_3_B : ENTITY IS TRUE;

  end num_3_B;

  architecture Structure of num_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num3_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_3: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num3_ipd, num3, tipd_num3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num3_num3          	: x01 := '0';
    VARIABLE periodcheckinfo_num3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num3_ipd,
        TestSignalName => "num3",
        Period => tperiod_num3,
        PulseWidthHigh => tpw_num3_posedge,
        PulseWidthLow => tpw_num3_negedge,
        PeriodData => periodcheckinfo_num3,
        Violation => tviol_num3_num3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num3_ipd'last_event,
                           PathDelay => tpd_num3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_2_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_2_B";

      tipd_num2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num2 	: VitalDelayType := 0 ns;
      tpw_num2_posedge	: VitalDelayType := 0 ns;
      tpw_num2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_2_B : ENTITY IS TRUE;

  end num_2_B;

  architecture Structure of num_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num2_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_2: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num2_ipd, num2, tipd_num2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num2_num2          	: x01 := '0';
    VARIABLE periodcheckinfo_num2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num2_ipd,
        TestSignalName => "num2",
        Period => tperiod_num2,
        PulseWidthHigh => tpw_num2_posedge,
        PulseWidthLow => tpw_num2_negedge,
        PeriodData => periodcheckinfo_num2,
        Violation => tviol_num2_num2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num2_ipd'last_event,
                           PathDelay => tpd_num2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity num_1_B
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity num_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "num_1_B";

      tipd_num1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_num1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_num1 	: VitalDelayType := 0 ns;
      tpw_num1_posedge	: VitalDelayType := 0 ns;
      tpw_num1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; num1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF num_1_B : ENTITY IS TRUE;

  end num_1_B;

  architecture Structure of num_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal num1_ipd 	: std_logic := 'X';

    component sapiobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    num_pad_1: sapiobuf0001
      port map (Z=>PADDI_out, PAD=>num1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(num1_ipd, num1, tipd_num1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, num1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_num1_num1          	: x01 := '0';
    VARIABLE periodcheckinfo_num1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => num1_ipd,
        TestSignalName => "num1",
        Period => tperiod_num1,
        PulseWidthHigh => tpw_num1_posedge,
        PulseWidthLow => tpw_num1_negedge,
        PeriodData => periodcheckinfo_num1,
        Violation => tviol_num1_num1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => num1_ipd'last_event,
                           PathDelay => tpd_num1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sqrt_wrapper
  library IEEE, vital2000, ECP5U;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use ECP5U.COMPONENTS.ALL;

  entity sqrt_wrapper is
    port (num: in Std_logic_vector (31 downto 0); 
          result: out Std_logic_vector (15 downto 0));



  end sqrt_wrapper;

  architecture Structure of sqrt_wrapper is
    signal un72_r_axb_17: Std_logic;
    signal un74_r_cry_16: Std_logic;
    signal un74_r_s_17_0_S0: Std_logic;
    signal num_c_10: Std_logic;
    signal un60_r_cry_0: Std_logic;
    signal num_c_12: Std_logic;
    signal num_c_11: Std_logic;
    signal un60_r_cry_1_0_S0: Std_logic;
    signal un60_r_cry_1_0_S1: Std_logic;
    signal un60_r_cry_2: Std_logic;
    signal un1_r_5_9: Std_logic;
    signal un54_r_cry_1_0_S1: Std_logic;
    signal un54_r_cry_1_0_S0: Std_logic;
    signal un1_r_6_10: Std_logic;
    signal un60_r_cry_3_0_S0: Std_logic;
    signal un60_r_cry_3_0_S1: Std_logic;
    signal un60_r_cry_4: Std_logic;
    signal un1_r_3_7: Std_logic;
    signal un1_r_7_4: Std_logic;
    signal un1_r_7_3: Std_logic;
    signal un1_r_4_8: Std_logic;
    signal un60_r_cry_5_0_S0: Std_logic;
    signal un60_r_cry_5_0_S1: Std_logic;
    signal un60_r_cry_6: Std_logic;
    signal un1_r_7_6: Std_logic;
    signal un1_r_1_5: Std_logic;
    signal un1_r_2_6: Std_logic;
    signal un1_r_7_5: Std_logic;
    signal un60_r_cry_7_0_S0: Std_logic;
    signal un60_r_cry_7_0_S1: Std_logic;
    signal un60_r_cry_8: Std_logic;
    signal un1_r_7_8: Std_logic;
    signal r_2_4: Std_logic;
    signal un1_r_4: Std_logic;
    signal un1_r_7_7: Std_logic;
    signal un60_r_cry_9_0_S0: Std_logic;
    signal un60_r_cry_9_0_S1: Std_logic;
    signal un60_r_cry_10: Std_logic;
    signal un56_r_cry_9_0_S1: Std_logic;
    signal un54_r_cry_9_0_S1: Std_logic;
    signal num_c_30: Std_logic;
    signal num_c_31: Std_logic;
    signal un1_r_7_9: Std_logic;
    signal un60_r_cry_11_0_S0: Std_logic;
    signal un60_r_cry_11_0_S1: Std_logic;
    signal un54_r_cry_0: Std_logic;
    signal num_c_14: Std_logic;
    signal num_c_13: Std_logic;
    signal un54_r_cry_2: Std_logic;
    signal un48_r_cry_1_0_S1: Std_logic;
    signal un48_r_cry_1_0_S0: Std_logic;
    signal un54_r_cry_3_0_S0: Std_logic;
    signal un54_r_cry_3_0_S1: Std_logic;
    signal un54_r_cry_4: Std_logic;
    signal un1_r_6_4: Std_logic;
    signal un1_r_6_3: Std_logic;
    signal un54_r_cry_5_0_S0: Std_logic;
    signal un54_r_cry_5_0_S1: Std_logic;
    signal un54_r_cry_6: Std_logic;
    signal un1_r_6_6: Std_logic;
    signal un1_r_6_5: Std_logic;
    signal un54_r_cry_7_0_S0: Std_logic;
    signal un54_r_cry_7_0_S1: Std_logic;
    signal un54_r_cry_8: Std_logic;
    signal un1_r_6_8: Std_logic;
    signal un1_r_6_7: Std_logic;
    signal un54_r_cry_9_0_S0: Std_logic;
    signal un54_r_cry_10: Std_logic;
    signal un50_r_cry_9_0_S0: Std_logic;
    signal un48_r_cry_9_0_S0: Std_logic;
    signal un54_r_s_11_0_S0: Std_logic;
    signal un48_r_cry_0: Std_logic;
    signal num_c_16: Std_logic;
    signal num_c_15: Std_logic;
    signal un48_r_cry_2: Std_logic;
    signal un42_r_cry_1_0_S1: Std_logic;
    signal un42_r_cry_1_0_S0: Std_logic;
    signal un48_r_cry_3_0_S0: Std_logic;
    signal un48_r_cry_3_0_S1: Std_logic;
    signal un48_r_cry_4: Std_logic;
    signal un1_r_5_4: Std_logic;
    signal un1_r_5_3: Std_logic;
    signal un48_r_cry_5_0_S0: Std_logic;
    signal un48_r_cry_5_0_S1: Std_logic;
    signal un48_r_cry_6: Std_logic;
    signal un1_r_5_6: Std_logic;
    signal un1_r_5_5: Std_logic;
    signal un48_r_cry_7_0_S0: Std_logic;
    signal un48_r_cry_7_0_S1: Std_logic;
    signal un48_r_cry_8: Std_logic;
    signal un42_r_cry_7_0_S1: Std_logic;
    signal un44_r_cry_7_0_S1: Std_logic;
    signal un1_r_5_7: Std_logic;
    signal un48_r_cry_9_0_S1: Std_logic;
    signal un42_r_cry_0: Std_logic;
    signal num_c_18: Std_logic;
    signal num_c_17: Std_logic;
    signal un42_r_cry_2: Std_logic;
    signal un36_r_cry_1_0_S1: Std_logic;
    signal un36_r_cry_1_0_S0: Std_logic;
    signal un42_r_cry_3_0_S0: Std_logic;
    signal un42_r_cry_3_0_S1: Std_logic;
    signal un42_r_cry_4: Std_logic;
    signal un1_r_4_4: Std_logic;
    signal un1_r_4_3: Std_logic;
    signal un42_r_cry_5_0_S0: Std_logic;
    signal un42_r_cry_5_0_S1: Std_logic;
    signal un42_r_cry_6: Std_logic;
    signal un1_r_4_6: Std_logic;
    signal un1_r_4_5: Std_logic;
    signal un42_r_cry_7_0_S0: Std_logic;
    signal un42_r_cry_8: Std_logic;
    signal un36_r_cry_7_0_S0: Std_logic;
    signal un38_r_cry_7_0_S0: Std_logic;
    signal un42_r_s_9_0_S0: Std_logic;
    signal un36_r_cry_0: Std_logic;
    signal num_c_20: Std_logic;
    signal num_c_19: Std_logic;
    signal un36_r_cry_2: Std_logic;
    signal un30_r_cry_1_0_S1: Std_logic;
    signal un30_r_cry_1_0_S0: Std_logic;
    signal un36_r_cry_3_0_S0: Std_logic;
    signal un36_r_cry_3_0_S1: Std_logic;
    signal un36_r_cry_4: Std_logic;
    signal un1_r_3_4: Std_logic;
    signal un1_r_3_3: Std_logic;
    signal un36_r_cry_5_0_S0: Std_logic;
    signal un36_r_cry_5_0_S1: Std_logic;
    signal un36_r_cry_6: Std_logic;
    signal un32_r_cry_5_0_S1: Std_logic;
    signal un30_r_cry_5_0_S1: Std_logic;
    signal un1_r_3_5: Std_logic;
    signal un36_r_cry_7_0_S1: Std_logic;
    signal un30_r_cry_0: Std_logic;
    signal num_c_22: Std_logic;
    signal num_c_21: Std_logic;
    signal un30_r_cry_2: Std_logic;
    signal un24_r_cry_1_0_S1: Std_logic;
    signal un24_r_cry_1_0_S0: Std_logic;
    signal un30_r_cry_3_0_S0: Std_logic;
    signal un30_r_cry_3_0_S1: Std_logic;
    signal un30_r_cry_4: Std_logic;
    signal un1_r_2_4: Std_logic;
    signal un1_r_2_3: Std_logic;
    signal un30_r_cry_5_0_S0: Std_logic;
    signal un30_r_cry_6: Std_logic;
    signal un24_r_cry_5_0_S0: Std_logic;
    signal un26_r_cry_5_0_S0: Std_logic;
    signal un30_r_s_7_0_S0: Std_logic;
    signal un24_r_cry_0: Std_logic;
    signal num_c_24: Std_logic;
    signal num_c_23: Std_logic;
    signal un24_r_cry_2: Std_logic;
    signal un18_r_cry_1_0_S1: Std_logic;
    signal un18_r_cry_1_0_S0: Std_logic;
    signal un24_r_cry_3_0_S0: Std_logic;
    signal un24_r_cry_3_0_S1: Std_logic;
    signal un24_r_cry_4: Std_logic;
    signal un20_r_cry_3_0_S1: Std_logic;
    signal un18_r_cry_3_0_S1: Std_logic;
    signal un1_r_1_3: Std_logic;
    signal un24_r_cry_5_0_S1: Std_logic;
    signal un18_r_cry_0: Std_logic;
    signal num_c_26: Std_logic;
    signal num_c_25: Std_logic;
    signal un18_r_cry_2: Std_logic;
    signal un12_r_axbxc2: Std_logic;
    signal num_c_27: Std_logic;
    signal un18_r_cry_3_0_S0: Std_logic;
    signal un18_r_cry_4: Std_logic;
    signal un14_r_axbxc3: Std_logic;
    signal un12_r_axbxc3: Std_logic;
    signal un18_r_s_5_0_S0: Std_logic;
    signal num_c_2: Std_logic;
    signal un84_r_cry_0: Std_logic;
    signal un1_r_17: Std_logic;
    signal num_c_4: Std_logic;
    signal num_c_3: Std_logic;
    signal un84_r_cry_1_0_S0: Std_logic;
    signal un84_r_cry_1_0_S1: Std_logic;
    signal un84_r_cry_2: Std_logic;
    signal un1_r_11_2: Std_logic;
    signal un1_r_11_1: Std_logic;
    signal un84_r_cry_3_0_S0: Std_logic;
    signal un84_r_cry_3_0_S1: Std_logic;
    signal un84_r_cry_4: Std_logic;
    signal un1_r_7_11: Std_logic;
    signal un1_r_11_4: Std_logic;
    signal un1_r_8_12: Std_logic;
    signal un1_r_11_3: Std_logic;
    signal un84_r_cry_5_0_S0: Std_logic;
    signal un84_r_cry_5_0_S1: Std_logic;
    signal un84_r_cry_6: Std_logic;
    signal un1_r_11_6: Std_logic;
    signal un1_r_11_5: Std_logic;
    signal un84_r_cry_7_0_S0: Std_logic;
    signal un84_r_cry_7_0_S1: Std_logic;
    signal un84_r_cry_8: Std_logic;
    signal un1_r_11_8: Std_logic;
    signal un1_r_11_7: Std_logic;
    signal un84_r_cry_9_0_S0: Std_logic;
    signal un84_r_cry_9_0_S1: Std_logic;
    signal un84_r_cry_10: Std_logic;
    signal un1_r_11_10: Std_logic;
    signal un1_r_11_9: Std_logic;
    signal un84_r_cry_11_0_S0: Std_logic;
    signal un84_r_cry_11_0_S1: Std_logic;
    signal un84_r_cry_12: Std_logic;
    signal un1_r_11_12: Std_logic;
    signal un1_r_11_11: Std_logic;
    signal un84_r_cry_13_0_S0: Std_logic;
    signal un84_r_cry_13_0_S1: Std_logic;
    signal un84_r_cry_14: Std_logic;
    signal un78_r_cry_13_0_S1: Std_logic;
    signal un80_r_cry_13_0_S1: Std_logic;
    signal un1_r_11_13: Std_logic;
    signal un84_r_cry_15_0_S0: Std_logic;
    signal un84_r_cry_16: Std_logic;
    signal un78_r_cry_15_0_S0: Std_logic;
    signal un80_r_cry_15_0_S0: Std_logic;
    signal un84_r_s_17_0_S0: Std_logic;
    signal un78_r_cry_0: Std_logic;
    signal num_c_6: Std_logic;
    signal num_c_5: Std_logic;
    signal un78_r_cry_1_0_S0: Std_logic;
    signal un78_r_cry_1_0_S1: Std_logic;
    signal un78_r_cry_2: Std_logic;
    signal un1_r_10_2: Std_logic;
    signal un1_r_10_1: Std_logic;
    signal un78_r_cry_3_0_S0: Std_logic;
    signal un78_r_cry_3_0_S1: Std_logic;
    signal un78_r_cry_4: Std_logic;
    signal un1_r_10_4: Std_logic;
    signal un1_r_10_3: Std_logic;
    signal un78_r_cry_5_0_S0: Std_logic;
    signal un78_r_cry_5_0_S1: Std_logic;
    signal un78_r_cry_6: Std_logic;
    signal un1_r_10_6: Std_logic;
    signal un1_r_10_5: Std_logic;
    signal un78_r_cry_7_0_S0: Std_logic;
    signal un78_r_cry_7_0_S1: Std_logic;
    signal un78_r_cry_8: Std_logic;
    signal un1_r_10_8: Std_logic;
    signal un1_r_10_7: Std_logic;
    signal un78_r_cry_9_0_S0: Std_logic;
    signal un78_r_cry_9_0_S1: Std_logic;
    signal un78_r_cry_10: Std_logic;
    signal un1_r_10_10: Std_logic;
    signal un1_r_10_9: Std_logic;
    signal un78_r_cry_11_0_S0: Std_logic;
    signal un78_r_cry_11_0_S1: Std_logic;
    signal un78_r_cry_12: Std_logic;
    signal un1_r_10_12: Std_logic;
    signal un1_r_10_11: Std_logic;
    signal un78_r_cry_13_0_S0: Std_logic;
    signal un78_r_cry_14: Std_logic;
    signal un72_r_cry_13_0_S1: Std_logic;
    signal un74_r_cry_13_0_S1: Std_logic;
    signal un78_r_axb_15: Std_logic;
    signal un78_r_cry_16: Std_logic;
    signal un72_r_cry_15_0_S0: Std_logic;
    signal un74_r_cry_15_0_S0: Std_logic;
    signal un78_r_s_17_0_S0: Std_logic;
    signal un72_r_cry_0: Std_logic;
    signal num_c_8: Std_logic;
    signal num_c_7: Std_logic;
    signal un72_r_cry_1_0_S0: Std_logic;
    signal un72_r_cry_1_0_S1: Std_logic;
    signal un72_r_cry_2: Std_logic;
    signal un1_num_cry_1_0_S1: Std_logic;
    signal un1_num_cry_1_0_S0: Std_logic;
    signal un72_r_cry_3_0_S0: Std_logic;
    signal un72_r_cry_3_0_S1: Std_logic;
    signal un72_r_cry_4: Std_logic;
    signal un1_num_cry_3_0_S1: Std_logic;
    signal un1_num_cry_3_0_S0: Std_logic;
    signal un72_r_cry_5_0_S0: Std_logic;
    signal un72_r_cry_5_0_S1: Std_logic;
    signal un72_r_cry_6: Std_logic;
    signal un1_num_cry_5_0_S1: Std_logic;
    signal un1_num_cry_5_0_S0: Std_logic;
    signal un72_r_cry_7_0_S0: Std_logic;
    signal un72_r_cry_7_0_S1: Std_logic;
    signal un72_r_cry_8: Std_logic;
    signal un1_num_cry_7_0_S1: Std_logic;
    signal un1_num_cry_7_0_S0: Std_logic;
    signal un72_r_cry_9_0_S0: Std_logic;
    signal un72_r_cry_9_0_S1: Std_logic;
    signal un72_r_cry_10: Std_logic;
    signal un1_num_cry_9_0_S1: Std_logic;
    signal un1_num_cry_9_0_S0: Std_logic;
    signal un72_r_cry_11_0_S0: Std_logic;
    signal un72_r_cry_11_0_S1: Std_logic;
    signal un72_r_cry_12: Std_logic;
    signal un72_r_axb_14: Std_logic;
    signal un1_num_cry_11_0_S0: Std_logic;
    signal un72_r_cry_13_0_S0: Std_logic;
    signal un72_r_cry_14: Std_logic;
    signal un72_r_axb_16: Std_logic;
    signal un72_r_axb_15: Std_logic;
    signal un72_r_cry_16: Std_logic;
    signal un72_r_s_17_0_S0: Std_logic;
    signal un62_r_cry_0: Std_logic;
    signal un62_r_cry_2: Std_logic;
    signal un62_r_cry_3_0_S0: Std_logic;
    signal un62_r_cry_3_0_S1: Std_logic;
    signal un62_r_cry_4: Std_logic;
    signal un62_r_cry_5_0_S0: Std_logic;
    signal un62_r_cry_5_0_S1: Std_logic;
    signal un62_r_cry_6: Std_logic;
    signal un62_r_cry_7_0_S0: Std_logic;
    signal un62_r_cry_7_0_S1: Std_logic;
    signal un62_r_cry_8: Std_logic;
    signal un62_r_cry_9_0_S0: Std_logic;
    signal un62_r_cry_9_0_S1: Std_logic;
    signal un62_r_cry_10: Std_logic;
    signal un62_r_cry_11_0_S0: Std_logic;
    signal un62_r_cry_11_0_S1: Std_logic;
    signal un56_r_cry_0: Std_logic;
    signal un56_r_cry_2: Std_logic;
    signal un56_r_cry_3_0_S0: Std_logic;
    signal un56_r_cry_3_0_S1: Std_logic;
    signal un56_r_cry_4: Std_logic;
    signal un56_r_cry_5_0_S0: Std_logic;
    signal un56_r_cry_5_0_S1: Std_logic;
    signal un56_r_cry_6: Std_logic;
    signal un56_r_cry_7_0_S0: Std_logic;
    signal un56_r_cry_7_0_S1: Std_logic;
    signal un56_r_cry_8: Std_logic;
    signal un56_r_cry_9_0_S0: Std_logic;
    signal un56_r_cry_10: Std_logic;
    signal un56_r_s_11_0_S0: Std_logic;
    signal un50_r_cry_0: Std_logic;
    signal un50_r_cry_2: Std_logic;
    signal un50_r_cry_3_0_S0: Std_logic;
    signal un50_r_cry_3_0_S1: Std_logic;
    signal un50_r_cry_4: Std_logic;
    signal un50_r_cry_5_0_S0: Std_logic;
    signal un50_r_cry_5_0_S1: Std_logic;
    signal un50_r_cry_6: Std_logic;
    signal un50_r_cry_7_0_S0: Std_logic;
    signal un50_r_cry_7_0_S1: Std_logic;
    signal un50_r_cry_8: Std_logic;
    signal un50_r_cry_9_0_S1: Std_logic;
    signal un44_r_cry_0: Std_logic;
    signal un44_r_cry_2: Std_logic;
    signal un44_r_cry_3_0_S0: Std_logic;
    signal un44_r_cry_3_0_S1: Std_logic;
    signal un44_r_cry_4: Std_logic;
    signal un44_r_cry_5_0_S0: Std_logic;
    signal un44_r_cry_5_0_S1: Std_logic;
    signal un44_r_cry_6: Std_logic;
    signal un44_r_cry_7_0_S0: Std_logic;
    signal un44_r_cry_8: Std_logic;
    signal un44_r_s_9_0_S0: Std_logic;
    signal un86_r_cry_0: Std_logic;
    signal un86_r_cry_1_0_S0: Std_logic;
    signal un86_r_cry_1_0_S1: Std_logic;
    signal un86_r_cry_2: Std_logic;
    signal un80_r_cry_1_0_S0: Std_logic;
    signal un86_r_cry_3_0_S0: Std_logic;
    signal un86_r_cry_3_0_S1: Std_logic;
    signal un86_r_cry_4: Std_logic;
    signal un86_r_cry_5_0_S0: Std_logic;
    signal un86_r_cry_5_0_S1: Std_logic;
    signal un86_r_cry_6: Std_logic;
    signal un86_r_cry_7_0_S0: Std_logic;
    signal un86_r_cry_7_0_S1: Std_logic;
    signal un86_r_cry_8: Std_logic;
    signal un86_r_cry_9_0_S0: Std_logic;
    signal un86_r_cry_9_0_S1: Std_logic;
    signal un86_r_cry_10: Std_logic;
    signal un86_r_cry_11_0_S0: Std_logic;
    signal un86_r_cry_11_0_S1: Std_logic;
    signal un86_r_cry_12: Std_logic;
    signal un86_r_cry_13_0_S0: Std_logic;
    signal un86_r_cry_13_0_S1: Std_logic;
    signal un86_r_cry_14: Std_logic;
    signal un84_r_axb_16: Std_logic;
    signal un86_r_cry_15_0_S0: Std_logic;
    signal un86_r_cry_16: Std_logic;
    signal un86_r_s_17_0_S0: Std_logic;
    signal un1_num_cry_0: Std_logic;
    signal num_c_9: Std_logic;
    signal un1_num_cry_2: Std_logic;
    signal un1_num_cry_4: Std_logic;
    signal un1_r_8_4: Std_logic;
    signal un1_r_8_3: Std_logic;
    signal un1_num_cry_6: Std_logic;
    signal un1_r_8_6: Std_logic;
    signal un1_r_8_5: Std_logic;
    signal un1_num_cry_8: Std_logic;
    signal un1_r_8_8: Std_logic;
    signal un1_r_8_7: Std_logic;
    signal un1_num_cry_10: Std_logic;
    signal CO1_1: Std_logic;
    signal un1_r_8_10: Std_logic;
    signal un1_r_8_9: Std_logic;
    signal un1_num_cry_12: Std_logic;
    signal un1_r_8_11: Std_logic;
    signal un1_num_cry_14: Std_logic;
    signal num_c_0: Std_logic;
    signal un1_num_1_cry_0: Std_logic;
    signal un80_r_s_17_0_S0: Std_logic;
    signal num_c_1: Std_logic;
    signal un1_num_1_cry_2: Std_logic;
    signal un1_r_12_2: Std_logic;
    signal N_16_i: Std_logic;
    signal un1_r_1_17: Std_logic;
    signal un1_r_12_1: Std_logic;
    signal un1_num_1_cry_4: Std_logic;
    signal un1_r_12_4: Std_logic;
    signal un1_r_12_3: Std_logic;
    signal un1_num_1_cry_6: Std_logic;
    signal un1_r_12_6: Std_logic;
    signal un1_r_12_5: Std_logic;
    signal un1_num_1_cry_8: Std_logic;
    signal un1_r_12_8: Std_logic;
    signal un1_r_12_7: Std_logic;
    signal un1_num_1_cry_10: Std_logic;
    signal un1_r_12_10: Std_logic;
    signal un1_r_12_9: Std_logic;
    signal un1_num_1_cry_12: Std_logic;
    signal un1_r_12_12: Std_logic;
    signal un1_r_12_11: Std_logic;
    signal un1_num_1_cry_14: Std_logic;
    signal un1_r_12_14: Std_logic;
    signal un1_r_12_13: Std_logic;
    signal un1_num_1_cry_16: Std_logic;
    signal un1_r_12_15: Std_logic;
    signal un1_num_1_s_17_0_S0: Std_logic;
    signal un38_r_cry_0: Std_logic;
    signal un38_r_cry_2: Std_logic;
    signal un38_r_cry_3_0_S0: Std_logic;
    signal un38_r_cry_3_0_S1: Std_logic;
    signal un38_r_cry_4: Std_logic;
    signal un38_r_cry_5_0_S0: Std_logic;
    signal un38_r_cry_5_0_S1: Std_logic;
    signal un38_r_cry_6: Std_logic;
    signal un38_r_cry_7_0_S1: Std_logic;
    signal un32_r_cry_0: Std_logic;
    signal un32_r_cry_2: Std_logic;
    signal un32_r_cry_3_0_S0: Std_logic;
    signal un32_r_cry_3_0_S1: Std_logic;
    signal un32_r_cry_4: Std_logic;
    signal un32_r_cry_5_0_S0: Std_logic;
    signal un32_r_cry_6: Std_logic;
    signal un32_r_s_7_0_S0: Std_logic;
    signal un26_r_cry_0: Std_logic;
    signal un26_r_cry_2: Std_logic;
    signal un26_r_cry_3_0_S0: Std_logic;
    signal un26_r_cry_3_0_S1: Std_logic;
    signal un26_r_cry_4: Std_logic;
    signal un26_r_cry_5_0_S1: Std_logic;
    signal un20_r_cry_0: Std_logic;
    signal un20_r_cry_2: Std_logic;
    signal un20_r_cry_3_0_S0: Std_logic;
    signal un20_r_cry_4: Std_logic;
    signal un20_r_s_5_0_S0: Std_logic;
    signal un80_r_cry_0: Std_logic;
    signal un80_r_cry_1_0_S1: Std_logic;
    signal un80_r_cry_2: Std_logic;
    signal un74_r_cry_1_0_S0: Std_logic;
    signal un80_r_cry_3_0_S0: Std_logic;
    signal un80_r_cry_3_0_S1: Std_logic;
    signal un80_r_cry_4: Std_logic;
    signal un80_r_cry_5_0_S0: Std_logic;
    signal un80_r_cry_5_0_S1: Std_logic;
    signal un80_r_cry_6: Std_logic;
    signal un80_r_cry_7_0_S0: Std_logic;
    signal un80_r_cry_7_0_S1: Std_logic;
    signal un80_r_cry_8: Std_logic;
    signal un80_r_cry_9_0_S0: Std_logic;
    signal un80_r_cry_9_0_S1: Std_logic;
    signal un80_r_cry_10: Std_logic;
    signal un80_r_cry_11_0_S0: Std_logic;
    signal un80_r_cry_11_0_S1: Std_logic;
    signal un80_r_cry_12: Std_logic;
    signal un80_r_cry_13_0_S0: Std_logic;
    signal un80_r_cry_14: Std_logic;
    signal un78_r_axb_16: Std_logic;
    signal un80_r_cry_16: Std_logic;
    signal un74_r_cry_0: Std_logic;
    signal un74_r_cry_1_0_S1: Std_logic;
    signal un74_r_cry_2: Std_logic;
    signal un74_r_cry_3_0_S0: Std_logic;
    signal un74_r_cry_3_0_S1: Std_logic;
    signal un74_r_cry_4: Std_logic;
    signal un74_r_cry_5_0_S0: Std_logic;
    signal un74_r_cry_5_0_S1: Std_logic;
    signal un74_r_cry_6: Std_logic;
    signal un74_r_cry_7_0_S0: Std_logic;
    signal un74_r_cry_7_0_S1: Std_logic;
    signal un74_r_cry_8: Std_logic;
    signal un74_r_cry_9_0_S0: Std_logic;
    signal un74_r_cry_9_0_S1: Std_logic;
    signal un74_r_cry_10: Std_logic;
    signal un74_r_cry_11_0_S0: Std_logic;
    signal un74_r_cry_11_0_S1: Std_logic;
    signal un74_r_cry_12: Std_logic;
    signal un74_r_cry_13_0_S0: Std_logic;
    signal un74_r_cry_14: Std_logic;
    signal num_c_28: Std_logic;
    signal num_c_29: Std_logic;
    signal un12_r_c3: Std_logic;
    signal un14_r_c4: Std_logic;
    signal result_c_5: Std_logic;
    signal un12_r_c4: Std_logic;
    signal un14_r_axb4: Std_logic;
    signal result_c_13: Std_logic;
    signal result_c_12: Std_logic;
    signal result_c_11: Std_logic;
    signal result_c_10: Std_logic;
    signal result_c_8: Std_logic;
    signal result_c_9: Std_logic;
    signal N_80_i: Std_logic;
    signal N_81_i: Std_logic;
    signal N_16_i_i: Std_logic;
    signal result_c_7: Std_logic;
    signal result_c_6: Std_logic;
    signal N_12873_i: Std_logic;
    signal un72_r_axb_17_i: Std_logic;
    signal VCCI: Std_logic;
    component result_0_B
      port (PADDO: in Std_logic; result0: out Std_logic);
    end component;
    component num_0_B
      port (PADDI: out Std_logic; num0: in Std_logic);
    end component;
    component result_15_B
      port (PADDO: in Std_logic; result15: out Std_logic);
    end component;
    component result_14_B
      port (PADDO: in Std_logic; result14: out Std_logic);
    end component;
    component result_13_B
      port (PADDO: in Std_logic; result13: out Std_logic);
    end component;
    component result_12_B
      port (PADDO: in Std_logic; result12: out Std_logic);
    end component;
    component result_11_B
      port (PADDO: in Std_logic; result11: out Std_logic);
    end component;
    component result_10_B
      port (PADDO: in Std_logic; result10: out Std_logic);
    end component;
    component result_9_B
      port (PADDO: in Std_logic; result9: out Std_logic);
    end component;
    component result_8_B
      port (PADDO: in Std_logic; result8: out Std_logic);
    end component;
    component result_7_B
      port (PADDO: in Std_logic; result7: out Std_logic);
    end component;
    component result_6_B
      port (PADDO: in Std_logic; result6: out Std_logic);
    end component;
    component result_5_B
      port (PADDO: in Std_logic; result5: out Std_logic);
    end component;
    component result_4_B
      port (PADDO: in Std_logic; result4: out Std_logic);
    end component;
    component result_3_B
      port (PADDO: in Std_logic; result3: out Std_logic);
    end component;
    component result_2_B
      port (PADDO: in Std_logic; result2: out Std_logic);
    end component;
    component result_1_B
      port (PADDO: in Std_logic; result1: out Std_logic);
    end component;
    component num_31_B
      port (PADDI: out Std_logic; num31: in Std_logic);
    end component;
    component num_30_B
      port (PADDI: out Std_logic; num30: in Std_logic);
    end component;
    component num_29_B
      port (PADDI: out Std_logic; num29: in Std_logic);
    end component;
    component num_28_B
      port (PADDI: out Std_logic; num28: in Std_logic);
    end component;
    component num_27_B
      port (PADDI: out Std_logic; num27: in Std_logic);
    end component;
    component num_26_B
      port (PADDI: out Std_logic; num26: in Std_logic);
    end component;
    component num_25_B
      port (PADDI: out Std_logic; num25: in Std_logic);
    end component;
    component num_24_B
      port (PADDI: out Std_logic; num24: in Std_logic);
    end component;
    component num_23_B
      port (PADDI: out Std_logic; num23: in Std_logic);
    end component;
    component num_22_B
      port (PADDI: out Std_logic; num22: in Std_logic);
    end component;
    component num_21_B
      port (PADDI: out Std_logic; num21: in Std_logic);
    end component;
    component num_20_B
      port (PADDI: out Std_logic; num20: in Std_logic);
    end component;
    component num_19_B
      port (PADDI: out Std_logic; num19: in Std_logic);
    end component;
    component num_18_B
      port (PADDI: out Std_logic; num18: in Std_logic);
    end component;
    component num_17_B
      port (PADDI: out Std_logic; num17: in Std_logic);
    end component;
    component num_16_B
      port (PADDI: out Std_logic; num16: in Std_logic);
    end component;
    component num_15_B
      port (PADDI: out Std_logic; num15: in Std_logic);
    end component;
    component num_14_B
      port (PADDI: out Std_logic; num14: in Std_logic);
    end component;
    component num_13_B
      port (PADDI: out Std_logic; num13: in Std_logic);
    end component;
    component num_12_B
      port (PADDI: out Std_logic; num12: in Std_logic);
    end component;
    component num_11_B
      port (PADDI: out Std_logic; num11: in Std_logic);
    end component;
    component num_10_B
      port (PADDI: out Std_logic; num10: in Std_logic);
    end component;
    component num_9_B
      port (PADDI: out Std_logic; num9: in Std_logic);
    end component;
    component num_8_B
      port (PADDI: out Std_logic; num8: in Std_logic);
    end component;
    component num_7_B
      port (PADDI: out Std_logic; num7: in Std_logic);
    end component;
    component num_6_B
      port (PADDI: out Std_logic; num6: in Std_logic);
    end component;
    component num_5_B
      port (PADDI: out Std_logic; num5: in Std_logic);
    end component;
    component num_4_B
      port (PADDI: out Std_logic; num4: in Std_logic);
    end component;
    component num_3_B
      port (PADDI: out Std_logic; num3: in Std_logic);
    end component;
    component num_2_B
      port (PADDI: out Std_logic; num2: in Std_logic);
    end component;
    component num_1_B
      port (PADDI: out Std_logic; num1: in Std_logic);
    end component;
  begin
    SLICE_0I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"3005", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>un72_r_axb_17, C0=>'1', D0=>'1', 
                FCI=>un74_r_cry_16, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>open, Q1=>open, F0=>un74_r_s_17_0_S0, Q0=>open);
    SLICE_1I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300C")
      port map (M1=>'X', A1=>'1', B1=>num_c_10, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un60_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_2I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"300C", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>'1', B1=>num_c_12, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>num_c_11, C0=>'1', D0=>'1', 
                FCI=>un60_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un60_r_cry_2, F1=>un60_r_cry_1_0_S1, Q1=>open, 
                F0=>un60_r_cry_1_0_S0, Q0=>open);
    SLICE_3I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900A")
      port map (M1=>'X', A1=>un54_r_cry_1_0_S1, B1=>un1_r_5_9, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_6_10, 
                B0=>un54_r_cry_1_0_S0, C0=>'1', D0=>'1', FCI=>un60_r_cry_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un60_r_cry_4, 
                F1=>un60_r_cry_3_0_S1, Q1=>open, F0=>un60_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_4I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900A")
      port map (M1=>'X', A1=>un1_r_7_4, B1=>un1_r_3_7, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_4_8, B0=>un1_r_7_3, C0=>'1', 
                D0=>'1', FCI=>un60_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un60_r_cry_6, F1=>un60_r_cry_5_0_S1, Q1=>open, 
                F0=>un60_r_cry_5_0_S0, Q0=>open);
    SLICE_5I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_1_5, B1=>un1_r_7_6, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_7_5, B0=>un1_r_2_6, C0=>'1', 
                D0=>'1', FCI=>un60_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un60_r_cry_8, F1=>un60_r_cry_7_0_S1, Q1=>open, 
                F0=>un60_r_cry_7_0_S0, Q0=>open);
    SLICE_6I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>r_2_4, B1=>un1_r_7_8, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un1_r_7_7, B0=>un1_r_4, C0=>'1', D0=>'1', 
                FCI=>un60_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un60_r_cry_10, F1=>un60_r_cry_9_0_S1, Q1=>open, 
                F0=>un60_r_cry_9_0_S0, Q0=>open);
    SLICE_7I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"560A", INIT1_INITVAL=>X"AC0C")
      port map (M1=>'X', A1=>un54_r_cry_9_0_S1, B1=>un56_r_cry_9_0_S1, 
                C1=>un1_r_6_10, D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_7_9, 
                B0=>num_c_31, C0=>num_c_30, D0=>'1', FCI=>un60_r_cry_10, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>un60_r_cry_11_0_S1, Q1=>open, F0=>un60_r_cry_11_0_S0, 
                Q0=>open);
    SLICE_8I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_12, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un54_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_9I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"300C", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>'1', B1=>num_c_14, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>num_c_13, C0=>'1', D0=>'1', 
                FCI=>un54_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un54_r_cry_2, F1=>un54_r_cry_1_0_S1, Q1=>open, 
                F0=>un54_r_cry_1_0_S0, Q0=>open);
    SLICE_10I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_4_8, B1=>un48_r_cry_1_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un48_r_cry_1_0_S0, 
                B0=>un1_r_5_9, C0=>'1', D0=>'1', FCI=>un54_r_cry_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un54_r_cry_4, 
                F1=>un54_r_cry_3_0_S1, Q1=>open, F0=>un54_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_11I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900A")
      port map (M1=>'X', A1=>un1_r_6_4, B1=>un1_r_2_6, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_6_3, B0=>un1_r_3_7, C0=>'1', 
                D0=>'1', FCI=>un54_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un54_r_cry_6, F1=>un54_r_cry_5_0_S1, Q1=>open, 
                F0=>un54_r_cry_5_0_S0, Q0=>open);
    SLICE_12I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_4, B1=>un1_r_6_6, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_1_5, B0=>un1_r_6_5, C0=>'1', 
                D0=>'1', FCI=>un54_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un54_r_cry_8, F1=>un54_r_cry_7_0_S1, Q1=>open, 
                F0=>un54_r_cry_7_0_S0, Q0=>open);
    SLICE_13I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"560A")
      port map (M1=>'X', A1=>un1_r_6_8, B1=>num_c_31, C1=>num_c_30, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>r_2_4, B0=>un1_r_6_7, C0=>'1', D0=>'1', 
                FCI=>un54_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un54_r_cry_10, F1=>un54_r_cry_9_0_S1, Q1=>open, 
                F0=>un54_r_cry_9_0_S0, Q0=>open);
    SLICE_14I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"AC0C", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un48_r_cry_9_0_S0, B0=>un50_r_cry_9_0_S0, 
                C0=>un1_r_5_9, D0=>'1', FCI=>un54_r_cry_10, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un54_r_s_11_0_S0, Q0=>open);
    SLICE_15I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_14, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un48_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_16I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500A", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>'1', B1=>num_c_16, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_15, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un48_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un48_r_cry_2, F1=>un48_r_cry_1_0_S1, Q1=>open, 
                F0=>un48_r_cry_1_0_S0, Q0=>open);
    SLICE_17I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_3_7, B1=>un42_r_cry_1_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_4_8, 
                B0=>un42_r_cry_1_0_S0, C0=>'1', D0=>'1', FCI=>un48_r_cry_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un48_r_cry_4, 
                F1=>un48_r_cry_3_0_S1, Q1=>open, F0=>un48_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_18I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_1_5, B1=>un1_r_5_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_5_3, B0=>un1_r_2_6, C0=>'1', 
                D0=>'1', FCI=>un48_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un48_r_cry_6, F1=>un48_r_cry_5_0_S1, Q1=>open, 
                F0=>un48_r_cry_5_0_S0, Q0=>open);
    SLICE_19I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>r_2_4, B1=>un1_r_5_6, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un1_r_4, B0=>un1_r_5_5, C0=>'1', D0=>'1', 
                FCI=>un48_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un48_r_cry_8, F1=>un48_r_cry_7_0_S1, Q1=>open, 
                F0=>un48_r_cry_7_0_S0, Q0=>open);
    SLICE_20I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"360C", INIT1_INITVAL=>X"CA0A")
      port map (M1=>'X', A1=>un44_r_cry_7_0_S1, B1=>un42_r_cry_7_0_S1, 
                C1=>un1_r_4_8, D1=>'1', DI1=>'X', DI0=>'X', A0=>num_c_31, 
                B0=>un1_r_5_7, C0=>num_c_30, D0=>'1', FCI=>un48_r_cry_8, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>un48_r_cry_9_0_S1, Q1=>open, F0=>un48_r_cry_9_0_S0, 
                Q0=>open);
    SLICE_21I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300C")
      port map (M1=>'X', A1=>'1', B1=>num_c_16, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un42_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_22I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500A", INIT1_INITVAL=>X"5000")
      port map (M1=>'X', A1=>num_c_18, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_17, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un42_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un42_r_cry_2, F1=>un42_r_cry_1_0_S1, Q1=>open, 
                F0=>un42_r_cry_1_0_S0, Q0=>open);
    SLICE_23I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_2_6, B1=>un36_r_cry_1_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un36_r_cry_1_0_S0, 
                B0=>un1_r_3_7, C0=>'1', D0=>'1', FCI=>un42_r_cry_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un42_r_cry_4, 
                F1=>un42_r_cry_3_0_S1, Q1=>open, F0=>un42_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_24I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_4, B1=>un1_r_4_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_1_5, B0=>un1_r_4_3, C0=>'1', 
                D0=>'1', FCI=>un42_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un42_r_cry_6, F1=>un42_r_cry_5_0_S1, Q1=>open, 
                F0=>un42_r_cry_5_0_S0, Q0=>open);
    SLICE_25I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"560A")
      port map (M1=>'X', A1=>un1_r_4_6, B1=>num_c_31, C1=>num_c_30, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>r_2_4, B0=>un1_r_4_5, C0=>'1', D0=>'1', 
                FCI=>un42_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un42_r_cry_8, F1=>un42_r_cry_7_0_S1, Q1=>open, 
                F0=>un42_r_cry_7_0_S0, Q0=>open);
    SLICE_26I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"CA0A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un38_r_cry_7_0_S0, B0=>un36_r_cry_7_0_S0, 
                C0=>un1_r_3_7, D0=>'1', FCI=>un42_r_cry_8, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un42_r_s_9_0_S0, Q0=>open);
    SLICE_27I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_18, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un36_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_28I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"300C", INIT1_INITVAL=>X"5000")
      port map (M1=>'X', A1=>num_c_20, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>num_c_19, C0=>'1', D0=>'1', 
                FCI=>un36_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un36_r_cry_2, F1=>un36_r_cry_1_0_S1, Q1=>open, 
                F0=>un36_r_cry_1_0_S0, Q0=>open);
    SLICE_29I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_1_5, B1=>un30_r_cry_1_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un30_r_cry_1_0_S0, 
                B0=>un1_r_2_6, C0=>'1', D0=>'1', FCI=>un36_r_cry_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un36_r_cry_4, 
                F1=>un36_r_cry_3_0_S1, Q1=>open, F0=>un36_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_30I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_3_4, B1=>r_2_4, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un1_r_3_3, B0=>un1_r_4, C0=>'1', D0=>'1', 
                FCI=>un36_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un36_r_cry_6, F1=>un36_r_cry_5_0_S1, Q1=>open, 
                F0=>un36_r_cry_5_0_S0, Q0=>open);
    SLICE_31I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"360C", INIT1_INITVAL=>X"AC0C")
      port map (M1=>'X', A1=>un30_r_cry_5_0_S1, B1=>un32_r_cry_5_0_S1, 
                C1=>un1_r_2_6, D1=>'1', DI1=>'X', DI0=>'X', A0=>num_c_31, 
                B0=>un1_r_3_5, C0=>num_c_30, D0=>'1', FCI=>un36_r_cry_6, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>un36_r_cry_7_0_S1, Q1=>open, F0=>un36_r_cry_7_0_S0, 
                Q0=>open);
    SLICE_32I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_20, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un30_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_33I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"300C", INIT1_INITVAL=>X"5000")
      port map (M1=>'X', A1=>num_c_22, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>num_c_21, C0=>'1', D0=>'1', 
                FCI=>un30_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un30_r_cry_2, F1=>un30_r_cry_1_0_S1, Q1=>open, 
                F0=>un30_r_cry_1_0_S0, Q0=>open);
    SLICE_34I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_4, B1=>un24_r_cry_1_0_S1, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un24_r_cry_1_0_S0, B0=>un1_r_1_5, 
                C0=>'1', D0=>'1', FCI=>un30_r_cry_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un30_r_cry_4, F1=>un30_r_cry_3_0_S1, 
                Q1=>open, F0=>un30_r_cry_3_0_S0, Q0=>open);
    SLICE_35I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"360C")
      port map (M1=>'X', A1=>num_c_31, B1=>un1_r_2_4, C1=>num_c_30, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_2_3, B0=>r_2_4, C0=>'1', D0=>'1', 
                FCI=>un30_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un30_r_cry_6, F1=>un30_r_cry_5_0_S1, Q1=>open, 
                F0=>un30_r_cry_5_0_S0, Q0=>open);
    SLICE_36I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"CA0A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un26_r_cry_5_0_S0, B0=>un24_r_cry_5_0_S0, 
                C0=>un1_r_1_5, D0=>'1', FCI=>un30_r_cry_6, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un30_r_s_7_0_S0, Q0=>open);
    SLICE_37I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_22, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un24_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_38I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500A", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>'1', B1=>num_c_24, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_23, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un24_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un24_r_cry_2, F1=>un24_r_cry_1_0_S1, Q1=>open, 
                F0=>un24_r_cry_1_0_S0, Q0=>open);
    SLICE_39I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>r_2_4, B1=>un18_r_cry_1_0_S1, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un18_r_cry_1_0_S0, B0=>un1_r_4, 
                C0=>'1', D0=>'1', FCI=>un24_r_cry_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un24_r_cry_4, F1=>un24_r_cry_3_0_S1, 
                Q1=>open, F0=>un24_r_cry_3_0_S0, Q0=>open);
    SLICE_40I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"560A", INIT1_INITVAL=>X"AC0C")
      port map (M1=>'X', A1=>un18_r_cry_3_0_S1, B1=>un20_r_cry_3_0_S1, 
                C1=>un1_r_4, D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_1_3, 
                B0=>num_c_31, C0=>num_c_30, D0=>'1', FCI=>un24_r_cry_4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, 
                F1=>un24_r_cry_5_0_S1, Q1=>open, F0=>un24_r_cry_5_0_S0, 
                Q0=>open);
    SLICE_41I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300C")
      port map (M1=>'X', A1=>'1', B1=>num_c_24, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un18_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_42I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500A", INIT1_INITVAL=>X"5000")
      port map (M1=>'X', A1=>num_c_26, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_25, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un18_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un18_r_cry_2, F1=>un18_r_cry_1_0_S1, Q1=>open, 
                F0=>un18_r_cry_1_0_S0, Q0=>open);
    SLICE_43I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"6909", INIT1_INITVAL=>X"360C")
      port map (M1=>'X', A1=>num_c_31, B1=>un12_r_axbxc2, C1=>num_c_30, 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>num_c_27, B0=>num_c_26, 
                C0=>r_2_4, D0=>'1', FCI=>un18_r_cry_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un18_r_cry_4, F1=>un18_r_cry_3_0_S1, 
                Q1=>open, F0=>un18_r_cry_3_0_S0, Q0=>open);
    SLICE_44I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"CA0A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un12_r_axbxc3, B0=>un14_r_axbxc3, C0=>r_2_4, 
                D0=>'1', FCI=>un18_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, F0=>un18_r_s_5_0_S0, 
                Q0=>open);
    SLICE_45I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_2, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un84_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_46I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"300C", INIT1_INITVAL=>X"5000")
      port map (M1=>'X', A1=>num_c_4, B1=>un1_r_17, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>num_c_3, C0=>'1', D0=>'1', 
                FCI=>un84_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un84_r_cry_2, F1=>un84_r_cry_1_0_S1, Q1=>open, 
                F0=>un84_r_cry_1_0_S0, Q0=>open);
    SLICE_47I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un72_r_axb_17, B1=>un1_r_11_2, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_1, B0=>un1_r_17, C0=>'1', 
                D0=>'1', FCI=>un84_r_cry_2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un84_r_cry_4, F1=>un84_r_cry_3_0_S1, Q1=>open, 
                F0=>un84_r_cry_3_0_S0, Q0=>open);
    SLICE_48I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900A")
      port map (M1=>'X', A1=>un1_r_11_4, B1=>un1_r_7_11, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_3, B0=>un1_r_8_12, C0=>'1', 
                D0=>'1', FCI=>un84_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un84_r_cry_6, F1=>un84_r_cry_5_0_S1, Q1=>open, 
                F0=>un84_r_cry_5_0_S0, Q0=>open);
    SLICE_49I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900A")
      port map (M1=>'X', A1=>un1_r_11_6, B1=>un1_r_5_9, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_5, B0=>un1_r_6_10, C0=>'1', 
                D0=>'1', FCI=>un84_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un84_r_cry_8, F1=>un84_r_cry_7_0_S1, Q1=>open, 
                F0=>un84_r_cry_7_0_S0, Q0=>open);
    SLICE_50I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_3_7, B1=>un1_r_11_8, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_7, B0=>un1_r_4_8, C0=>'1', 
                D0=>'1', FCI=>un84_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un84_r_cry_10, F1=>un84_r_cry_9_0_S1, Q1=>open, 
                F0=>un84_r_cry_9_0_S0, Q0=>open);
    SLICE_51I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_1_5, B1=>un1_r_11_10, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_9, B0=>un1_r_2_6, C0=>'1', 
                D0=>'1', FCI=>un84_r_cry_10, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un84_r_cry_12, F1=>un84_r_cry_11_0_S1, Q1=>open, 
                F0=>un84_r_cry_11_0_S0, Q0=>open);
    SLICE_52I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_11_12, B1=>r_2_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_11, B0=>un1_r_4, C0=>'1', 
                D0=>'1', FCI=>un84_r_cry_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un84_r_cry_14, F1=>un84_r_cry_13_0_S1, Q1=>open, 
                F0=>un84_r_cry_13_0_S0, Q0=>open);
    SLICE_53I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"560A", 
                   INIT1_INITVAL=>X"CA0A")
      port map (M1=>'X', A1=>un80_r_cry_13_0_S1, B1=>un78_r_cry_13_0_S1, 
                C1=>un1_r_17, D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_11_13, 
                B0=>num_c_31, C0=>num_c_30, D0=>'1', FCI=>un84_r_cry_14, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un84_r_cry_16, 
                F1=>open, Q1=>open, F0=>un84_r_cry_15_0_S0, Q0=>open);
    SLICE_54I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"CA0A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un80_r_cry_15_0_S0, B0=>un78_r_cry_15_0_S0, 
                C0=>un1_r_17, D0=>'1', FCI=>un84_r_cry_16, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un84_r_s_17_0_S0, Q0=>open);
    SLICE_55I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_4, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un78_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_56I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500A", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>un72_r_axb_17, B1=>num_c_6, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>num_c_5, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un78_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un78_r_cry_2, F1=>un78_r_cry_1_0_S1, Q1=>open, 
                F0=>un78_r_cry_1_0_S0, Q0=>open);
    SLICE_57I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_8_12, B1=>un1_r_10_2, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_10_1, B0=>un72_r_axb_17, C0=>'1', 
                D0=>'1', FCI=>un78_r_cry_2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un78_r_cry_4, F1=>un78_r_cry_3_0_S1, Q1=>open, 
                F0=>un78_r_cry_3_0_S0, Q0=>open);
    SLICE_58I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900A")
      port map (M1=>'X', A1=>un1_r_10_4, B1=>un1_r_6_10, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_7_11, B0=>un1_r_10_3, C0=>'1', 
                D0=>'1', FCI=>un78_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un78_r_cry_6, F1=>un78_r_cry_5_0_S1, Q1=>open, 
                F0=>un78_r_cry_5_0_S0, Q0=>open);
    SLICE_59I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_4_8, B1=>un1_r_10_6, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_5_9, B0=>un1_r_10_5, C0=>'1', 
                D0=>'1', FCI=>un78_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un78_r_cry_8, F1=>un78_r_cry_7_0_S1, Q1=>open, 
                F0=>un78_r_cry_7_0_S0, Q0=>open);
    SLICE_60I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_2_6, B1=>un1_r_10_8, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_3_7, B0=>un1_r_10_7, C0=>'1', 
                D0=>'1', FCI=>un78_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un78_r_cry_10, F1=>un78_r_cry_9_0_S1, Q1=>open, 
                F0=>un78_r_cry_9_0_S0, Q0=>open);
    SLICE_61I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_4, B1=>un1_r_10_10, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_1_5, B0=>un1_r_10_9, C0=>'1', 
                D0=>'1', FCI=>un78_r_cry_10, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un78_r_cry_12, F1=>un78_r_cry_11_0_S1, Q1=>open, 
                F0=>un78_r_cry_11_0_S0, Q0=>open);
    SLICE_62I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"560A")
      port map (M1=>'X', A1=>un1_r_10_12, B1=>num_c_31, C1=>num_c_30, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>r_2_4, B0=>un1_r_10_11, C0=>'1', 
                D0=>'1', FCI=>un78_r_cry_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un78_r_cry_14, F1=>un78_r_cry_13_0_S1, Q1=>open, 
                F0=>un78_r_cry_13_0_S0, Q0=>open);
    SLICE_63I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"C005", 
                   INIT1_INITVAL=>X"CA0A")
      port map (M1=>'X', A1=>un74_r_cry_13_0_S1, B1=>un72_r_cry_13_0_S1, 
                C1=>un72_r_axb_17, D1=>'1', DI1=>'X', DI0=>'X', A0=>'1', 
                B0=>un78_r_axb_15, C0=>'1', D0=>'1', FCI=>un78_r_cry_14, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un78_r_cry_16, 
                F1=>open, Q1=>open, F0=>un78_r_cry_15_0_S0, Q0=>open);
    SLICE_64I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"CA0A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un74_r_cry_15_0_S0, B0=>un72_r_cry_15_0_S0, 
                C0=>un72_r_axb_17, D0=>'1', FCI=>un78_r_cry_16, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un78_r_s_17_0_S0, Q0=>open);
    SLICE_65I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300C")
      port map (M1=>'X', A1=>'1', B1=>num_c_6, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un72_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_66I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500A", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>'1', B1=>num_c_8, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_7, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un72_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un72_r_cry_2, F1=>un72_r_cry_1_0_S1, Q1=>open, 
                F0=>un72_r_cry_1_0_S0, Q0=>open);
    SLICE_67I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_7_11, B1=>un1_num_cry_1_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_8_12, 
                B0=>un1_num_cry_1_0_S0, C0=>'1', D0=>'1', FCI=>un72_r_cry_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un72_r_cry_4, 
                F1=>un72_r_cry_3_0_S1, Q1=>open, F0=>un72_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_68I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_5_9, B1=>un1_num_cry_3_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_num_cry_3_0_S0, 
                B0=>un1_r_6_10, C0=>'1', D0=>'1', FCI=>un72_r_cry_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un72_r_cry_6, 
                F1=>un72_r_cry_5_0_S1, Q1=>open, F0=>un72_r_cry_5_0_S0, 
                Q0=>open);
    SLICE_69I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900A")
      port map (M1=>'X', A1=>un1_num_cry_5_0_S1, B1=>un1_r_3_7, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_4_8, 
                B0=>un1_num_cry_5_0_S0, C0=>'1', D0=>'1', FCI=>un72_r_cry_6, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un72_r_cry_8, 
                F1=>un72_r_cry_7_0_S1, Q1=>open, F0=>un72_r_cry_7_0_S0, 
                Q0=>open);
    SLICE_70I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>un1_r_1_5, B1=>un1_num_cry_7_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_2_6, 
                B0=>un1_num_cry_7_0_S0, C0=>'1', D0=>'1', FCI=>un72_r_cry_8, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un72_r_cry_10, 
                F1=>un72_r_cry_9_0_S1, Q1=>open, F0=>un72_r_cry_9_0_S0, 
                Q0=>open);
    SLICE_71I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>r_2_4, B1=>un1_num_cry_9_0_S1, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_4, B0=>un1_num_cry_9_0_S0, 
                C0=>'1', D0=>'1', FCI=>un72_r_cry_10, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un72_r_cry_12, F1=>un72_r_cry_11_0_S1, 
                Q1=>open, F0=>un72_r_cry_11_0_S0, Q0=>open);
    SLICE_72I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"560A", INIT1_INITVAL=>X"C005")
      port map (M1=>'X', A1=>'1', B1=>un72_r_axb_14, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_num_cry_11_0_S0, B0=>num_c_31, 
                C0=>num_c_30, D0=>'1', FCI=>un72_r_cry_12, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un72_r_cry_14, F1=>un72_r_cry_13_0_S1, 
                Q1=>open, F0=>un72_r_cry_13_0_S0, Q0=>open);
    SLICE_73I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"A003", 
                   INIT1_INITVAL=>X"A003")
      port map (M1=>'X', A1=>un72_r_axb_16, B1=>'1', C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un72_r_axb_15, B0=>'1', C0=>'1', 
                D0=>'1', FCI=>un72_r_cry_14, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un72_r_cry_16, F1=>open, Q1=>open, 
                F0=>un72_r_cry_15_0_S0, Q0=>open);
    SLICE_74I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"C005", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>un72_r_axb_17, C0=>'1', D0=>'1', 
                FCI=>un72_r_cry_16, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>open, Q1=>open, F0=>un72_r_s_17_0_S0, Q0=>open);
    SLICE_75I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300F")
      port map (M1=>'X', A1=>'1', B1=>num_c_10, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un62_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_76I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"300F", 
                   INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_12, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>num_c_11, C0=>'1', D0=>'1', 
                FCI=>un62_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un62_r_cry_2, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_77I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_5_9, B1=>un54_r_cry_1_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_6_10, 
                B0=>un54_r_cry_1_0_S0, C0=>'1', D0=>'1', FCI=>un62_r_cry_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un62_r_cry_4, 
                F1=>un62_r_cry_3_0_S1, Q1=>open, F0=>un62_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_78I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_7_4, B1=>un1_r_3_7, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_7_3, B0=>un1_r_4_8, C0=>'1', 
                D0=>'1', FCI=>un62_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un62_r_cry_6, F1=>un62_r_cry_5_0_S1, Q1=>open, 
                F0=>un62_r_cry_5_0_S0, Q0=>open);
    SLICE_79I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_7_6, B1=>un1_r_1_5, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_2_6, B0=>un1_r_7_5, C0=>'1', 
                D0=>'1', FCI=>un62_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un62_r_cry_8, F1=>un62_r_cry_7_0_S1, Q1=>open, 
                F0=>un62_r_cry_7_0_S0, Q0=>open);
    SLICE_80I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"A503")
      port map (M1=>'X', A1=>un1_r_7_8, B1=>r_2_4, C1=>r_2_4, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_4, B0=>un1_r_7_7, C0=>'1', 
                D0=>'1', FCI=>un62_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un62_r_cry_10, F1=>un62_r_cry_9_0_S1, Q1=>open, 
                F0=>un62_r_cry_9_0_S0, Q0=>open);
    SLICE_81I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"E101", INIT1_INITVAL=>X"270A")
      port map (M1=>'X', A1=>un1_r_6_10, B1=>un54_r_cry_9_0_S1, 
                C1=>un56_r_cry_9_0_S1, D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>num_c_31, B0=>num_c_30, C0=>un1_r_7_9, D0=>'1', 
                FCI=>un62_r_cry_10, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>un62_r_cry_11_0_S1, Q1=>open, 
                F0=>un62_r_cry_11_0_S0, Q0=>open);
    SLICE_82I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>num_c_12, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un56_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_83I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"300F", 
                   INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_14, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>num_c_13, C0=>'1', D0=>'1', 
                FCI=>un56_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un56_r_cry_2, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_84I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_4_8, B1=>un48_r_cry_1_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un48_r_cry_1_0_S0, 
                B0=>un1_r_5_9, C0=>'1', D0=>'1', FCI=>un56_r_cry_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un56_r_cry_4, 
                F1=>un56_r_cry_3_0_S1, Q1=>open, F0=>un56_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_85I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_2_6, B1=>un1_r_6_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_6_3, B0=>un1_r_3_7, C0=>'1', 
                D0=>'1', FCI=>un56_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un56_r_cry_6, F1=>un56_r_cry_5_0_S1, Q1=>open, 
                F0=>un56_r_cry_5_0_S0, Q0=>open);
    SLICE_86I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_4, B1=>un1_r_6_6, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_1_5, B0=>un1_r_6_5, C0=>'1', 
                D0=>'1', FCI=>un56_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un56_r_cry_8, F1=>un56_r_cry_7_0_S1, Q1=>open, 
                F0=>un56_r_cry_7_0_S0, Q0=>open);
    SLICE_87I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"A503", INIT1_INITVAL=>X"E101")
      port map (M1=>'X', A1=>num_c_30, B1=>num_c_31, C1=>un1_r_6_8, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_6_7, B0=>r_2_4, C0=>r_2_4, 
                D0=>'1', FCI=>un56_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un56_r_cry_10, F1=>un56_r_cry_9_0_S1, Q1=>open, 
                F0=>un56_r_cry_9_0_S0, Q0=>open);
    SLICE_88I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"470C", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un48_r_cry_9_0_S0, B0=>un1_r_5_9, 
                C0=>un50_r_cry_9_0_S0, D0=>'1', FCI=>un56_r_cry_10, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un56_r_s_11_0_S0, Q0=>open);
    SLICE_89I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>num_c_14, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un50_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_90I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"500F", 
                   INIT1_INITVAL=>X"300C")
      port map (M1=>'X', A1=>'1', B1=>num_c_16, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_15, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un50_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un50_r_cry_2, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_91I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_3_7, B1=>un42_r_cry_1_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_4_8, 
                B0=>un42_r_cry_1_0_S0, C0=>'1', D0=>'1', FCI=>un50_r_cry_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un50_r_cry_4, 
                F1=>un50_r_cry_3_0_S1, Q1=>open, F0=>un50_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_92I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_5_4, B1=>un1_r_1_5, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_5_3, B0=>un1_r_2_6, C0=>'1', 
                D0=>'1', FCI=>un50_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un50_r_cry_6, F1=>un50_r_cry_5_0_S1, Q1=>open, 
                F0=>un50_r_cry_5_0_S0, Q0=>open);
    SLICE_93I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"A503")
      port map (M1=>'X', A1=>un1_r_5_6, B1=>r_2_4, C1=>r_2_4, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_4, B0=>un1_r_5_5, C0=>'1', 
                D0=>'1', FCI=>un50_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un50_r_cry_8, F1=>un50_r_cry_7_0_S1, Q1=>open, 
                F0=>un50_r_cry_7_0_S0, Q0=>open);
    SLICE_94I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"E101", INIT1_INITVAL=>X"270A")
      port map (M1=>'X', A1=>un1_r_4_8, B1=>un42_r_cry_7_0_S1, 
                C1=>un44_r_cry_7_0_S1, D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>num_c_30, B0=>num_c_31, C0=>un1_r_5_7, D0=>'1', 
                FCI=>un50_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>un50_r_cry_9_0_S1, Q1=>open, 
                F0=>un50_r_cry_9_0_S0, Q0=>open);
    SLICE_95I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300F")
      port map (M1=>'X', A1=>'1', B1=>num_c_16, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un44_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_96I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"500F", 
                   INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_18, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_17, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un44_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un44_r_cry_2, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_97I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un36_r_cry_1_0_S1, B1=>un1_r_2_6, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_3_7, 
                B0=>un36_r_cry_1_0_S0, C0=>'1', D0=>'1', FCI=>un44_r_cry_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un44_r_cry_4, 
                F1=>un44_r_cry_3_0_S1, Q1=>open, F0=>un44_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_98I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_4, B1=>un1_r_4_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_4_3, B0=>un1_r_1_5, C0=>'1', 
                D0=>'1', FCI=>un44_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un44_r_cry_6, F1=>un44_r_cry_5_0_S1, Q1=>open, 
                F0=>un44_r_cry_5_0_S0, Q0=>open);
    SLICE_99I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"C305", INIT1_INITVAL=>X"E101")
      port map (M1=>'X', A1=>num_c_30, B1=>num_c_31, C1=>un1_r_4_6, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>r_2_4, B0=>un1_r_4_5, C0=>r_2_4, 
                D0=>'1', FCI=>un44_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un44_r_cry_8, F1=>un44_r_cry_7_0_S1, Q1=>open, 
                F0=>un44_r_cry_7_0_S0, Q0=>open);
    SLICE_100I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"470C", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un36_r_cry_7_0_S0, B0=>un1_r_3_7, 
                C0=>un38_r_cry_7_0_S0, D0=>'1', FCI=>un44_r_cry_8, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un44_r_s_9_0_S0, Q0=>open);
    SLICE_101I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>num_c_2, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un86_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_102I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500F", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>un1_r_17, B1=>num_c_4, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_3, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un86_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un86_r_cry_2, F1=>un86_r_cry_1_0_S1, Q1=>open, 
                F0=>un86_r_cry_1_0_S0, Q0=>open);
    SLICE_103I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"720A", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_11_2, B1=>un72_r_axb_17, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_17, B0=>un78_r_cry_1_0_S0, 
                C0=>un80_r_cry_1_0_S0, D0=>'1', FCI=>un86_r_cry_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un86_r_cry_4, 
                F1=>un86_r_cry_3_0_S1, Q1=>open, F0=>un86_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_104I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_7_11, B1=>un1_r_11_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_8_12, B0=>un1_r_11_3, C0=>'1', 
                D0=>'1', FCI=>un86_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un86_r_cry_6, F1=>un86_r_cry_5_0_S1, Q1=>open, 
                F0=>un86_r_cry_5_0_S0, Q0=>open);
    SLICE_105I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_5_9, B1=>un1_r_11_6, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_5, B0=>un1_r_6_10, C0=>'1', 
                D0=>'1', FCI=>un86_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un86_r_cry_8, F1=>un86_r_cry_7_0_S1, Q1=>open, 
                F0=>un86_r_cry_7_0_S0, Q0=>open);
    SLICE_106I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_3_7, B1=>un1_r_11_8, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_7, B0=>un1_r_4_8, C0=>'1', 
                D0=>'1', FCI=>un86_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un86_r_cry_10, F1=>un86_r_cry_9_0_S1, Q1=>open, 
                F0=>un86_r_cry_9_0_S0, Q0=>open);
    SLICE_107I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_1_5, B1=>un1_r_11_10, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_11_9, B0=>un1_r_2_6, C0=>'1', 
                D0=>'1', FCI=>un86_r_cry_10, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un86_r_cry_12, F1=>un86_r_cry_11_0_S1, Q1=>open, 
                F0=>un86_r_cry_11_0_S0, Q0=>open);
    SLICE_108I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"A503")
      port map (M1=>'X', A1=>un1_r_11_12, B1=>r_2_4, C1=>r_2_4, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_4, B0=>un1_r_11_11, C0=>'1', 
                D0=>'1', FCI=>un86_r_cry_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un86_r_cry_14, F1=>un86_r_cry_13_0_S1, Q1=>open, 
                F0=>un86_r_cry_13_0_S0, Q0=>open);
    SLICE_109I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"E101", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>un84_r_axb_16, B1=>'1', C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>num_c_31, B0=>num_c_30, 
                C0=>un1_r_11_13, D0=>'1', FCI=>un86_r_cry_14, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un86_r_cry_16, F1=>open, Q1=>open, 
                F0=>un86_r_cry_15_0_S0, Q0=>open);
    SLICE_110I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"270A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un1_r_17, B0=>un78_r_cry_15_0_S0, 
                C0=>un80_r_cry_15_0_S0, D0=>'1', FCI=>un86_r_cry_16, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un86_r_s_17_0_S0, Q0=>open);
    SLICE_111I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300F")
      port map (M1=>'X', A1=>'1', B1=>num_c_8, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un1_num_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_112I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500F", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>'1', B1=>num_c_10, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_9, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un1_num_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un1_num_cry_2, F1=>un1_num_cry_1_0_S1, Q1=>open, 
                F0=>un1_num_cry_1_0_S0, Q0=>open);
    SLICE_113I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"960A", INIT1_INITVAL=>X"960A")
      port map (M1=>'X', A1=>un60_r_cry_1_0_S1, B1=>un1_r_8_12, C1=>un1_r_6_10, 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un60_r_cry_1_0_S0, 
                B0=>un1_r_8_12, C0=>un1_r_7_11, D0=>'1', FCI=>un1_num_cry_2, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un1_num_cry_4, 
                F1=>un1_num_cry_3_0_S1, Q1=>open, F0=>un1_num_cry_3_0_S0, 
                Q0=>open);
    SLICE_114I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"9606", INIT1_INITVAL=>X"9606")
      port map (M1=>'X', A1=>un1_r_4_8, B1=>un1_r_8_12, C1=>un1_r_8_4, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_8_12, B0=>un1_r_5_9, 
                C0=>un1_r_8_3, D0=>'1', FCI=>un1_num_cry_4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un1_num_cry_6, F1=>un1_num_cry_5_0_S1, 
                Q1=>open, F0=>un1_num_cry_5_0_S0, Q0=>open);
    SLICE_115I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"9606", INIT1_INITVAL=>X"9606")
      port map (M1=>'X', A1=>un1_r_8_12, B1=>un1_r_2_6, C1=>un1_r_8_6, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_3_7, B0=>un1_r_8_12, 
                C0=>un1_r_8_5, D0=>'1', FCI=>un1_num_cry_6, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un1_num_cry_8, F1=>un1_num_cry_7_0_S1, 
                Q1=>open, F0=>un1_num_cry_7_0_S0, Q0=>open);
    SLICE_116I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"9606", INIT1_INITVAL=>X"9606")
      port map (M1=>'X', A1=>un1_r_4, B1=>un1_r_8_12, C1=>un1_r_8_8, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_1_5, B0=>un1_r_8_12, 
                C0=>un1_r_8_7, D0=>'1', FCI=>un1_num_cry_8, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un1_num_cry_10, 
                F1=>un1_num_cry_9_0_S1, Q1=>open, F0=>un1_num_cry_9_0_S0, 
                Q0=>open);
    SLICE_117I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"690A", INIT1_INITVAL=>X"690A")
      port map (M1=>'X', A1=>un1_r_8_10, B1=>un1_r_8_12, C1=>CO1_1, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_8_9, B0=>un1_r_8_12, C0=>r_2_4, 
                D0=>'1', FCI=>un1_num_cry_10, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un1_num_cry_12, F1=>un72_r_axb_14, Q1=>open, 
                F0=>un1_num_cry_11_0_S0, Q0=>open);
    SLICE_118I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"C305", INIT1_INITVAL=>X"A003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un1_r_8_12, B0=>un1_r_8_11, C0=>un1_r_8_12, 
                D0=>'1', FCI=>un1_num_cry_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un1_num_cry_14, F1=>un72_r_axb_16, Q1=>open, 
                F0=>un72_r_axb_15, Q0=>open);
    SLICE_119I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"A003", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un1_num_cry_14, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>open, Q1=>open, F0=>un72_r_axb_17, Q0=>open);
    SLICE_120I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_0, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un1_num_1_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_121I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"500A", 
                   INIT1_INITVAL=>X"5555")
      port map (M1=>'X', A1=>num_c_2, B1=>un1_r_17, C1=>un78_r_s_17_0_S0, 
                D1=>un80_r_s_17_0_S0, DI1=>'X', DI0=>'X', A0=>num_c_1, B0=>'1', 
                C0=>'1', D0=>'1', FCI=>un1_num_1_cry_0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un1_num_1_cry_2, F1=>open, Q1=>open, 
                F0=>open, Q0=>open);
    SLICE_122I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"960C", INIT1_INITVAL=>X"960C")
      port map (M1=>'X', A1=>N_16_i, B1=>un1_r_12_2, C1=>un1_r_17, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>N_16_i, B0=>un1_r_12_1, C0=>un1_r_1_17, 
                D0=>'1', FCI=>un1_num_1_cry_2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un1_num_1_cry_4, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    SLICE_123I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"960C", INIT1_INITVAL=>X"960A")
      port map (M1=>'X', A1=>un1_r_12_4, B1=>N_16_i, C1=>un1_r_8_12, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>N_16_i, B0=>un1_r_12_3, 
                C0=>un72_r_axb_17, D0=>'1', FCI=>un1_num_1_cry_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un1_num_1_cry_6, F1=>open, 
                Q1=>open, F0=>open, Q0=>open);
    SLICE_124I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"960A", INIT1_INITVAL=>X"960A")
      port map (M1=>'X', A1=>un1_r_12_6, B1=>N_16_i, C1=>un1_r_6_10, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_12_5, B0=>N_16_i, C0=>un1_r_7_11, 
                D0=>'1', FCI=>un1_num_1_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un1_num_1_cry_8, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    SLICE_125I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"960A", INIT1_INITVAL=>X"960A")
      port map (M1=>'X', A1=>un1_r_12_8, B1=>N_16_i, C1=>un1_r_4_8, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_12_7, B0=>N_16_i, C0=>un1_r_5_9, 
                D0=>'1', FCI=>un1_num_1_cry_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un1_num_1_cry_10, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    SLICE_126I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"960A", INIT1_INITVAL=>X"960C")
      port map (M1=>'X', A1=>N_16_i, B1=>un1_r_12_10, C1=>un1_r_2_6, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_12_9, B0=>N_16_i, C0=>un1_r_3_7, 
                D0=>'1', FCI=>un1_num_1_cry_10, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un1_num_1_cry_12, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    SLICE_127I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"960C", INIT1_INITVAL=>X"960C")
      port map (M1=>'X', A1=>N_16_i, B1=>un1_r_12_12, C1=>un1_r_4, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>N_16_i, B0=>un1_r_12_11, C0=>un1_r_1_5, 
                D0=>'1', FCI=>un1_num_1_cry_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un1_num_1_cry_14, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    SLICE_128I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"690A", INIT1_INITVAL=>X"690A")
      port map (M1=>'X', A1=>un1_r_12_14, B1=>N_16_i, C1=>CO1_1, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_12_13, B0=>N_16_i, C0=>r_2_4, 
                D0=>'1', FCI=>un1_num_1_cry_14, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un1_num_1_cry_16, F1=>open, Q1=>open, F0=>open, 
                Q0=>open);
    SLICE_129I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"900C", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un1_r_12_15, B0=>N_16_i, C0=>'1', D0=>'1', 
                FCI=>un1_num_1_cry_16, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>open, Q1=>open, F0=>un1_num_1_s_17_0_S0, 
                Q0=>open);
    SLICE_130I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300F")
      port map (M1=>'X', A1=>'1', B1=>num_c_18, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un38_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_131I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"300F", 
                   INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_20, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>num_c_19, C0=>'1', D0=>'1', 
                FCI=>un38_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un38_r_cry_2, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_132I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un30_r_cry_1_0_S1, B1=>un1_r_1_5, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un30_r_cry_1_0_S0, 
                B0=>un1_r_2_6, C0=>'1', D0=>'1', FCI=>un38_r_cry_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un38_r_cry_4, 
                F1=>un38_r_cry_3_0_S1, Q1=>open, F0=>un38_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_133I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"C305")
      port map (M1=>'X', A1=>r_2_4, B1=>un1_r_3_4, C1=>r_2_4, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_4, B0=>un1_r_3_3, C0=>'1', 
                D0=>'1', FCI=>un38_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un38_r_cry_6, F1=>un38_r_cry_5_0_S1, Q1=>open, 
                F0=>un38_r_cry_5_0_S0, Q0=>open);
    SLICE_134I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"E101", INIT1_INITVAL=>X"470C")
      port map (M1=>'X', A1=>un30_r_cry_5_0_S1, B1=>un1_r_2_6, 
                C1=>un32_r_cry_5_0_S1, D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>num_c_30, B0=>num_c_31, C0=>un1_r_3_5, D0=>'1', 
                FCI=>un38_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>un38_r_cry_7_0_S1, Q1=>open, 
                F0=>un38_r_cry_7_0_S0, Q0=>open);
    SLICE_135I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>num_c_20, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un32_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_136I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"500F", 
                   INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_22, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_21, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un32_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un32_r_cry_2, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_137I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un24_r_cry_1_0_S1, B1=>un1_r_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un24_r_cry_1_0_S0, B0=>un1_r_1_5, 
                C0=>'1', D0=>'1', FCI=>un32_r_cry_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un32_r_cry_4, F1=>un32_r_cry_3_0_S1, 
                Q1=>open, F0=>un32_r_cry_3_0_S0, Q0=>open);
    SLICE_138I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"A503", INIT1_INITVAL=>X"E101")
      port map (M1=>'X', A1=>num_c_31, B1=>num_c_30, C1=>un1_r_2_4, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_2_3, B0=>r_2_4, C0=>r_2_4, 
                D0=>'1', FCI=>un32_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un32_r_cry_6, F1=>un32_r_cry_5_0_S1, Q1=>open, 
                F0=>un32_r_cry_5_0_S0, Q0=>open);
    SLICE_139I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"270A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un1_r_1_5, B0=>un24_r_cry_5_0_S0, 
                C0=>un26_r_cry_5_0_S0, D0=>'1', FCI=>un32_r_cry_6, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un32_r_s_7_0_S0, Q0=>open);
    SLICE_140I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>num_c_22, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un26_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_141I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"500F", 
                   INIT1_INITVAL=>X"300C")
      port map (M1=>'X', A1=>'1', B1=>num_c_24, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_23, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un26_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un26_r_cry_2, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_142I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"900C")
      port map (M1=>'X', A1=>r_2_4, B1=>un18_r_cry_1_0_S1, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un18_r_cry_1_0_S0, B0=>un1_r_4, 
                C0=>'1', D0=>'1', FCI=>un26_r_cry_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un26_r_cry_4, F1=>un26_r_cry_3_0_S1, 
                Q1=>open, F0=>un26_r_cry_3_0_S0, Q0=>open);
    SLICE_143I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"E101", INIT1_INITVAL=>X"470C")
      port map (M1=>'X', A1=>un18_r_cry_3_0_S1, B1=>un1_r_4, 
                C1=>un20_r_cry_3_0_S1, D1=>'1', DI1=>'X', DI0=>'X', 
                A0=>num_c_31, B0=>num_c_30, C0=>un1_r_1_3, D0=>'1', 
                FCI=>un26_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>un26_r_cry_5_0_S1, Q1=>open, 
                F0=>un26_r_cry_5_0_S0, Q0=>open);
    SLICE_144I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300F")
      port map (M1=>'X', A1=>'1', B1=>num_c_24, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un20_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_145I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", INIT0_INITVAL=>X"500F", 
                   INIT1_INITVAL=>X"500A")
      port map (M1=>'X', A1=>num_c_26, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_25, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un20_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un20_r_cry_2, F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_146I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"9609", INIT1_INITVAL=>X"A90A")
      port map (M1=>'X', A1=>un12_r_axbxc2, B1=>num_c_31, C1=>num_c_30, 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>num_c_27, B0=>num_c_26, 
                C0=>r_2_4, D0=>'1', FCI=>un20_r_cry_2, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un20_r_cry_4, F1=>un20_r_cry_3_0_S1, 
                Q1=>open, F0=>un20_r_cry_3_0_S0, Q0=>open);
    SLICE_147I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"270A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>r_2_4, B0=>un14_r_axbxc3, C0=>un12_r_axbxc3, 
                D0=>'1', FCI=>un20_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, F0=>un20_r_s_5_0_S0, 
                Q0=>open);
    SLICE_148I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>num_c_4, B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un80_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_149I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500F", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>un72_r_axb_17, B1=>num_c_6, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>num_c_5, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un80_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un80_r_cry_2, F1=>un80_r_cry_1_0_S1, Q1=>open, 
                F0=>un80_r_cry_1_0_S0, Q0=>open);
    SLICE_150I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"740C", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_8_12, B1=>un1_r_10_2, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un72_r_cry_1_0_S0, B0=>un72_r_axb_17, 
                C0=>un74_r_cry_1_0_S0, D0=>'1', FCI=>un80_r_cry_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un80_r_cry_4, 
                F1=>un80_r_cry_3_0_S1, Q1=>open, F0=>un80_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_151I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_6_10, B1=>un1_r_10_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_7_11, B0=>un1_r_10_3, C0=>'1', 
                D0=>'1', FCI=>un80_r_cry_4, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un80_r_cry_6, F1=>un80_r_cry_5_0_S1, Q1=>open, 
                F0=>un80_r_cry_5_0_S0, Q0=>open);
    SLICE_152I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_10_6, B1=>un1_r_4_8, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_10_5, B0=>un1_r_5_9, C0=>'1', 
                D0=>'1', FCI=>un80_r_cry_6, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un80_r_cry_8, F1=>un80_r_cry_7_0_S1, Q1=>open, 
                F0=>un80_r_cry_7_0_S0, Q0=>open);
    SLICE_153I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_2_6, B1=>un1_r_10_8, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_3_7, B0=>un1_r_10_7, C0=>'1', 
                D0=>'1', FCI=>un80_r_cry_8, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un80_r_cry_10, F1=>un80_r_cry_9_0_S1, Q1=>open, 
                F0=>un80_r_cry_9_0_S0, Q0=>open);
    SLICE_154I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_r_4, B1=>un1_r_10_10, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_r_1_5, B0=>un1_r_10_9, C0=>'1', 
                D0=>'1', FCI=>un80_r_cry_10, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un80_r_cry_12, F1=>un80_r_cry_11_0_S1, Q1=>open, 
                F0=>un80_r_cry_11_0_S0, Q0=>open);
    SLICE_155I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"C305", INIT1_INITVAL=>X"E101")
      port map (M1=>'X', A1=>num_c_31, B1=>num_c_30, C1=>un1_r_10_12, D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>r_2_4, B0=>un1_r_10_11, C0=>r_2_4, 
                D0=>'1', FCI=>un80_r_cry_12, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un80_r_cry_14, F1=>un80_r_cry_13_0_S1, Q1=>open, 
                F0=>un80_r_cry_13_0_S0, Q0=>open);
    SLICE_156I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"300F", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>un78_r_axb_16, B1=>'1', C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>'1', B0=>un78_r_axb_15, C0=>'1', 
                D0=>'1', FCI=>un80_r_cry_14, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un80_r_cry_16, F1=>open, Q1=>open, 
                F0=>un80_r_cry_15_0_S0, Q0=>open);
    SLICE_157I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"270A", INIT1_INITVAL=>X"5003")
      port map (M1=>'X', A1=>'1', B1=>'1', C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>un72_r_axb_17, B0=>un72_r_cry_15_0_S0, 
                C0=>un74_r_cry_15_0_S0, D0=>'1', FCI=>un80_r_cry_16, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>open, F1=>open, Q1=>open, 
                F0=>un80_r_s_17_0_S0, Q0=>open);
    SLICE_158I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"5003", INIT1_INITVAL=>X"300F")
      port map (M1=>'X', A1=>'1', B1=>num_c_6, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>'1', B0=>'1', C0=>'1', D0=>'1', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un74_r_cry_0, 
                F1=>open, Q1=>open, F0=>open, Q0=>open);
    SLICE_159I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"500F", INIT1_INITVAL=>X"3000")
      port map (M1=>'X', A1=>'1', B1=>num_c_8, C1=>'1', D1=>'1', DI1=>'X', 
                DI0=>'X', A0=>num_c_7, B0=>'1', C0=>'1', D0=>'1', 
                FCI=>un74_r_cry_0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>un74_r_cry_2, F1=>un74_r_cry_1_0_S1, Q1=>open, 
                F0=>un74_r_cry_1_0_S0, Q0=>open);
    SLICE_160I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_num_cry_1_0_S1, B1=>un1_r_7_11, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_num_cry_1_0_S0, 
                B0=>un1_r_8_12, C0=>'1', D0=>'1', FCI=>un74_r_cry_2, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un74_r_cry_4, 
                F1=>un74_r_cry_3_0_S1, Q1=>open, F0=>un74_r_cry_3_0_S0, 
                Q0=>open);
    SLICE_161I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_5_9, B1=>un1_num_cry_3_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_num_cry_3_0_S0, 
                B0=>un1_r_6_10, C0=>'1', D0=>'1', FCI=>un74_r_cry_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>un74_r_cry_6, 
                F1=>un74_r_cry_5_0_S1, Q1=>open, F0=>un74_r_cry_5_0_S0, 
                Q0=>open);
    SLICE_162I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600A")
      port map (M1=>'X', A1=>un1_num_cry_5_0_S1, B1=>un1_r_3_7, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_4_8, 
                B0=>un1_num_cry_5_0_S0, C0=>'1', D0=>'1', FCI=>un74_r_cry_6, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un74_r_cry_8, 
                F1=>un74_r_cry_7_0_S1, Q1=>open, F0=>un74_r_cry_7_0_S0, 
                Q0=>open);
    SLICE_163I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600C", INIT1_INITVAL=>X"600C")
      port map (M1=>'X', A1=>un1_r_1_5, B1=>un1_num_cry_7_0_S1, C1=>'1', 
                D1=>'1', DI1=>'X', DI0=>'X', A0=>un1_r_2_6, 
                B0=>un1_num_cry_7_0_S0, C0=>'1', D0=>'1', FCI=>un74_r_cry_8, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>un74_r_cry_10, 
                F1=>un74_r_cry_9_0_S1, Q1=>open, F0=>un74_r_cry_9_0_S0, 
                Q0=>open);
    SLICE_164I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"600A", INIT1_INITVAL=>X"900A")
      port map (M1=>'X', A1=>un1_num_cry_9_0_S1, B1=>r_2_4, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_num_cry_9_0_S0, B0=>un1_r_4, 
                C0=>'1', D0=>'1', FCI=>un74_r_cry_10, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un74_r_cry_12, F1=>un74_r_cry_11_0_S1, 
                Q1=>open, F0=>un74_r_cry_11_0_S0, Q0=>open);
    SLICE_165I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"A90A", INIT1_INITVAL=>X"300C")
      port map (M1=>'X', A1=>'1', B1=>un72_r_axb_14, C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>un1_num_cry_11_0_S0, B0=>num_c_31, 
                C0=>num_c_30, D0=>'1', FCI=>un74_r_cry_12, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', FCO=>un74_r_cry_14, F1=>un74_r_cry_13_0_S1, 
                Q1=>open, F0=>un74_r_cry_13_0_S0, Q0=>open);
    SLICE_166I: SCCU2C
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>X"300C", INIT1_INITVAL=>X"500F")
      port map (M1=>'X', A1=>un72_r_axb_16, B1=>'1', C1=>'1', D1=>'1', 
                DI1=>'X', DI0=>'X', A0=>'1', B0=>un72_r_axb_15, C0=>'1', 
                D0=>'1', FCI=>un74_r_cry_14, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>un74_r_cry_16, F1=>open, Q1=>open, 
                F0=>un74_r_cry_15_0_S0, Q0=>open);
    SLICE_167I: SLOGICB
      generic map (LUT0_INITVAL=>X"B22B", LUT1_INITVAL=>X"3322")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>num_c_26, B1=>num_c_28, 
                C1=>'X', D1=>num_c_27, DI1=>'X', DI0=>'X', A0=>un12_r_c3, 
                B0=>CO1_1, C0=>num_c_29, D0=>num_c_28, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>un12_r_c3, Q1=>open, 
                OFX0=>open, F0=>un14_r_c4, Q0=>open);
    SLICE_168I: SLOGICB
      generic map (LUT0_INITVAL=>X"11DD", LUT1_INITVAL=>X"E2E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un56_r_s_11_0_S0, 
                B1=>un1_r_6_10, C1=>un54_r_s_11_0_S0, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>un62_r_cry_11_0_S1, B0=>un1_r_7_11, C0=>'X', 
                D0=>un60_r_cry_11_0_S1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>un1_r_7_11, Q1=>open, OFX0=>open, 
                F0=>result_c_5, Q0=>open);
    SLICE_169I: SLOGICB
      generic map (LUT0_INITVAL=>X"E2E2", LUT1_INITVAL=>X"F5A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un72_r_axb_17, B1=>'X', 
                C1=>un72_r_s_17_0_S0, D1=>un74_r_s_17_0_S0, DI1=>'X', DI0=>'X', 
                A0=>un80_r_cry_13_0_S1, B0=>un1_r_17, C0=>un78_r_cry_13_0_S1, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>un1_r_17, Q1=>open, OFX0=>open, F0=>un84_r_axb_16, 
                Q0=>open);
    SLICE_170I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE44", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un50_r_cry_9_0_S1, 
                B1=>un48_r_cry_9_0_S1, C1=>un1_r_5_9, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>un1_r_6_10, B0=>un56_r_cry_3_0_S0, C0=>'X', 
                D0=>un54_r_cry_3_0_S0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>un1_r_6_10, Q1=>open, OFX0=>open, 
                F0=>un1_r_7_3, Q0=>open);
    SLICE_171I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8", LUT1_INITVAL=>X"BB88")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un42_r_s_9_0_S0, 
                B1=>un1_r_4_8, C1=>'X', D1=>un44_r_s_9_0_S0, DI1=>'X', 
                DI0=>'X', A0=>un48_r_cry_3_0_S0, B0=>un1_r_5_9, 
                C0=>un50_r_cry_3_0_S0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>un1_r_5_9, Q1=>open, OFX0=>open, 
                F0=>un1_r_6_3, Q0=>open);
    SLICE_172I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8", LUT1_INITVAL=>X"EE44")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un1_r_3_7, 
                B1=>un38_r_cry_7_0_S1, C1=>'X', D1=>un36_r_cry_7_0_S1, 
                DI1=>'X', DI0=>'X', A0=>un1_r_4_8, B0=>un42_r_cry_3_0_S0, 
                C0=>un44_r_cry_3_0_S0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>un1_r_4_8, Q1=>open, OFX0=>open, 
                F0=>un1_r_5_3, Q0=>open);
    SLICE_173I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8", LUT1_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un1_r_2_6, B1=>'X', 
                C1=>un32_r_s_7_0_S0, D1=>un30_r_s_7_0_S0, DI1=>'X', DI0=>'X', 
                A0=>un36_r_cry_3_0_S0, B0=>un1_r_3_7, C0=>un38_r_cry_3_0_S0, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>un1_r_3_7, Q1=>open, OFX0=>open, F0=>un1_r_4_3, Q0=>open);
    SLICE_174I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8", LUT1_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un1_r_1_5, B1=>'X', 
                C1=>un26_r_cry_5_0_S1, D1=>un24_r_cry_5_0_S1, DI1=>'X', 
                DI0=>'X', A0=>un30_r_cry_3_0_S0, B0=>un1_r_2_6, 
                C0=>un32_r_cry_3_0_S0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>un1_r_2_6, Q1=>open, OFX0=>open, 
                F0=>un1_r_3_3, Q0=>open);
    SLICE_175I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAF0", LUT1_INITVAL=>X"F0CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>un20_r_s_5_0_S0, 
                C1=>un18_r_s_5_0_S0, D1=>un1_r_4, DI1=>'X', DI0=>'X', 
                A0=>un24_r_cry_3_0_S0, B0=>'X', C0=>un26_r_cry_3_0_S0, 
                D0=>un1_r_1_5, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>un1_r_1_5, Q1=>open, OFX0=>open, F0=>un1_r_2_3, 
                Q0=>open);
    SLICE_176I: SLOGICB
      generic map (LUT0_INITVAL=>X"FC30", LUT1_INITVAL=>X"6C39")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>r_2_4, B1=>un14_r_axb4, 
                C1=>un14_r_c4, D1=>un12_r_c4, DI1=>'X', DI0=>'X', A0=>'X', 
                B0=>un1_r_4, C0=>un20_r_cry_3_0_S0, D0=>un18_r_cry_3_0_S0, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>un1_r_4, 
                Q1=>open, OFX0=>open, F0=>un1_r_1_3, Q0=>open);
    SLICE_177I: SLOGICB
      generic map (LUT0_INITVAL=>X"E8B2", LUT1_INITVAL=>X"93C6")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>r_2_4, B1=>un14_r_axb4, 
                C1=>un14_r_c4, D1=>un12_r_c4, DI1=>'X', DI0=>'X', 
                A0=>un12_r_c3, B0=>num_c_29, C0=>CO1_1, D0=>num_c_28, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>result_c_13, 
                Q1=>open, OFX0=>open, F0=>un12_r_c4, Q0=>open);
    SLICE_178I: SLOGICB
      generic map (LUT0_INITVAL=>X"E4E4", LUT1_INITVAL=>X"DD88")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un1_r_17, 
                B1=>un78_r_s_17_0_S0, C1=>'X', D1=>un80_r_s_17_0_S0, DI1=>'X', 
                DI0=>'X', A0=>un1_r_1_17, B0=>un86_r_s_17_0_S0, 
                C0=>un84_r_s_17_0_S0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>un1_r_1_17, Q1=>open, OFX0=>open, 
                F0=>N_16_i, Q0=>open);
    SLICE_179I: SLOGICB
      generic map (LUT0_INITVAL=>X"6996", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>num_c_30, B1=>num_c_31, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>un12_r_c3, 
                B0=>num_c_29, C0=>num_c_28, D0=>CO1_1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>CO1_1, Q1=>open, 
                OFX0=>open, F0=>un14_r_axbxc3, Q0=>open);
    SLICE_180I: SLOGICB
      generic map (LUT0_INITVAL=>X"F3E2", LUT1_INITVAL=>X"3366")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>num_c_29, B1=>num_c_30, 
                C1=>'X', D1=>num_c_28, DI1=>'X', DI0=>'X', A0=>num_c_29, 
                B0=>num_c_30, C0=>num_c_31, D0=>num_c_28, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>un14_r_axb4, Q1=>open, 
                OFX0=>open, F0=>r_2_4, Q0=>open);
    SLICE_181I: SLOGICB
      generic map (LUT0_INITVAL=>X"11DD", LUT1_INITVAL=>X"E2E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un26_r_cry_3_0_S1, 
                B1=>un1_r_1_5, C1=>un24_r_cry_3_0_S1, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>un20_r_s_5_0_S0, B0=>un1_r_4, C0=>'X', 
                D0=>un18_r_s_5_0_S0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>un1_r_2_4, Q1=>open, OFX0=>open, 
                F0=>result_c_12, Q0=>open);
    SLICE_182I: SLOGICB
      generic map (LUT0_INITVAL=>X"9669", LUT1_INITVAL=>X"C9C9")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>num_c_26, B1=>num_c_28, 
                C1=>num_c_27, D1=>'X', DI1=>'X', DI0=>'X', A0=>un12_r_c3, 
                B0=>num_c_28, C0=>CO1_1, D0=>num_c_29, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>un12_r_axbxc2, Q1=>open, 
                OFX0=>open, F0=>un12_r_axbxc3, Q0=>open);
    SLICE_183I: SLOGICB
      generic map (LUT0_INITVAL=>X"05AF", LUT1_INITVAL=>X"B8B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un30_r_cry_5_0_S0, 
                B1=>un1_r_2_6, C1=>un32_r_cry_5_0_S0, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>un1_r_1_5, B0=>'X', C0=>un26_r_cry_5_0_S1, 
                D0=>un24_r_cry_5_0_S1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>un1_r_3_5, Q1=>open, OFX0=>open, 
                F0=>result_c_11, Q0=>open);
    SLICE_184I: SLOGICB
      generic map (LUT0_INITVAL=>X"4477", LUT1_INITVAL=>X"CCAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un32_r_cry_3_0_S1, 
                B1=>un30_r_cry_3_0_S1, C1=>'X', D1=>un1_r_2_6, DI1=>'X', 
                DI0=>'X', A0=>un30_r_s_7_0_S0, B0=>un1_r_2_6, C0=>'X', 
                D0=>un32_r_s_7_0_S0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>un1_r_3_4, Q1=>open, OFX0=>open, 
                F0=>result_c_10, Q0=>open);
    SLICE_185I: SLOGICB
      generic map (LUT0_INITVAL=>X"4477", LUT1_INITVAL=>X"CFC0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>un42_r_cry_7_0_S0, 
                C1=>un1_r_4_8, D1=>un44_r_cry_7_0_S0, DI1=>'X', DI0=>'X', 
                A0=>un42_r_s_9_0_S0, B0=>un1_r_4_8, C0=>'X', 
                D0=>un44_r_s_9_0_S0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>un1_r_5_7, Q1=>open, OFX0=>open, 
                F0=>result_c_8, Q0=>open);
    SLICE_186I: SLOGICB
      generic map (LUT0_INITVAL=>X"1B1B", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un38_r_cry_5_0_S1, 
                B1=>un36_r_cry_5_0_S1, C1=>un1_r_3_7, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>un1_r_3_7, B0=>un38_r_cry_7_0_S1, 
                C0=>un36_r_cry_7_0_S1, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>un1_r_4_6, Q1=>open, OFX0=>open, 
                F0=>result_c_9, Q0=>open);
    SLICE_187I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA50", LUT1_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>un1_r_3_7, B1=>'X', 
                C1=>un38_r_cry_3_0_S1, D1=>un36_r_cry_3_0_S1, DI1=>'X', 
                DI0=>'X', A0=>un1_r_3_7, B0=>'X', C0=>un38_r_cry_5_0_S0, 
                D0=>un36_r_cry_5_0_S0, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>un1_r_4_4, Q1=>open, OFX0=>open, F0=>un1_r_4_5, 
                Q0=>open);
    SLICE_188I: SLOGICB
      generic map (LUT0_INITVAL=>X"AACC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_cry_13_0_S1, 
                B0=>un74_r_cry_13_0_S1, C0=>'X', D0=>un72_r_axb_17, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un78_r_axb_16, Q0=>open);
    SLICE_189I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_7_11, B0=>'X', 
                C0=>un62_r_cry_3_0_S0, D0=>un60_r_cry_3_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_8_3, Q0=>open);
    SLICE_190I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un62_r_cry_3_0_S1, 
                B0=>un60_r_cry_3_0_S1, C0=>un1_r_7_11, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_8_4, Q0=>open);
    SLICE_191I: SLOGICB
      generic map (LUT0_INITVAL=>X"F3C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un1_r_7_11, 
                C0=>un60_r_cry_5_0_S0, D0=>un62_r_cry_5_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_8_5, Q0=>open);
    SLICE_192I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un62_r_cry_5_0_S1, 
                B0=>un1_r_7_11, C0=>'X', D0=>un60_r_cry_5_0_S1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_8_6, Q0=>open);
    SLICE_193I: SLOGICB
      generic map (LUT0_INITVAL=>X"FC30")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un1_r_7_11, 
                C0=>un62_r_cry_7_0_S0, D0=>un60_r_cry_7_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_8_7, Q0=>open);
    SLICE_194I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un60_r_cry_7_0_S1, 
                B0=>un62_r_cry_7_0_S1, C0=>un1_r_7_11, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_8_8, Q0=>open);
    SLICE_195I: SLOGICB
      generic map (LUT0_INITVAL=>X"F5A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_7_11, B0=>'X', 
                C0=>un60_r_cry_9_0_S0, D0=>un62_r_cry_9_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_8_9, Q0=>open);
    SLICE_196I: SLOGICB
      generic map (LUT0_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_7_11, 
                B0=>un62_r_cry_9_0_S1, C0=>un60_r_cry_9_0_S1, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_8_10, Q0=>open);
    SLICE_197I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_7_11, 
                B0=>un60_r_cry_11_0_S0, C0=>un62_r_cry_11_0_S0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>un1_r_8_11, Q0=>open);
    SLICE_198I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un62_r_cry_11_0_S1, 
                B0=>un1_r_7_11, C0=>'X', D0=>un60_r_cry_11_0_S1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_8_12, Q0=>open);
    SLICE_199I: SLOGICB
      generic map (LUT0_INITVAL=>X"BB88")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un54_r_cry_3_0_S1, 
                B0=>un1_r_6_10, C0=>'X', D0=>un56_r_cry_3_0_S1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_7_4, Q0=>open);
    SLICE_200I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_6_10, B0=>'X', 
                C0=>un56_r_cry_5_0_S0, D0=>un54_r_cry_5_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_7_5, Q0=>open);
    SLICE_201I: SLOGICB
      generic map (LUT0_INITVAL=>X"AACC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un54_r_cry_5_0_S1, 
                B0=>un56_r_cry_5_0_S1, C0=>'X', D0=>un1_r_6_10, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_7_6, Q0=>open);
    SLICE_202I: SLOGICB
      generic map (LUT0_INITVAL=>X"FC30")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un1_r_6_10, 
                C0=>un56_r_cry_7_0_S0, D0=>un54_r_cry_7_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_7_7, Q0=>open);
    SLICE_203I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un56_r_cry_7_0_S1, 
                B0=>un1_r_6_10, C0=>'X', D0=>un54_r_cry_7_0_S1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_7_8, Q0=>open);
    SLICE_204I: SLOGICB
      generic map (LUT0_INITVAL=>X"F3C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un1_r_6_10, 
                C0=>un54_r_cry_9_0_S0, D0=>un56_r_cry_9_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_7_9, Q0=>open);
    SLICE_205I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un50_r_cry_3_0_S1, 
                B0=>un1_r_5_9, C0=>'X', D0=>un48_r_cry_3_0_S1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_6_4, Q0=>open);
    SLICE_206I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_5_9, 
                B0=>un48_r_cry_5_0_S0, C0=>un50_r_cry_5_0_S0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_6_5, Q0=>open);
    SLICE_207I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un50_r_cry_5_0_S1, 
                C0=>un48_r_cry_5_0_S1, D0=>un1_r_5_9, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_6_6, Q0=>open);
    SLICE_208I: SLOGICB
      generic map (LUT0_INITVAL=>X"F5A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_5_9, B0=>'X', 
                C0=>un48_r_cry_7_0_S0, D0=>un50_r_cry_7_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_6_7, Q0=>open);
    SLICE_209I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un48_r_cry_7_0_S1, 
                B0=>un50_r_cry_7_0_S1, C0=>un1_r_5_9, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_6_8, Q0=>open);
    SLICE_210I: SLOGICB
      generic map (LUT0_INITVAL=>X"AACC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un42_r_cry_3_0_S1, 
                B0=>un44_r_cry_3_0_S1, C0=>'X', D0=>un1_r_4_8, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_5_4, Q0=>open);
    SLICE_211I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un42_r_cry_5_0_S0, 
                B0=>un1_r_4_8, C0=>un44_r_cry_5_0_S0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_5_5, Q0=>open);
    SLICE_212I: SLOGICB
      generic map (LUT0_INITVAL=>X"AACC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un42_r_cry_5_0_S1, 
                B0=>un44_r_cry_5_0_S1, C0=>'X', D0=>un1_r_4_8, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_5_6, Q0=>open);
    SLICE_213I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE22")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un86_r_cry_1_0_S0, 
                B0=>un1_r_1_17, C0=>'X', D0=>un84_r_cry_1_0_S0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_12_1, Q0=>open);
    SLICE_214I: SLOGICB
      generic map (LUT0_INITVAL=>X"BB88")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un84_r_cry_1_0_S1, 
                B0=>un1_r_1_17, C0=>'X', D0=>un86_r_cry_1_0_S1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_12_2, Q0=>open);
    SLICE_215I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un84_r_cry_3_0_S0, B0=>'X', 
                C0=>un86_r_cry_3_0_S0, D0=>un1_r_1_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_12_3, Q0=>open);
    SLICE_216I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un86_r_cry_3_0_S1, 
                B0=>un84_r_cry_3_0_S1, C0=>un1_r_1_17, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_12_4, Q0=>open);
    SLICE_217I: SLOGICB
      generic map (LUT0_INITVAL=>X"FC0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un86_r_cry_5_0_S0, 
                C0=>un1_r_1_17, D0=>un84_r_cry_5_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_12_5, Q0=>open);
    SLICE_218I: SLOGICB
      generic map (LUT0_INITVAL=>X"FC30")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un1_r_1_17, 
                C0=>un86_r_cry_5_0_S1, D0=>un84_r_cry_5_0_S1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_12_6, Q0=>open);
    SLICE_219I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_1_17, B0=>'X', 
                C0=>un86_r_cry_7_0_S0, D0=>un84_r_cry_7_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_12_7, Q0=>open);
    SLICE_220I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE44")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_1_17, 
                B0=>un86_r_cry_7_0_S1, C0=>'X', D0=>un84_r_cry_7_0_S1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_12_8, Q0=>open);
    SLICE_221I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_1_17, B0=>'X', 
                C0=>un86_r_cry_9_0_S0, D0=>un84_r_cry_9_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_12_9, Q0=>open);
    SLICE_222I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un86_r_cry_9_0_S1, B0=>'X', 
                C0=>un84_r_cry_9_0_S1, D0=>un1_r_1_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_12_10, Q0=>open);
    SLICE_223I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_1_17, 
                B0=>un84_r_cry_11_0_S0, C0=>un86_r_cry_11_0_S0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>un1_r_12_11, Q0=>open);
    SLICE_224I: SLOGICB
      generic map (LUT0_INITVAL=>X"AACC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un84_r_cry_11_0_S1, 
                B0=>un86_r_cry_11_0_S1, C0=>'X', D0=>un1_r_1_17, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_12_12, Q0=>open);
    SLICE_225I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_1_17, B0=>'X', 
                C0=>un86_r_cry_13_0_S0, D0=>un84_r_cry_13_0_S0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_12_13, Q0=>open);
    SLICE_226I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un86_r_cry_13_0_S1, 
                B0=>un84_r_cry_13_0_S1, C0=>'X', D0=>un1_r_1_17, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_12_14, Q0=>open);
    SLICE_227I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_1_17, B0=>'X', 
                C0=>un86_r_cry_15_0_S0, D0=>un84_r_cry_15_0_S0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_12_15, Q0=>open);
    SLICE_228I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un78_r_cry_1_0_S0, 
                C0=>un80_r_cry_1_0_S0, D0=>un1_r_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_1, Q0=>open);
    SLICE_229I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un78_r_cry_1_0_S1, 
                B0=>un1_r_17, C0=>un80_r_cry_1_0_S1, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_2, Q0=>open);
    SLICE_230I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un80_r_cry_3_0_S0, B0=>'X', 
                C0=>un78_r_cry_3_0_S0, D0=>un1_r_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_3, Q0=>open);
    SLICE_231I: SLOGICB
      generic map (LUT0_INITVAL=>X"BB88")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un78_r_cry_3_0_S1, 
                B0=>un1_r_17, C0=>'X', D0=>un80_r_cry_3_0_S1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_4, Q0=>open);
    SLICE_232I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un78_r_cry_5_0_S0, B0=>'X', 
                C0=>un80_r_cry_5_0_S0, D0=>un1_r_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_5, Q0=>open);
    SLICE_233I: SLOGICB
      generic map (LUT0_INITVAL=>X"EE44")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_17, 
                B0=>un80_r_cry_5_0_S1, C0=>'X', D0=>un78_r_cry_5_0_S1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_11_6, Q0=>open);
    SLICE_234I: SLOGICB
      generic map (LUT0_INITVAL=>X"F5A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_17, B0=>'X', 
                C0=>un78_r_cry_7_0_S0, D0=>un80_r_cry_7_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_7, Q0=>open);
    SLICE_235I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un80_r_cry_7_0_S1, 
                C0=>un78_r_cry_7_0_S1, D0=>un1_r_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_8, Q0=>open);
    SLICE_236I: SLOGICB
      generic map (LUT0_INITVAL=>X"F5A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_17, B0=>'X', 
                C0=>un78_r_cry_9_0_S0, D0=>un80_r_cry_9_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_9, Q0=>open);
    SLICE_237I: SLOGICB
      generic map (LUT0_INITVAL=>X"FC0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un80_r_cry_9_0_S1, 
                C0=>un1_r_17, D0=>un78_r_cry_9_0_S1, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_10, Q0=>open);
    SLICE_238I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_17, 
                B0=>un78_r_cry_11_0_S0, C0=>un80_r_cry_11_0_S0, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>un1_r_11_11, Q0=>open);
    SLICE_239I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un80_r_cry_11_0_S1, 
                B0=>un78_r_cry_11_0_S1, C0=>'X', D0=>un1_r_17, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_11_12, Q0=>open);
    SLICE_240I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un78_r_cry_13_0_S0, 
                C0=>un80_r_cry_13_0_S0, D0=>un1_r_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_11_13, Q0=>open);
    SLICE_241I: SLOGICB
      generic map (LUT0_INITVAL=>X"DD88")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_axb_17, 
                B0=>un72_r_cry_1_0_S0, C0=>'X', D0=>un74_r_cry_1_0_S0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_10_1, Q0=>open);
    SLICE_242I: SLOGICB
      generic map (LUT0_INITVAL=>X"ACAC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_cry_1_0_S1, 
                B0=>un74_r_cry_1_0_S1, C0=>un72_r_axb_17, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_10_2, Q0=>open);
    SLICE_243I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_cry_3_0_S0, B0=>'X', 
                C0=>un74_r_cry_3_0_S0, D0=>un72_r_axb_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_10_3, Q0=>open);
    SLICE_244I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un74_r_cry_3_0_S1, 
                B0=>un72_r_cry_3_0_S1, C0=>'X', D0=>un72_r_axb_17, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_10_4, Q0=>open);
    SLICE_245I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_axb_17, B0=>'X', 
                C0=>un74_r_cry_5_0_S0, D0=>un72_r_cry_5_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_10_5, Q0=>open);
    SLICE_246I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un74_r_cry_5_0_S1, 
                B0=>un72_r_cry_5_0_S1, C0=>un72_r_axb_17, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_10_6, Q0=>open);
    SLICE_247I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un74_r_cry_7_0_S0, B0=>'X', 
                C0=>un72_r_axb_17, D0=>un72_r_cry_7_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_10_7, Q0=>open);
    SLICE_248I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_axb_17, 
                B0=>un72_r_cry_7_0_S1, C0=>un74_r_cry_7_0_S1, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_10_8, Q0=>open);
    SLICE_249I: SLOGICB
      generic map (LUT0_INITVAL=>X"F0AA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un74_r_cry_9_0_S0, B0=>'X', 
                C0=>un72_r_cry_9_0_S0, D0=>un72_r_axb_17, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un1_r_10_9, Q0=>open);
    SLICE_250I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_cry_9_0_S1, 
                B0=>un72_r_axb_17, C0=>un74_r_cry_9_0_S1, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_10_10, Q0=>open);
    SLICE_251I: SLOGICB
      generic map (LUT0_INITVAL=>X"F5A0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_axb_17, B0=>'X', 
                C0=>un72_r_cry_11_0_S0, D0=>un74_r_cry_11_0_S0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_10_11, Q0=>open);
    SLICE_252I: SLOGICB
      generic map (LUT0_INITVAL=>X"CCAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un74_r_cry_11_0_S1, 
                B0=>un72_r_cry_11_0_S1, C0=>'X', D0=>un72_r_axb_17, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un1_r_10_12, Q0=>open);
    SLICE_253I: SLOGICB
      generic map (LUT0_INITVAL=>X"FC30")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>un72_r_axb_17, 
                C0=>un74_r_cry_13_0_S0, D0=>un72_r_cry_13_0_S0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>un78_r_axb_15, Q0=>open);
    SLICE_254I: SLOGICB
      generic map (LUT0_INITVAL=>X"11DD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un74_r_s_17_0_S0, 
                B0=>un72_r_axb_17, C0=>'X', D0=>un72_r_s_17_0_S0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>N_80_i, Q0=>open);
    SLICE_255I: SLOGICB
      generic map (LUT0_INITVAL=>X"11BB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_17, 
                B0=>un80_r_s_17_0_S0, C0=>'X', D0=>un78_r_s_17_0_S0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>N_81_i, Q0=>open);
    SLICE_256I: SLOGICB
      generic map (LUT0_INITVAL=>X"1B1B")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_1_17, 
                B0=>un86_r_s_17_0_S0, C0=>un84_r_s_17_0_S0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>N_16_i_i, Q0=>open);
    SLICE_257I: SLOGICB
      generic map (LUT0_INITVAL=>X"3535")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un50_r_cry_9_0_S1, 
                B0=>un48_r_cry_9_0_S1, C0=>un1_r_5_9, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>result_c_7, Q0=>open);
    SLICE_258I: SLOGICB
      generic map (LUT0_INITVAL=>X"05AF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_r_6_10, B0=>'X', 
                C0=>un56_r_s_11_0_S0, D0=>un54_r_s_11_0_S0, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>result_c_6, Q0=>open);
    SLICE_259I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un1_num_1_s_17_0_S0, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>N_12873_i, 
                Q0=>open);
    SLICE_260I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>un72_r_axb_17, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>un72_r_axb_17_i, Q0=>open);
    result_0_I: result_0_B
      port map (PADDO=>N_12873_i, result0=>result(0));
    num_0_I: num_0_B
      port map (PADDI=>num_c_0, num0=>num(0));
    result_15_I: result_15_B
      port map (PADDO=>CO1_1, result15=>result(15));
    result_14_I: result_14_B
      port map (PADDO=>r_2_4, result14=>result(14));
    result_13_I: result_13_B
      port map (PADDO=>result_c_13, result13=>result(13));
    result_12_I: result_12_B
      port map (PADDO=>result_c_12, result12=>result(12));
    result_11_I: result_11_B
      port map (PADDO=>result_c_11, result11=>result(11));
    result_10_I: result_10_B
      port map (PADDO=>result_c_10, result10=>result(10));
    result_9_I: result_9_B
      port map (PADDO=>result_c_9, result9=>result(9));
    result_8_I: result_8_B
      port map (PADDO=>result_c_8, result8=>result(8));
    result_7_I: result_7_B
      port map (PADDO=>result_c_7, result7=>result(7));
    result_6_I: result_6_B
      port map (PADDO=>result_c_6, result6=>result(6));
    result_5_I: result_5_B
      port map (PADDO=>result_c_5, result5=>result(5));
    result_4_I: result_4_B
      port map (PADDO=>un72_r_axb_17_i, result4=>result(4));
    result_3_I: result_3_B
      port map (PADDO=>N_80_i, result3=>result(3));
    result_2_I: result_2_B
      port map (PADDO=>N_81_i, result2=>result(2));
    result_1_I: result_1_B
      port map (PADDO=>N_16_i_i, result1=>result(1));
    num_31_I: num_31_B
      port map (PADDI=>num_c_31, num31=>num(31));
    num_30_I: num_30_B
      port map (PADDI=>num_c_30, num30=>num(30));
    num_29_I: num_29_B
      port map (PADDI=>num_c_29, num29=>num(29));
    num_28_I: num_28_B
      port map (PADDI=>num_c_28, num28=>num(28));
    num_27_I: num_27_B
      port map (PADDI=>num_c_27, num27=>num(27));
    num_26_I: num_26_B
      port map (PADDI=>num_c_26, num26=>num(26));
    num_25_I: num_25_B
      port map (PADDI=>num_c_25, num25=>num(25));
    num_24_I: num_24_B
      port map (PADDI=>num_c_24, num24=>num(24));
    num_23_I: num_23_B
      port map (PADDI=>num_c_23, num23=>num(23));
    num_22_I: num_22_B
      port map (PADDI=>num_c_22, num22=>num(22));
    num_21_I: num_21_B
      port map (PADDI=>num_c_21, num21=>num(21));
    num_20_I: num_20_B
      port map (PADDI=>num_c_20, num20=>num(20));
    num_19_I: num_19_B
      port map (PADDI=>num_c_19, num19=>num(19));
    num_18_I: num_18_B
      port map (PADDI=>num_c_18, num18=>num(18));
    num_17_I: num_17_B
      port map (PADDI=>num_c_17, num17=>num(17));
    num_16_I: num_16_B
      port map (PADDI=>num_c_16, num16=>num(16));
    num_15_I: num_15_B
      port map (PADDI=>num_c_15, num15=>num(15));
    num_14_I: num_14_B
      port map (PADDI=>num_c_14, num14=>num(14));
    num_13_I: num_13_B
      port map (PADDI=>num_c_13, num13=>num(13));
    num_12_I: num_12_B
      port map (PADDI=>num_c_12, num12=>num(12));
    num_11_I: num_11_B
      port map (PADDI=>num_c_11, num11=>num(11));
    num_10_I: num_10_B
      port map (PADDI=>num_c_10, num10=>num(10));
    num_9_I: num_9_B
      port map (PADDI=>num_c_9, num9=>num(9));
    num_8_I: num_8_B
      port map (PADDI=>num_c_8, num8=>num(8));
    num_7_I: num_7_B
      port map (PADDI=>num_c_7, num7=>num(7));
    num_6_I: num_6_B
      port map (PADDI=>num_c_6, num6=>num(6));
    num_5_I: num_5_B
      port map (PADDI=>num_c_5, num5=>num(5));
    num_4_I: num_4_B
      port map (PADDI=>num_c_4, num4=>num(4));
    num_3_I: num_3_B
      port map (PADDI=>num_c_3, num3=>num(3));
    num_2_I: num_2_B
      port map (PADDI=>num_c_2, num2=>num(2));
    num_1_I: num_1_B
      port map (PADDI=>num_c_1, num1=>num(1));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, ECP5U;
  configuration Structure_CON of sqrt_wrapper is
    for Structure
    end for;
  end Structure_CON;


