class c_2560_1;
    integer i = -425;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2560_1;
    c_2560_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101xz1111z1z0zzz1zx10zz011x0z1xzxzzzxxxxxzxzzzzxzzxzzzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
