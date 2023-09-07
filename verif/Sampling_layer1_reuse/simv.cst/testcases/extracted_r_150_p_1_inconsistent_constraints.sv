class c_150_1;
    integer i = -23;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_150_1;
    c_150_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzx01xzx10z1x001xx001xz111z01zxxzxzxzzzxzxxzzxxzzxzxxzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
