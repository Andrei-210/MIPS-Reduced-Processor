----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:19:47 03/25/2025 
-- Design Name: 
-- Module Name:    File_Regs - Behavioral 
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

entity File_Regs is
    Port ( Clk : in  STD_LOGIC;
           WrEn : in  STD_LOGIC;
           RdReg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           RdReg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WrReg : in  STD_LOGIC_VECTOR (4 downto 0);
           WRData : in  STD_LOGIC_VECTOR (31 downto 0);
           RdData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RdData2 : out  STD_LOGIC_VECTOR (31 downto 0));
end File_Regs;

architecture Behavioral of File_Regs is

    -- Definim tipul de date pentru blocul de registre
    type tRegs is array (0 to 31) of std_logic_vector(31 downto 0);

    -- Declar?m semnalul pentru cele 32 de registre de 32 de bi?i
    --signal s32Regs32 : tRegs;
	 signal s32Regs32 : tRegs := (others => (others => '0'));

begin

    -- Scrierea în registru (sincron?)
    process(Clk)
    begin
        if rising_edge(Clk) then
            if WrEn = '1' and WrReg /= "00000" then
                s32Regs32(conv_integer(WrReg)) <= WrData;
            end if;
        end if;
    end process;

    -- Citirea registrelor (combinational)
    process(RdReg1, RdReg2, s32Regs32)
    begin
        if RdReg1 = "00000" then
            RdData1 <= (others => '0');
        else
            RdData1 <= s32Regs32(conv_integer(RdReg1));
        end if;

        if RdReg2 = "00000" then
            RdData2 <= (others => '0');
        else
            RdData2 <= s32Regs32(conv_integer(RdReg2));
        end if;
    end process;
	 
end Behavioral;

