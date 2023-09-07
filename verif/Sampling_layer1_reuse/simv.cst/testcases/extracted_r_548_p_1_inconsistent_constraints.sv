class c_548_1;
    integer i = -90;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_548_1;
    c_548_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx10zx1z1zxz1xzz111xzz10z00z01zxxxxxxxxzxzxxzxxzxzxzzxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
