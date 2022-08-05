## Radio_group_library with the ability to check formKey validate()

**Validate RadioListTile inside form via the formKey.currentState.validate()**

**Radio_group_library** - it's library List of RadioListTile.
The main task is to simplify the validation of RadioListTile.
 
**Current functionality:**
- Checking if the user has selected one of the radio buttons.
- The layout of the list items is available in a vertical version.

**What's in the next version?**
- Checking for multiple selectable radio buttons
- Add other options for customizing conditions.
- Add more widget interface customization options: font size, element color and padding between them.
- Add the ability to horizontally arrange list items.
- Fix some visual bags

**How it works:**
- Add a RadioGroupForm widget inside the Form.
- Create a model using Mixin RadioSelectableItem(String title).
- Pass data based on the model to the widget.
- Set the Form the key _formKey
- Validation occurs when the _formKey.currentState.validate() method is called.
*Use & enjoy!* :)



https://user-images.githubusercontent.com/18053215/183044054-dac128c4-5b5e-400f-a393-f9633e0bd424.mp4




