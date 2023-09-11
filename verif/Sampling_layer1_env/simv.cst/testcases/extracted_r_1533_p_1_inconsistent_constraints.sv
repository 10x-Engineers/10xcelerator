class c_1533_1;
    integer i = -254;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1533_1;
    c_1533_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz01xxx1x10zx1xzz1zx0zzzzxz11zxzzzzzxzxzzxxxxxzzzzzzxzxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
