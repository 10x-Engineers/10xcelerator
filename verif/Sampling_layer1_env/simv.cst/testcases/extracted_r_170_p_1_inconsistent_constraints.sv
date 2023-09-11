class c_170_1;
    integer i = -27;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_170_1;
    c_170_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01x0zx11zz101z10z1010x101x0zxxzxzzzxxxzzxxzzzzxxzzxzxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
