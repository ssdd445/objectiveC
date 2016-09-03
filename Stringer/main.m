@import Foundation;

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSError *error;
        NSString *str = [[NSString alloc]initWithContentsOfFile:@"/Users/saudwaqar/Desktop/C/file.txt"
                                                       encoding:NSUTF8StringEncoding
                                                          error:&error];
        
        if (str) {
            NSLog(@"File has been read and these are it's contents %@",str);
        }
        else
            NSLog(@"File wasn't read %@",[error localizedDescription]);
        
    }
    return 0;
}
