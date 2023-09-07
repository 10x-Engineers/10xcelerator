class c_3150_1;
    integer i = -523;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3150_1;
    c_3150_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1xzzx11zz010zx0x0xxxx0xz0xxz0xzxzzzzzxzxzxxxxxxxxzxxzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
