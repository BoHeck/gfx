#!/usr/bin/perl

# Arguments:
# [folder_left], [folder_right], [angle(folder name)]


my @range = (11,94);

my $folderleft = @ARGV[0];
my $folderright = @ARGV[1];
my $angle = @ARGV[2];

for (my $i = @range[0]; $i <= @range[1]; $i++) {
    if ($i <= 52) {
	my $dest = $i-@range[0];
	qx(cp raw/00$i.png $folderleft/$angle/$dest.png);
    } else {
	my $dest = $i-53;
	qx(cp raw/00$i.png $folderright/$angle/$dest.png);
    }
}
