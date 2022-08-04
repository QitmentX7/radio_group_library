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

**How it works:**
- Add a RadioGroupForm widget inside the Form.
- Create a model using Mixin RadioSelectableItem(String title).
- Pass data based on the model to the widget.
- Set the Form the key _formKey
- Validation occurs when the _formKey.currentState.validate() method is called.

*Use & enjoy!* :)




## Radio_group_library

**Radio_group_library** - это библиотека для реализации RadioList внутри Form. Главная задача упростить валидацию RadioListTile.  
Функционал на данным момент реализации: 
- Проверка возможна на предмет выбрал ли пользователь один из radio-переключателей.
- Расположение элементов списка доступно в вертикальном варианте.

**Что планируться в следующей версии?**
- Сделать проверку на несколько radio-переключателей,
- Добавить другие возможности кастомизации условий.
- Добавить больше возможностей кастомизации интерфейса виджета: размер шрифта, цвет элементов и отступы между ними.
- Добавить возможность горизонтального расположения елементов списка.

**Как взаимодействовать:**
- Добавьте виджет RadioGroupForm внутрь Form.
- Создайте модель с использованием Mixin RadioSelectableItem(String title). 
- Передайте данные на основании модели в виджет.
- Присвойте Form ключ _formKey
- Проверка происходит при вызове метода formKey.currentState.validate().

*Use & enjoy!* :)
