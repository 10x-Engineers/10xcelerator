class c_187_1;
    integer i = -30;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_187_1;
    c_187_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xzz00100x00zx11z1x11x01x101z1zzxxzzxxzzzzzzzzzxxzxxzxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
