# KRTimePicker-iOS
Universal iOS Time Picker Framework. Easy to use, free and customisable ```Time Picker``` for `Objective-C` & `Swift` projects.

 ![](https://github.com/Krishnarajsalim/KRTimePicker-iOS/blob/master/KRTP.gif)
 
## To get started
### OBJ C:
  - Download the project/clone to desktop
  - Drag and drop ```KRTimePicker.framework``` to Target > Embedded Binaries
  - Go to your view controller and import the ```KRTimePicker.h``` on top of the page:
  ```
  #import <KRTimePicker/KRTimePicker.h>
  ```
   - In your button action, do the following:
   ```ObjectiveC
    - (IBAction)showKRTPicker:(UIButton *)button {
          KRTP *timePicker = [[KRTP alloc]init];
          [timePicker showKRTPickerFrom:self setForButton:button];
    }
   ```
   - Build and Run the project.
   
Thats it.... You've made it... 👍

## Swift:
  ```
  import KRTimePicker
  ```
  
  - In your button action, do the following:
  ```Swift
   @IBAction func showKRTPicker(_ sender: Any) {
        let KRTPOBj = KRTP()
        KRTPOBj.showKRTPicker(from: self, setFor: sender as! UIButton) 
    }
  ```
 Thats all for swift... :)
  
### Support
If you need any customisation in this Framework, Reach out to me via <a href="krishnarajsalim@gmail.com" target="_blank">`krishnarajsalim@gmail.com`</a> 
   
### Donation
If this project help you reduce time to develop, you can give me a cup of coffee :)
 
[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=S4FGGFYUVS6HU)


