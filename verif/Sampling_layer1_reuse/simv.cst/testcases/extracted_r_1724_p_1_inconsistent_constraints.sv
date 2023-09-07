class c_1724_1;
    integer i = -286;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1724_1;
    c_1724_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx01xzzzx1xxxx10x1xzx1zzz0zz01zxxzxxzzxzzxzxxxzzxzxzxzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
