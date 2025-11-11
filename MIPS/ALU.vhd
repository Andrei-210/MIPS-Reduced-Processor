----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:34:51 03/25/2025 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( RdData1 : in  STD_LOGIC_VECTOR (31 downto 0);
           RdData2 : in  STD_LOGIC_VECTOR (31 downto 0);
           FAddr : in  STD_LOGIC_VECTOR (15 downto 0);
           ALUSrc : in  STD_LOGIC;
           ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0);
			  Zero : out STD_LOGIC
			 );
end ALU;

architecture Behavioral of ALU is

	 -- Semnal pentru extensia semnului
    signal SEAddr : std_logic_vector(31 downto 0);

    -- Semnal pentru al doilea operand al ALU
    signal OP2 : std_logic_vector(31 downto 0);
	 
begin

	 -- 1. **Extinderea semnului** (Sign Extension)
    SEAddr(15 downto 0)  <= FAddr;  -- Copierea celor 16 bi?i ini?iali
    SEAddr(31 downto 16) <= (others => FAddr(15));  -- Extinderea cu bitul de semn

    -- 2. **Multiplexorul pentru OP2** (Alegerea dintre RdData2 ?i SEAddr)
    OP2 <= RdData2 when ALUSrc = '0' else SEAddr;

    -- 3. **ALU: Execu?ia opera?iei** (folosind selected signal assignment)
    with ALUOP select
        Y <= RdData1 + OP2 when "00",  -- Adunare
             RdData1 - OP2 when "01",  -- Sc?dere
             RdData1 and OP2 when "10", -- AND
             RdData1 or OP2 when "11",  -- OR
             (others => '0') when others; -- Default (ar trebui s? nu fie cazul)
				 
	 Zero <= '1' when RdData1 = RdData2
				else '0';

end Behavioral;

