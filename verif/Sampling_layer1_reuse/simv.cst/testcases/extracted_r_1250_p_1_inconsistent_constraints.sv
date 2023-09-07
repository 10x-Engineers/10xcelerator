class c_1250_1;
    integer i = -207;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1250_1;
    c_1250_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10xzzz10xzzxzzxz11zxxxz00101z0xxxzzzxxzzxzzzzzzxxxzzzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
