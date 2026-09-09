#202608291357

unit module Lexicographic::Quartet;

our $default-syntax is export =
    'Lexicographic::Quartet::_20260907115100000000';

grammar comma-delimited-quads is export {
    token TOP { [<delimited-quad> \v*]* }
    token delimited-quad { <first=.a-stamp> ',' <second=.not-a-comma> ',' <third=.not-a-comma> ',' <fourth=.the-rest> }
    token a-stamp { $<stamp>=(\d ** 20) [ '_' $<origin>=(\d ** 20) ]? }
    token not-a-comma { <-[,]>+ }
    token the-rest { <-[\v]>+ }
}

sub equivalence-relation(**@quad) {
    my %match-count;
    my $sets = 1;
    @quad.map({ %match-count{$_} //= $sets++ }).join
}

class comma-delimited-quads-actions is export {
    has Str $!specific-syntax;
    has Str $.default-syntax = $Lexicographic::Quartet::default-syntax;
    has %!loaded;

    method !handlers(Str $module) {
        %!loaded{$module} //= do {
            try require ::($module);
            my $handlers = try ::($module).WHO<%handlers>;
            die "Module not valid: $module" unless $handlers ~~ Associative;
            $handlers
        }
    }

    method delimited-quad ($/) {
        my $a-pattern = equivalence-relation(~$<first><stamp>, ~$<second>, ~$<third>, ~$<fourth>);
        $!specific-syntax = 'Lexicographic::Quartet::_' ~ ~$<first> if $a-pattern eq '1111';
        my $syntax = $!specific-syntax // $!default-syntax;
        my $handlers = self!handlers($syntax);
        my &handler = $handlers{$a-pattern}
            // die "No handler for ($a-pattern) in $syntax";
        handler($/);
    }
}
