
-- VHDL Instantiation Created from source file PC_Update.vhd -- 22:07:11 03/19/2025
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PC_Update
	PORT(
		PC : IN std_logic_vector(31 downto 0);          
		New_PC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_PC_Update: PC_Update PORT MAP(
		PC => ,
		New_PC => 
	);


