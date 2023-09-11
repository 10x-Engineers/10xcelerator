class c_3338_1;
    integer i = -555;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3338_1;
    c_3338_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1xxx0zz1001z1xzz1z1xxxzxxz01xzxzzxzzxxzxzzxzxzzxxzzxxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
