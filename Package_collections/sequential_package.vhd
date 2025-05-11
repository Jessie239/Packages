
--==============================================================================================
--  File name       :   sequential_package.vhd
--  Description     :   This package contains constants and sequential procedures.
--  Author          :   Myo Ko Ko
--  Standard        :   VHDL'2008
--  Date            :   2025.05.11
--  Version         :   1.0
--  
--  Dependencies    :   ieee.std_logic_1164
--
--==============================================================================================
--  Revision History    :
------------------------------------------------------------------------------------------------
--  No. |   Version     |   Date        |   Description
------------------------------------------------------------------------------------------------
--  1   |   1.0         |   2025.05.11  |   Initial Release
------------------------------------------------------------------------------------------------  
--  2   |   x.x         |   yyyy.mm.dd  |   [Description of Changes]
--==============================================================================================

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------------------------------------------

package sequential_package is

    -- constants 
    constant width_2bit     :   integer := 2;
    constant width_3bit     :   integer := 3;
    constant width_4bit     :   integer := 4;
    constant width_8bit     :   integer := 8;
    constant width_16bit    :   integer := 16;
    constant width_32bit    :   integer := 32;


    -- DFF
    procedure dff(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic;
        signal q    :   out std_logic
    );

    procedure dff_2bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_2bit-1 downto 0);
        signal q    :   out std_logic_vector(width_2bit-1 downto 0)
    );

    procedure dff_3bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_3bit-1 downto 0);
        signal q    :   out std_logic_vector(width_3bit-1 downto 0)
    );

    procedure dff_4bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_4bit-1 downto 0);
        signal q    :   out std_logic_vector(width_4bit-1 downto 0)
    );

    procedure dff_8bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_8bit-1 downto 0);
        signal q    :   out std_logic_vector(width_8bit-1 downto 0)
    );

    procedure dff_16bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_16bit-1 downto 0);
        signal q    :   out std_logic_vector(width_16bit-1 downto 0)
    );

    procedure dff_32bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_32bit-1 downto 0);
        signal q    :   out std_logic_vector(width_32bit-1 downto 0)
    );

end package sequential_package;
------------------------------------------------------------------------------------------------

package body sequential_package is

    procedure dff(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic;
        signal q    :   out std_logic
    ) is begin
        if(rst = '0') then
            q   <=  '0';
        elsif(rising_edge(clk)) then
            q   <=  d;
        end if;
    end procedure dff;

    procedure dff_2bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_2bit-1 downto 0);
        signal q    :   out std_logic_vector(width_2bit-1 downto 0)
    ) is begin
        if(rst = '0') then
            q   <=  (others => '0');
        elsif(rising_edge(clk)) then
            q   <=  d;
        end if;
    end procedure dff_2bit;

    procedure dff_3bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_3bit-1 downto 0);
        signal q    :   out std_logic_vector(width_3bit-1 downto 0)
    ) is begin
        if(rst = '0') then
            q   <=  (others => '0');
        elsif(rising_edge(clk)) then
            q   <=  d;
        end if;
    end procedure dff_3bit;

    procedure dff_4bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_4bit-1 downto 0);
        signal q    :   out std_logic_vector(width_4bit-1 downto 0)
    ) is begin
        if(rst = '0') then
            q   <=  (others => '0');
        elsif(rising_edge(clk)) then
            q   <=  d;
        end if;
    end procedure dff_4bit;

    procedure dff_8bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_8bit-1 downto 0);
        signal q    :   out std_logic_vector(width_8bit-1 downto 0)
    ) is begin
        if(rst = '0') then
            q   <=  (others => '0');
        elsif(rising_edge(clk)) then
            q   <=  d;
        end if;
    end procedure dff_8bit;

    procedure dff_16bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_16bit-1 downto 0);
        signal q    :   out std_logic_vector(width_16bit-1 downto 0)
    ) is begin
        if(rst = '0') then
            q   <=  (others => '0');
        elsif(rising_edge(clk)) then
            q   <=  d;
        end if;
    end procedure dff_16bit;

    procedure dff_32bit(
        signal clk  :   in std_logic;
        signal rst  :   in std_logic;
        signal d    :   in std_logic_vector(width_32bit-1 downto 0);
        signal q    :   out std_logic_vector(width_32bit-1 downto 0)
    ) is begin
        if(rst = '0') then
            q   <=  (others => '0');
        elsif(rising_edge(clk)) then
            q   <=  d;
        end if;
    end procedure dff_32bit;

end package body sequential_package;
