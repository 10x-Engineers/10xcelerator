class c_3311_1;
    integer i = -550;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3311_1;
    c_3311_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10x00x101z1xzx0101zz111zz010x1xzzxzzzxxzzzxxxxzzzxxzzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
