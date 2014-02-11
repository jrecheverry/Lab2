----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Jacob Echeverry
-- 
-- Create Date:    18:00:36 02/10/2014 
-- Design Name: 
-- Module Name:    Full_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: attempting to create a 1 bit adder
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

entity Full_adder is
    Port ( Ain : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end Full_adder;

architecture Behavioral of Full_adder is

begin
Sum <= (Ain xor Bin) xor Cin;
Cout <= (Ain and Bin) or (Ain and Cin) or (Bin and Cin);

end Behavioral;

