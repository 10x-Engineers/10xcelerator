class c_2351_1;
    integer i = -390;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2351_1;
    c_2351_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xxxxxx1x0z1xz1010zx00zzz00xxxzzxxxxxxzzxxzxzzzxzzxxxxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
