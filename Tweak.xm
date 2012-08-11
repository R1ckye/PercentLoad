@interface SBDownloadingIcon
-(id)displayName;
-(id)realDisplayName;
-(id)leafIdentifier;
-(float)progress;
@end

%hook SBDownloadingIcon
-(id)displayName { 
float prog = [self progress];
int prog10 = prog * 100;
NSString *str = [NSString stringWithFormat:@"%i\%", prog10];
NSLog(str);
return str;
return @"a"; 
}
//-(id)realDisplayName { return @"b"; }
//-(id)leafIdentifier { return @"c"; }
%end
