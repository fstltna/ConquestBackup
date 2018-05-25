#!/usr/bin/perl

# Set these for your situation
my $MTDIR = "/opt";
my $BACKUPDIR = "/root/backups";
my $TARCMD = "/bin/tar czf";

#-------------------
# No changes below here...
#-------------------
my $VERSION = "1.0";

print "ConquestBackup.pl version $VERSION\n";
print "========================\n";
if (! -d $BACKUPDIR)
{
	print "Backup dir $BACKUPDIR not found, creating...\n";
	system("mkdir -p $BACKUPDIR");
}
print "Moving existing backups: ";

if (-f "$BACKUPDIR/conquestbackup-5.tgz")
{
	unlink("$BACKUPDIR/conquestbackup-5.tgz")  or warn "Could not unlink $BACKUPDIR/conquestbackup-5.tgz: $!";
}
if (-f "$BACKUPDIR/conquestbackup-4.tgz")
{
	rename("$BACKUPDIR/conquestbackup-4.tgz", "$BACKUPDIR/conquestbackup-5.tgz");
}
if (-f "$BACKUPDIR/conquestbackup-3.tgz")
{
	rename("$BACKUPDIR/conquestbackup-3.tgz", "$BACKUPDIR/conquestbackup-4.tgz");
}
if (-f "$BACKUPDIR/conquestbackup-2.tgz")
{
	rename("$BACKUPDIR/conquestbackup-2.tgz", "$BACKUPDIR/conquestbackup-3.tgz");
}
if (-f "$BACKUPDIR/conquestbackup-1.tgz")
{
	rename("$BACKUPDIR/conquestbackup-1.tgz", "$BACKUPDIR/conquestbackup-2.tgz");
}
print "Done\nCreating New Backup: ";
system("$TARCMD $BACKUPDIR/conquestbackup-1.tgz $MTDIR");
print("Done!\n");
exit 0;
