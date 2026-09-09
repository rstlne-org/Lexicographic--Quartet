#20260730210511111111_11111111111111111111

unit module Lexicographic::Quartet::_20260730210511111111_11111111111111111111;

our %handlers = flat
    '1111' => -> $/ { warn "FOUND (1111) FULLY QUALIFIED GRAMMAR"; dd "[{$?PACKAGE.^name}] $<first>"; },
    (<1112 1121 1122 1211 1212 1221 1222 1123 1213 1223 1231 1232 1233 1234>
      X=> -> $/ { note "FOUND METADATA"; dd "[{$?PACKAGE.^name}] $<first> $<second> $<third> $<fourth>" }),
;
