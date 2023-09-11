class c_3007_1;
    integer i = -500;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3007_1;
    c_3007_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010xx1zx1z1z010zxzxz1xx10z000101xzzxxzxxzzxxxxxzxxzzzzzzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
