    Инициализация настроек станка, таких как выбор плоскости XY (G17), отмена длинных радиусных компенсаций (G40), отмена двоичного дополнения (G49), отмена компенсации инструмента (G43), выбор системы координат (G54) и т. д.

    Указание инструмента (T8) и его параметров (D08 - диаметр, M06 - смена инструмента).

    Установка координат (G52) для выполнения операций сдвига в заданной системе координат.

    Подача команды на выполнение программы (M97 P15), которая, вероятно, вызывает подпрограмму с номером 15.

    Далее идет набор команд для сверления отверстий в материале. Номера и параметры инструмента, а также координаты сверления, указываются через переменные.

    Затем следует цикл (WHILE...END1), который, вероятно, управляет повторением определенной части программы в зависимости от условия (#1 больше #2).

    В конце программы выполняются команды для завершения работы станка (например, перемещение инструмента в начальную позицию, отключение охлаждающей жидкости и т. д.).