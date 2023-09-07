class c_1150_1;
    integer i = -190;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1150_1;
    c_1150_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xzz0111001010z1xz11zx10xxxx0zzzzzzxxzzzzzxzxzzzxxxxxzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
