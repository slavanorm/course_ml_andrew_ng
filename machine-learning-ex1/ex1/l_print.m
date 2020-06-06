% not work set(gcf,'InvertHardCopy','off');
system("rm -f out.png");
print -dpng 'out.png';
system("cygstart out.png");