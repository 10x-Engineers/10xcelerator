class c_1151_1;
    integer i = -190;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1151_1;
    c_1151_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzz01xz1x1z01zxxz10x101zzzz0zz0xzxxzxzzzxzxxxzzxzxxzzzxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
