class c_2006_1;
    integer i = -333;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2006_1;
    c_2006_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11x0z1zx001xx1x0x1010x010z01xxxxzxxxxzxxzzxzxxxzzxzxxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
