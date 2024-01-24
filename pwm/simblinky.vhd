--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:51:01 03/25/2019
-- Design Name:   
-- Module Name:   C:/Users/Carlos/Documents/RGI/Xilinx/Pulse1/simblinky.vhd
-- Project Name:  blinky
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: blinky
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simblinky IS
END simblinky;
 
ARCHITECTURE behavior OF simblinky IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Pulse1
    PORT(
         clk : IN  std_logic;
         led0_b : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal led0_b : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: blinky PORT MAP (
          clk => clk,
          led0_b => led0_b
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

	  wait for 1000 ns;

      wait;
   end process;

END;
