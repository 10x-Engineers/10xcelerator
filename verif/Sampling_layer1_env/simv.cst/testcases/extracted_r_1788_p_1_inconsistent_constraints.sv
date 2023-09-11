class c_1788_1;
    integer i = -296;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1788_1;
    c_1788_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0xxz1z1zzz11xzzx101zx1xz1z0zzzzzxzzxzxzzzzxzxxzzzxzxxzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
