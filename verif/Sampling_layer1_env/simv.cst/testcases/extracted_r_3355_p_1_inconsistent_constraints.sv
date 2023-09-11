class c_3355_1;
    integer i = -558;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3355_1;
    c_3355_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x0xx1xxxzz1z110z01zzzxz10zz0xxxxxxxxzxxxxxzxzxxzzzxzxzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
