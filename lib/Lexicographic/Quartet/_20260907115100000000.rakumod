#20260907115100000000

unit module Lexicographic::Quartet::_20260907115100000000;

our %handlers =
    '1111' => -> $/ { warn "FOUND (1111) PARSER"; dd "$<first>"; },
    '1112' => -> $/ { note "FOUND (1112) SIGNED"; dd "$<first> $<second> $<third> $<fourth>" },
    '1121' => -> $/ { note "FOUND (1121) LOWER"; dd "$<first> $<second> $<third> $<fourth>" },
    '1122' => -> $/ { note "FOUND (1122) HIGHER"; dd "$<first> $<second> $<third> $<fourth>" },
    '1211' => -> $/ { note "FOUND (1211) FAILURE"; dd "$<first> $<second> $<third> $<fourth>" },
    '1212' => -> $/ { note "FOUND (1212) SUCCESS"; dd "$<first> $<second> $<third> $<fourth>" },
    '1221' => -> $/ { note "FOUND (1221) WATCHED"; dd "$<first> $<second> $<third> $<fourth>" },
    '1222' => -> $/ { note "FOUND (1222) IGNORED"; dd "$<first> $<second> $<third> $<fourth>" },
    '1123' => -> $/ { note "FOUND (1123) QUALITY"; dd "$<first> $<second> $<third> $<fourth>" },
    '1213' => -> $/ { note "FOUND (1213) ALIASED"; dd "$<first> $<second> $<third> $<fourth>" },
    '1223' => -> $/ { note "FOUND (1223) HANDLE"; dd "$<first> $<second> $<third> $<fourth>" },
    '1231' => -> $/ { note "FOUND (1231) YET-TBD"; dd "$<first> $<second> $<third> $<fourth>" },
    '1232' => -> $/ { note "FOUND (1232) REVEALED"; dd "$<first> $<second> $<third> $<fourth>" },
    '1233' => -> $/ { note "FOUND (1233) CONCEALED"; dd "$<first> $<second> $<third> $<fourth>" },
    '1234' => -> $/ { note "FOUND (1234) TRIPLET"; dd "$<first> $<second> $<third> $<fourth>" },
;
