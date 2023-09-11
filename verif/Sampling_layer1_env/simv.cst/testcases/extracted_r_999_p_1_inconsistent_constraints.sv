class c_999_1;
    integer i = -165;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_999_1;
    c_999_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xzzx101zxxzx11z0xx10z1xzz0zxxxxzxxzxxzzzzxxxxxzzxzzzxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
