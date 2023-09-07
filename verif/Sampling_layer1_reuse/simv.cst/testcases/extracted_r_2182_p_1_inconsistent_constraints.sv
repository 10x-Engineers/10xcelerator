class c_2182_1;
    integer i = -362;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2182_1;
    c_2182_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zzzxz111x1zz1z0xxz0zxxxxz11z1zzxzzxzxxxzzzzxxxzzxxzxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
