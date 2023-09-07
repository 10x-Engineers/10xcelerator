class c_3363_1;
    integer i = -559;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3363_1;
    c_3363_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zx10z1zxx1z000zz0zzxzx111xx1xxzzzxzxzzzzxxxzxzxxxzzzxxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
