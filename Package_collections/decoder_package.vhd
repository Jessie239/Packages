
--==============================================================================================
--  File name       :   decoder_package.vhd
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

package decoder_package is

    function decoder_4to4(
        dein    :   in std_logic_vector(3 downto 0)
    ) return std_logic_vector;

end package;
------------------------------------------------------------------------------------------------

package body decoder_package is

    function decoder_4to4(
        dein    :   in std_logic_vector(3 downto 0)
    ) return std_logic_vector is
        variable result :   std_logic_vector(3 downto 0);
    begin
        case(dein) is
            when X"7"   =>  result  :=  X"E";
            when X"8"   =>  result  :=  X"D";
            when X"9"   =>  result  :=  X"B";
            when X"A"   =>  result  :=  X"7";
            when others =>  result  :=  (others => '0');
        end case;
        
        return result;

    end function decoder_4to4;
         
end package body decoder_package;
