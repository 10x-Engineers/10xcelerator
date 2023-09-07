class c_2089_1;
    integer i = -347;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2089_1;
    c_2089_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000x101xzxzxx0zxxxx10z11z0110111zzxxxxxzxxxxzxzxxxzxxxzzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
