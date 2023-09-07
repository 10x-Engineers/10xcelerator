class c_18_1;
    integer i = -1;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_18_1;
    c_18_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx101zxxxx1z100x10xxxx1z10z00xxxxzzzzzzxxxzxxxxxzxxxzzzxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
