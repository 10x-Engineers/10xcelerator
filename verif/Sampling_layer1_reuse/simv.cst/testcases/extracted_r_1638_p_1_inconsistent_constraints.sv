class c_1638_1;
    integer i = -271;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1638_1;
    c_1638_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1xxxxz0x1x100zz0xxx1011zxxz10xzzxzzzzzzxzzzxzzzzxxxzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
