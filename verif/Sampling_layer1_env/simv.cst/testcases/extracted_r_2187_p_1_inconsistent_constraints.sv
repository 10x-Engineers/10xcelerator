class c_2187_1;
    integer i = -363;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2187_1;
    c_2187_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xz11x00xxzx11110z0x10z1x11z0zxxzzzzzxxxxzxxzzxxzxzzzxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
