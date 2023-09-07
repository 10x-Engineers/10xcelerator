class c_2601_1;
    integer i = -432;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2601_1;
    c_2601_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00100x1xz1xxz1x1zzxzx0x1z0z1000zzzxzzzzxxzxxxzzxxzxzzzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
