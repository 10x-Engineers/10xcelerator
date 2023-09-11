class c_3379_1;
    integer i = -562;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3379_1;
    c_3379_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzzx001x0x1xz1110x10zxzz11zx10xxzzxzzzxzzzxxzzzzzzzzzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
