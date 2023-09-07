class c_1467_1;
    integer i = -243;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1467_1;
    c_1467_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100xz0z0x011z0z11zxx0xxxz1xzzxzxzzxxxzzzxxxzzxzxzxzxzxxzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
