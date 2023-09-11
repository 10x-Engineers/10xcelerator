class c_1646_1;
    integer i = -273;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1646_1;
    c_1646_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzzx11zz001x1x11zz1z10z01010zxxzzxzzzxxzxxxzxzzzxxxxxzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
