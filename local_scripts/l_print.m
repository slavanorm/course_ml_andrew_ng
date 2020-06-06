% not work set(gcf,'InvertHardCopy','off');
system("ps -W | grep Imag | awk '{print $1}' | xargs kill -f;");
system("rm -f out.png");
print -dpng 'out.png';
system("convert out.png -channel RGB -negate out.png");
system("cygstart out.png");

