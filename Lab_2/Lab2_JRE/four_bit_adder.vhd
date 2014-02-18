----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Jacob Echeverry
-- 
-- Create Date:    14:00:05 02/11/2014 
-- Design Name: 
-- Module Name:    four_bit_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Creation of a four bit adder
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_adder is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end four_bit_adder;

architecture Structural of four_bit_adder is

--add in component statements
Component Full_adder is
   Port (Ain : in STD_LOGIC;
         Bin : in STD_LOGIC;
         Cin : in STD_LOGIC;
			Cout: out STD_LOGIC;
			Sum : out STD_LOGIC);
end component Full_adder;

Signal Cout0,Cout1,Cout2,Cout3,Cin : STD_LOGIC;

begin 
--Instantiation Statements go here
Bit0: Full_adder
      Port map(Ain(0),
				   Bin(0),
				   Cin(0),
				   Cout0(1),
				   Sum(0));

Bit1: Full_adder
      Port map(Ain(1),
				   Bin(1),
				   Cin(1),
				   Cout1(2),
				   Sum(1));

Bit2: Full_adder
		Port map(Ain(2),
				   Bin(2),
				   Cin(2),
				   Cout2(3),
				   Sum(2));

Bit3: Full_adder
	   Port map(Ain(3),
				   Bin(3),
				   Cin(3),
				   Cout3(4),
				   Sum(3));

end Structural;

