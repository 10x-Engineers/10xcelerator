class c_2879_1;
    integer i = -478;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2879_1;
    c_2879_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1xx1zxx11zzx0z0x0x1xzzxxzz01x1zxxzxxxzzxxxxzxxzzzxzzxxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
