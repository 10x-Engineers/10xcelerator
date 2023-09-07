class c_2070_1;
    integer i = -343;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2070_1;
    c_2070_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101z0x1101x0zz0z1zxxz0xz1z0z1z1zzzzzxzxzxzxzzxxzzzxxxzzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
