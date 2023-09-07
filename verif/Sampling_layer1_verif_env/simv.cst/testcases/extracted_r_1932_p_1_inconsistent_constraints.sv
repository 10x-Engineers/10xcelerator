class c_1932_1;
    integer i = -320;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1932_1;
    c_1932_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01x010xx111z00xzzx01zz01xzz00zzzxzzxxzzzxzxzzxxzzzxzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
