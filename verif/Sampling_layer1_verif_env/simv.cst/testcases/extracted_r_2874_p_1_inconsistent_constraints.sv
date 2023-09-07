class c_2874_1;
    integer i = -477;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2874_1;
    c_2874_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1010xxxzxzzz1zx1z1zz0zx1zzxx1zzzxzzxxzzzxzxzxxxxzzzxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
