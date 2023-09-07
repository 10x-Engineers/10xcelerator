class c_419_1;
    integer i = -68;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_419_1;
    c_419_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z11xzx1xxz10xzz1zzz1xzxz0zxzz0xxzxzzzxxxzxzzzxxxxxxxxxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
