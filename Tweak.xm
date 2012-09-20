@interface SBDownloadingIcon
-(id)displayName;
-(float)progress;
@end

%hook SBDownloadingIcon
-(id)displayName { 
float prog = [self progress];
int prog10 = prog * 100;
NSString *str = [NSString stringWithFormat:@"%i\%%", prog10];
return str;
}
%end
