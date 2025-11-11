----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:04:51 03/19/2025 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_Update is
    Port ( Zero : in STD_LOGIC;
			  Offset : in STD_LOGIC_VECTOR (15 downto 0);
			  Branch : in STD_LOGIC;
			  PC : in  STD_LOGIC_VECTOR (31 downto 0);
           New_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end PC_Update;

architecture Behavioral of PC_Update is
	signal PC_p4 : std_logic_vector(31 downto 0);
	signal depl   : std_logic_vector(31 downto 0);	
begin

	PC_p4 <= PC + 4;
	
	New_PC <= PC_p4 + depl when (Branch = '1' and Zero = '1') else PC_p4;
				 
	depl(1 downto 0)     <= "00";                -- shift stânga cu 2 bi?i
	depl(17 downto 2)    <= Offset;              -- bi?ii efectivi ai offsetului
	depl(31 downto 18)   <= (others => Offset(15)); -- extinderea semnului
	
	
end Behavioral;

