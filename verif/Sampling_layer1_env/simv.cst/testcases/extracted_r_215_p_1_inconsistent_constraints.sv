class c_215_1;
    integer i = -34;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_215_1;
    c_215_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1z1zz1001z0zzz0z01xz0z000110zzxxxxxxzzxzzxzxxzxxxxzxzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
