class c_3436_1;
    integer i = -571;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3436_1;
    c_3436_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z1x01x0xz00xz0zz101z000x00xxzzzzxzzxzzzzxxzzzzzxzzxzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
