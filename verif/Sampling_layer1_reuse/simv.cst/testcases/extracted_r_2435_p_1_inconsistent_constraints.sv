class c_2435_1;
    integer i = -404;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2435_1;
    c_2435_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz1x111x11zx1101z1zx11z0xx1x11xxxxzzzzzxzzxxxxxzzzxzxxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
