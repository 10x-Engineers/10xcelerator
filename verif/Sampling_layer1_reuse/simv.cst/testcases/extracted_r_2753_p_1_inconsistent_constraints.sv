class c_2753_1;
    integer i = -457;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2753_1;
    c_2753_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zx1zxz001zzxzx0zxz0xz1z1zzxxzzxzxxzzzxxxzzxzxxzxzxxzzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
