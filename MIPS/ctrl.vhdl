----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:17:47 03/26/2025 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (5 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUSrc : out  STD_LOGIC;
           ALUOP : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWr : out  STD_LOGIC;
           Mem2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
           RegDest : out  STD_LOGIC;
			  Branch : out STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is

begin

	 -- Asignare pentru fiecare semnal de control
    RegDest  <= '1' when OP = "000000" else '0';  -- Instruc?iuni R folosesc rd
    RegWr    <= '1' when OP = "000000" or OP = "100011" else '0';  -- Se scrie în registru (exceptie SW)
    MemWr    <= '1' when OP = "101011" else '0';  -- Doar SW scrie în memorie
    Mem2Reg  <= '1' when OP = "100011" else '0';  -- Doar LW preia date din memorie
    ALUSrc   <= '1' when OP = "100011" or OP = "101011" else '0';  -- LW ?i SW folosesc Imm16
	 Branch	 <= '1' when OP = "000100" else '0';
	 --MemWr    <= '0' when OP = "000100";
    --RegWr    <= '0' when OP = "0001000";
	 
	 -- Selectarea opera?iei ALU
    process(OP, Funct)
    begin
        if OP = "000000" then  -- Instruc?iuni R-type
            case Funct is
                when "100000" => ALUOP <= "00";  -- ADD
                when "100010" => ALUOP <= "01";  -- SUB
                when "100100" => ALUOP <= "10";  -- AND
                when "100101" => ALUOP <= "11";  -- OR
                when others   => ALUOP <= "00";  -- Default
            end case;
        elsif OP = "100011" or OP = "101011" then
            ALUOP <= "00";  -- LW ?i SW -> adunare
		  else
            ALUOP <= "00";  -- Default
        end if;
    end process;


end Behavioral;

