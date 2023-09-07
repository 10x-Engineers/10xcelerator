class c_2329_1;
    integer i = -387;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2329_1;
    c_2329_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0zz00xzz010xx01x000x1xx1zzx10zzzxxxzxxxxzxzzzzxzxzxxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
